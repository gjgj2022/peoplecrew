package com.people.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import com.people.dto.MemberDTO;
import com.people.service.MemberService;

import lombok.RequiredArgsConstructor;

@Configuration
@EnableWebSecurity // security 필터등록
@EnableGlobalMethodSecurity(prePostEnabled = true)  // 특정 주소 접근 권한 및 인증 체크
@RequiredArgsConstructor
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	
	@Autowired
	DataSource dataSource;
	
	@Autowired
	MemberService service;
	
	@Bean
	PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}
	
	// 로그인 실패 핸들러 의존성 주입	
	private final AuthenticationFailureHandler customFailureHandler;
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		final String usernameQuery = "SELECT mid as username, password, enabled from member where mid = ?";
		final String authQuery = "SELECT mid as username, role as authority from member " 
									+ "WHERE mid = ? ";
		
		auth.jdbcAuthentication()
			.dataSource(dataSource)
			.usersByUsernameQuery(usernameQuery)
			.authoritiesByUsernameQuery(authQuery)
			.passwordEncoder(passwordEncoder());
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http
			.csrf().disable()
			.authorizeHttpRequests()
			.antMatchers("/").authenticated()
			.antMatchers("/admin/**").hasRole("ADMIN")
		.and()
		.formLogin()
			.loginPage("/login")
			.loginProcessingUrl("/login")
			.usernameParameter("username")
			.passwordParameter("password")
			.successHandler(new AuthenticationSuccessHandler() {
				@Override
				public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
						Authentication authentication) throws IOException, ServletException {
					
					HttpSession session = request.getSession();
					MemberDTO dto = service.getIdOne(authentication.getName());
					session.setMaxInactiveInterval(7200);
					session.setAttribute("dto", dto);
					response.sendRedirect("/");
				}
			})
			.failureHandler(customFailureHandler) // 로그인 실패 핸들러
			.permitAll()
		.and()
		.logout()
			.logoutSuccessUrl("/login")
			.invalidateHttpSession(true)
			.deleteCookies("JSESSIONID")
		.and()
		.exceptionHandling()
			.accessDeniedPage("/WEB-INF/views/error/403.jsp") // 권한없는페이지 403에러 커스텀
		.and()
		.sessionManagement()
			.maximumSessions(1)	// 한 유저가 갖을수 있는 세션 갯수 (1)개 
			.maxSessionsPreventsLogin(false)
			.expiredUrl("/login");
		
	}
}
