package com.people.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PinfoLoginController {

	
	@GetMapping("/login")
	public String login() {
		return "cLogin";
		
	}
	
	@GetMapping("/logout")
	public String logout() {
		return "cLogout";
	}
}