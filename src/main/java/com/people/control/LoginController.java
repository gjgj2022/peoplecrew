package com.people.control;

import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.people.dto.MemberDTO;
import com.people.service.BoardService;
import com.people.service.EmailSenderService;

import com.people.service.MemberService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class LoginController {
	
	@Autowired
	MemberService service;
	
	@Autowired
	private EmailSenderService senderService;
	
	BCryptPasswordEncoder passwordEncoder;
	
	@GetMapping("/login")
	public String login(@RequestParam(value= "error", required = false)String error,
						@RequestParam(value= "exception", required = false)String exception,
						Model model) {
		log.info(error);
		log.info(exception);
		model.addAttribute("error", error);
		model.addAttribute("exception", exception);
		
		return "/login/cLogin";
	}

//	@GetMapping("/")
//	public String main() {
//		log.info("테스트 : 로그인쪽 "); DashBoardController이동
//		return "index";
//	}
	
	@GetMapping("/logout")
	public String logoutPage(HttpServletRequest request, HttpServletResponse response) {
		new SecurityContextLogoutHandler().logout(request, response, SecurityContextHolder.getContext().getAuthentication());
		return "redirect:/login";
	}
	
	
	// id찾기
	@PostMapping("/idSearch")
	public String idSearch(@RequestParam(value = "mname", required=false)String mname,
						   @RequestParam(value = "email", required=false)String memail,
						   Model model) {
		
		MemberDTO dto = service.getNEOne(mname, memail);
		model.addAttribute("dto", dto);
		
//		System.out.println("mname = " + mname);
//		String id = dto.getMid();
//		System.out.println("id =  " + id);
		
		return "/include/modalID";
	}

	
	//임시비밀번호
	@PostMapping("/pwSearch")
	public String pwSearch(@RequestParam(value = "mid", required=false)String mid,
						   @RequestParam(value = "email2", required=false)String memail,
						   @ModelAttribute("dto")MemberDTO dto,
						   Model model) {
		
		String pwd = "";
		
		dto = service.getIEOne(mid, memail);
		
		System.out.println("dto"+ dto);
		
		if (dto != null) {
			// 임시 비밀번호 발급후 업데이트
			UUID uid = UUID.randomUUID();
			pwd = uid.toString().substring(0,6);
			
			passwordEncoder = new BCryptPasswordEncoder();
			System.out.println("pwd : " +pwd);
			
			senderService.sendEmail(memail, 
									"PeopleCrew "+dto.getMname()+"님의 임시 비밀번호", 
									dto.getMname()+"님의 임시 비밀번호는 : " +pwd +" 입니다.");
			
			dto.setPassword(passwordEncoder.encode(pwd));
			service.update_pw(dto);
			
		}
		
		model.addAttribute("dto", dto);
		
		return "/include/modalPW";
	}
	
	
	
	
//	@GetMapping("/")
//	public String main(Principal principal, HttpSession session) {
//		if (principal != null) {
//			System.out.println("타입정보 : " + principal.getClass());
//			System.out.println("ID정보 : " + principal.getName());
//			
//			String no = principal.getName();
//			int mno = Integer.parseInt(no);
//			
//			MemberDTO dto = service.getOne(mno);
//			
//			session.setMaxInactiveInterval(5);
//			session.setAttribute("dto", dto);
//		}
//		return "index";
//	}
	
	
}
