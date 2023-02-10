package com.people.control;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	
	//직원용 조회 & 페이징
	@GetMapping("/attendance")
	public String list(Model model,
						@RequestParam("mno") int mno,
						@RequestParam(name = "cp", defaultValue = "1")int currentPage) {
		
		int totalNumber = attdservice.attOneCnt(mno);
		//페이지당 게시물 수
		int recordPerPage = 10;
		//                     							총페이지 수,     한페이지당 수,   현재페이지
		Map<String, Object> maplist = PageUtil.getPageData(totalNumber, recordPerPage, currentPage);
		int startNo = (int)maplist.get("startNo");
		int endNo = (int)maplist.get("endNo");
		
		List<AttendanceDTO> list3 = attdservice.attdOne(startNo, endNo, mno);
		model.addAttribute("list3", list3);
		model.addAttribute("maplist", maplist);
		
		List<AttendanceDTO> Ctime = attdservice.getCtime(); // 근무시간
		List<AttendanceDTO> chdb2 = attdservice.chdb2();
		
		if(attdservice.timediff(mno) != null) {
			AttendanceDTO attDto = attdservice.timediff(mno);
			model.addAttribute("attDto", attDto);
			
			log.info("attDto :" + attDto.getTimediff());
		}
		
		
		model.addAttribute("getCtime", Ctime);
		model.addAttribute("chdb2", chdb2);
		
		log.info("list3 {} :", list3);
		log.info("maplist {} :", maplist);
		log.info("attDto : null ");
		
		return "/attendance/attendance";
	}
	
	// 관리자용 조회 & 페이징
	@GetMapping("/admin/page")
	public String listAdmin(Model model,
							@RequestParam(name = "cp", defaultValue = "1")int currentPage) {
		
		int totalNumber = attdservice.getattTotal();
		//페이지당 게시물 수
		int recordPerPage = 10;
		//                     							총페이지 수,     한페이지당 수,   현재페이지
		Map<String, Object> map2 = com.people.util.PageUtil.getPageData(totalNumber, recordPerPage, currentPage);
		
		int startNo = (int)map2.get("startNo");
		int endNo = (int)map2.get("endNo");
		
		List<AttendanceDTO> list2 = attdservice.selectAll(startNo, endNo);
		
		model.addAttribute("list2", list2);
		model.addAttribute("map2", map2);
		
		log.info("map2 {} :", map2);
		log.info("list2 {} :", list2);
		return "/admin/attendance_admin";
	}
	
	// admin 수정 한건조회
	@GetMapping("/attmodify_admin")
	public String listAdminOne(Model model,
							   @RequestParam("mno")int mno) {
		
		AttendanceDTO admindto = attdservice.userOne(mno);
		model.addAttribute("admindto", admindto);
		
		log.info("admindto {} ", admindto);
		
		return "/admin/attmodify_admin";
		
	}
	
	@PostMapping()
	@RequestMapping(value="/attmodify_admin", method = {RequestMethod.POST})
	public String listAdminOneOk(@ModelAttribute("dto")AttendanceDTO admindto,
							  	 @RequestParam("mbirth1")String mbirth1,
							  	 @RequestParam("mbirth2")String mbirth2,
							  	 @RequestParam("mbirth3")String mbirth3,
							  	 @RequestParam("mannual")int mannual,
							  	 @RequestParam("usemannual")int usemannual) {
		
		admindto.setMbirth(mbirth1+"-"+mbirth2+"-"+mbirth3);
		admindto.setMannual(mannual);
		admindto.setUsemannual(usemannual);
		
		attdservice.updateOne(admindto);
		
		log.info("admindto2 {}", admindto);
		
		return "redirect:/admin/page";
	}
	
	// 휴가관리
	@GetMapping("/vacation")
	public String calendar() {
		return "/attendance/vacation";
	}
}
