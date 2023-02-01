package com.people.control;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.people.dto.AttendanceDTO;
import com.people.service.AttendanceService;
import com.people.util.PageUtil;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class AttendanceController {
	
	@Autowired
	AttendanceService attdservice;
	
//	@Autowired
//	MemberService memberservice;
	
	DateTimeFormatter dayf = DateTimeFormatter.ofPattern("yy-MM-dd");
	DateTimeFormatter timef = DateTimeFormatter.ofPattern("HH:mm:ss");
	LocalDateTime now = LocalDateTime.now();
	
	@GetMapping("/attendance")
	public String list(Model model,
					   @RequestParam(name = "cp", defaultValue = "1")int currentPage) {
		int totalNumber = attdservice.getTotal();
		//페이지당 게시물 수
		int recordPerPage = 10;
		//                     총페이지 수,     한페이지당 수,   현재페이지
		Map<String, Object> map = PageUtil.getPageData(totalNumber, recordPerPage, currentPage);
		
		int startNo = (int)map.get("startNo");
		int endNo = (int)map.get("endNo");
		
		List<AttendanceDTO> list = attdservice.selectAll(startNo, endNo);
		List<AttendanceDTO> chdb = attdservice.getChdb();
		List<AttendanceDTO> chdb2 = attdservice.chdb2();
		
		model.addAttribute("list", list);
		model.addAttribute("map", map);
		model.addAttribute("chdb", chdb);
		model.addAttribute("chdb2", chdb2);
		
		log.info("list {} :", list);
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
	
//	@GetMapping("/attendance")
//	public String gowork(@RequestParam(value="startwork", required = false)String startwork,
//						 @RequestParam(value="endwork", required = false)String endwork,
//						 Model model) {
//		log.info(startwork);
//		log.info(endwork);
//		model.addAttribute("startwork", startwork);
//		model.addAttribute("endwork", endwork);
//		return "attendance/attendace";
//		
//	}
	
	@GetMapping("/attdetail")
	public String listOne(@RequestParam("mno")int mno, Model model) {
		AttendanceDTO listOne = attdservice.selectOne(mno);
		model.addAttribute("listOne", listOne);
		return "/attendace/attdetail";
	}
	
//	@GetMapping("/dashboard")
//	public String work(Principal principal, HttpSession session, Model model) {
//		
//		 String mname = principal.getName();
//		
//		model.addAttribute("work_day", attdservice.work_day(mname));
//		
//		log.info(mname);
//		
//		if (session.getAttribute("mrank") == null || !session.getAttribute("mrank").equals("member")) {
//			MemberDTO memberdto = memberservice.read(mname);
//			session.setAttribute("mrank", memberdto.get)
//		}
//		
//		return "dashboard";
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
	
	// 대시보드
	@GetMapping("/dashboard")
	public String dashboard() {
		return "/dashboard/dashboard";
	}
	

}
