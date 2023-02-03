package com.people.control;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.people.dto.BoardDTO;
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
	
	@GetMapping("/")
	public String test1(Model model) {
		
		List<BoardDTO> list = bservice.selectAll();
		
		model.addAttribute("blist",list);
		
		log.info("테스트 : " + list);
		
		return "index";
	}

}
