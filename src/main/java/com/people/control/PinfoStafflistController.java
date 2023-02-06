package com.people.control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.people.service.PinfoMemberService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/personnel_info")
public class PinfoStafflistController {
	@Autowired
	PinfoMemberService service;
	
	
	
	@GetMapping("/stafflist")
	public String stafflist(Model model) {
		
		model.addAttribute("team",service.getAllori());
		model.addAttribute("memori",service.selectAll2());
		return "personnel_info/stafflist";
	}
	

	
	

	
	
}
