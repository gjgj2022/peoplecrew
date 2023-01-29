package com.people.config;

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
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import com.people.dto.MemberDTO;
import com.people.service.MemberService;


@Configuration
public class SecurityConfig extends WebSecurityConfigurerAdapter{
	@Autowired
	DataSource datasource;
	
	@Autowired
	MemberService service;
	
	@Bean  
	PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder(); 
		//BCrypt 라는 해쉬함수를 이용해서 패스워드를 암호화
	}
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
	
		final String usernameQuery = "select mid as username, password, enabled from member where mid=?";
		final String authQuery = "select mid as username, role as authority from member where mid=?";
			
		auth.jdbcAuthentication().dataSource(datasource)
		.usersByUsernameQuery(usernameQuery)  //인증
		.authoritiesByUsernameQuery(authQuery)  //인가. 접근가능 범위. 권한
		.passwordEncoder(passwordEncoder());
	}
	
	@Override //Authorization 이 필요한 리소스 설정하기
	protected void configure(HttpSecurity http) throws Exception {
		http.csrf().disable()
		.authorizeHttpRequests()
		//.antMatchers("/board/**").authenticated() 
		//.antMatchers("/calendar/**").authenticated() 
		//.antMatchers("/reply/**").authenticated() 
		.anyRequest().permitAll()
		.and()
		.formLogin()  //로그인페이지
		.loginPage("/login")  //로그인페이지로 이 주소로 요청
		.usernameParameter("username")
		.passwordParameter("password")
		.successHandler(new AuthenticationSuccessHandler() {
			
			@Override
			public void onAuthenticationSuccess(HttpServletRequest request, 
												HttpServletResponse response, 
												Authentication authentication) throws IOException, ServletException {
				
				HttpSession session = request.getSession();
				MemberDTO user = service.getIdOne(authentication.getName());
				System.out.println("user 는 "+ user);
				session.setMaxInactiveInterval(60*30);
				session.setAttribute("user", user);
				response.sendRedirect("/");
				
			}
		})
		.permitAll();
	}
}
