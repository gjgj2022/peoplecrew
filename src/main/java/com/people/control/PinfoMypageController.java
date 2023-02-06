package com.people.control;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.people.dto.PinfoCsDTO;
import com.people.dto.PinfoMemOriDTO;
import com.people.dto.PinfoMemberDTO;
import com.people.service.PinfoMemberService;


import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/personnel_info")
public class PinfoMypageController {

	@Autowired
	PinfoMemberService service;
	

	@RequestMapping("/mypage")
	public String mypage(@RequestParam("mno") int mno, Model model) {
		
		log.info("==============> 마이페이지");
		PinfoMemOriDTO dto = service.getMnoOne(mno);
		log.info("dto : {} " , dto); 
		
		model.addAttribute("memori", dto);
		return "/personnel_info/mypage";
	}
	
	@GetMapping("/mypage_modi")
	public String modifyForm(@RequestParam("mno")int mno, Model model) {
		log.info("===========================>마이페이지 수정하기 ");
		PinfoMemOriDTO dto = service.getMnoOne(mno);
		
		model.addAttribute("memori", dto);
		return "personnel_info/mypage_modi";
	}
	
	@PostMapping("/mypage_modi")
	public String modifyOk( @ModelAttribute("dto") PinfoMemberDTO dto,RedirectAttributes re) {
		service.mypagemodify(dto);
		re.addAttribute("mno",dto.getMno());
		
		log.info("수정 : {}",dto);
		return "redirect:/personnel_info/mypage";
		
	}
	
	
}