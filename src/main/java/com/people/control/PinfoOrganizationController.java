package com.people.control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.people.service.PinfoMemberService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/personnel_info")
public class PinfoOrganizationController {

	@Autowired
	PinfoMemberService service;
	

	@RequestMapping("/organization")
	public String organization_chart() {
		
		return "personnel_info/organization";
	}
	@RequestMapping("/organization2")
	public String organization_chart2() {
		
		return "personnel_info/organization2";
	}

	
	
}
