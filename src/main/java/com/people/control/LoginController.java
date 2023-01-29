package com.people.control;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.people.dto.MemberDTO;
import com.people.service.MemberService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller  //커스텀 로그인 페이지 설정
public class LoginController {
	@Autowired
	MemberService service;
	
	@GetMapping("/login")
	public String login() {
		return "cLogin";
	}
	
	@GetMapping("/logout")
	public String logout() {
		return "cLogout";
	}
	
	@RequestMapping(value= {"/","/home"})
	public String loginOk(@ModelAttribute("user")MemberDTO user,HttpSession session){
		//System.out.println(session.getAttribute("user"));
		MemberDTO dto;
		if(session.getAttribute("user")!=null) {
		dto = (MemberDTO) session.getAttribute("user");
		log.info("사원이름 : "+dto.getMname());
		}
		
		log.info("Member===>"+(MemberDTO) session.getAttribute("user"));
		log.info("===========================> home으로");
		return "index";
	}
}
