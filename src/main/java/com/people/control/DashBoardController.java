package com.people.control;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

import com.people.dto.AttendanceDTO;
import com.people.dto.BoardDTO;
import com.people.dto.MemberDTO;
import com.people.service.AttendanceService;
import com.people.service.BoardService;
import com.people.service.MemberService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class DashBoardController {
	
	@Autowired
	MemberService service;
	
	@Autowired
	BoardService bservice;

	@Autowired
	AttendanceService atservice;
	
	
	@GetMapping("/")
	public String test1(Model model,Authentication authentication) {

		MemberDTO dto = service.getIdOne(authentication.getName()); // 세션아이디로 사원번호 가져오기
		
		// 근태현황
		List<AttendanceDTO> list2 = atservice.attenMno(dto.getMno());
		
		log.info("근태리스트 : " + list2);

		// 공지사항
		List<BoardDTO> list = bservice.selectAll();
		model.addAttribute("blist",list); // 공지사항 리스트
		
		log.info("공지사항리스트 : " + list);
		
		
		return "index";
	}

}
