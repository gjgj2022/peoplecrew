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

		// 공지사항
		List<BoardDTO> list = bservice.selectAll();
		model.addAttribute("blist",list); // 공지사항 리스트
		
		log.info("공지사항리스트 : " + list);
		
		// 근태현황 정상2 지각3 조퇴4 결근5
		List<AttendanceDTO> list2 = atservice.attenMno(dto.getMno());
		List<AttendanceDTO> list3 = atservice.attenMno2(dto.getMno());
		List<AttendanceDTO> list4 = atservice.attenMno3(dto.getMno());
		List<AttendanceDTO> list5 = atservice.attenMno4(dto.getMno());
		model.addAttribute("list2",list2); 
		model.addAttribute("list3",list3); 
		model.addAttribute("list4",list4); 
		model.addAttribute("list5",list5); 
		
		log.info("근태리스트 : " + list2);
		
		// 연차현황
		model.addAttribute("mannual",  dto.getMannual());
		model.addAttribute("usemannual",  dto.getUsemannual());
		
		log.info("총연차 : " + dto.getMannual());
		log.info("사용연차 : " + dto.getUsemannual());
		
		
		return "index";
	}

}
