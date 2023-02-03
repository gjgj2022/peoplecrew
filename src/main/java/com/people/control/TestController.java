package com.people.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

import com.people.dto.MemberDTO;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class TestController {
	
	@GetMapping("/test")
	public String test(@RequestParam("dto")MemberDTO dto) {
		log.info("dto : ", dto);
		return "/test";
		
	}
}
