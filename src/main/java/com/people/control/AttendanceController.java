package com.people.control;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.people.dto.AttendanceDTO;
import com.people.service.AttendanceService;
import com.people.service.MemberService;
import com.people.util.PageUtil;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class AttendanceController {
	
	@Autowired
	AttendanceService attdservice;
	
	@Autowired
	MemberService memberService;
	
	DateTimeFormatter dayf = DateTimeFormatter.ofPattern("yy-MM-dd");
	DateTimeFormatter timef = DateTimeFormatter.ofPattern("HH:mm:ss");
	LocalDateTime now = LocalDateTime.now();
	
	@GetMapping("/attendance")
	public String list(Model model,
						@RequestParam("mno") int mno,
					   @RequestParam(name = "cp", defaultValue = "1")int currentPage) {
		int totalNumber = attdservice.getTotal();
		//페이지당 게시물 수
		int recordPerPage = 10;
		//                     총페이지 수,     한페이지당 수,   현재페이지
		Map<String, Object> map = PageUtil.getPageData(totalNumber, recordPerPage, currentPage);
		
		int startNo = (int)map.get("startNo");
		int endNo = (int)map.get("endNo");
		
		AttendanceDTO attdto = attdservice.selectOne(startNo, endNo, mno);
		model.addAttribute("attdto", attdto);
		model.addAttribute("map", map);
		

		
		List<AttendanceDTO> chdb = attdservice.getChdb();
		List<AttendanceDTO> chdb2 = attdservice.chdb2();
		
		model.addAttribute("chdb", chdb);
		model.addAttribute("chdb2", chdb2);
		
		log.info("attdto {} :", attdto);
		log.info("map {} :", map);
		return "/attendance/attendance";
	}
	
	@GetMapping("/adminpage")
	public String listAdmin(Model model,
							@RequestParam(name = "cp", defaultValue = "1")int currentPage) {
		int totalNumber = attdservice.getTotal();
		//페이지당 게시물 수
		int recordPerPage = 10;
		//                     총페이지 수,     한페이지당 수,   현재페이지
		Map<String, Object> map2 = PageUtil.getPageData(totalNumber, recordPerPage, currentPage);
		
		int startNo = (int)map2.get("startNo");
		int endNo = (int)map2.get("endNo");
		
		List<AttendanceDTO> list2 = attdservice.selectAll(startNo, endNo);
		
		model.addAttribute("list2", list2);
		model.addAttribute("map2", map2);
		
		log.info("map2 {} :", map2);
		log.info("list2 {} :", list2);
		return "/admin/attendance_admin";
	}
	
//	@GetMapping("/attmodify_admin")
//	public String listAdminOne(Model model
//							   @RequestParam("mno")) {
//		
//	}
	
	@GetMapping("/attmodify_admin")
	public String attmodify() {
		
//		AttendanceDTO attdto2 = attdservice.userOne(mno);
//		
//		model.addAttribute("attdto2", attdto2);
//		log.info("attdto2{}", attdto2);
		return "admin/attmodify_admin";
	}
	
	@PostMapping("/attmodify_admin")
	public String attmodifyOk(@ModelAttribute("dto")AttendanceDTO dto) {
		attdservice.updateOne(dto);
		return "redirect:/admin/attendance_admin";
		
	}
	
//	@PostMapping("/wirte")
//	public String workAddOne(@ModelAttribute("dto")AttendanceDTO dto, HttpServletRequest req) {
//		String aid = req.getRemoteAddr();
//		dto.setAid(aid);
//		attdservice.addOne(dto);
//		return "redirect:/index";
//		
//	}
	
	
	@GetMapping("/attendance_admin")
	public String adminList(Model model) {
		
		return "/admin/attendance_admin";
	}
	
	// 휴가관리
	@GetMapping("/vacation")
	public String calendar() {
		return "/attendance/vacation";
	}
}
