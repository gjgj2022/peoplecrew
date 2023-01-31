package com.people.control;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.people.dto.MemberDTO;
import com.people.service.MemberService;
import com.people.util.PageUtil;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/admin")
public class MemberAdminController {
	
	@Autowired
	MemberService service;
	
	BCryptPasswordEncoder passwordEncoder;
	
	// 사원등록 관련
	@GetMapping("/sign")
	public String admin1() {
		log.info("관리자 admin");
		return "admin/m_sign";
	}
	
	@PostMapping("/sign")
	public String adminOk(@ModelAttribute("dto")MemberDTO dto2,
						  @RequestParam("mbirth1")String mbirth1,
						  @RequestParam("mbirth2")String mbirth2,
						  @RequestParam("mbirth3")String mbirth3,
						  @RequestParam("password")String password) {
		
		// 비밀번호를 암호화하는데 사용할수있는 메서드를 제공하는 클래스
		passwordEncoder = new BCryptPasswordEncoder();
		
		dto2.setMbirth(mbirth1+"-"+mbirth2+"-"+mbirth3);
		dto2.setPassword(passwordEncoder.encode(password)); // 암호화한후 넘기기
		service.insertOne(dto2);
		
		return "redirect:admin2";
	}
	
	
	// 조회 (수정,삭제) 관련
	@GetMapping("/admin2/**")
	public String admin2(Model model,
			@RequestParam(name = "cp", defaultValue = "1")int currentPage) {
		
		// 총페이지수
		int totalNumber = service.getTotal();
		//페이지당 게시물수
		int recordPerPage = 10;
		
		// 총페이지수,한페이지당수, 현재페이지
		Map<String, Object> map = PageUtil.getPageData(totalNumber, recordPerPage, currentPage);
		
		int startNo = (int)map.get("startNo");
		int endNo = (int)map.get("endNo");
		
		List<MemberDTO> list = service.getAll(startNo, endNo);
		model.addAttribute("list", list);
		model.addAttribute("map", map);
		
		log.info("list : " + list);
		log.info("관리자 admin");
		
		return "admin/m_mngmn";
	}
	
	@GetMapping("/modify")
	public String modifyForm(@RequestParam("mno")int mno, Model model) {
		MemberDTO dto2 = service.getOne(mno);
		model.addAttribute("dto2", dto2);
		return "admin/m_modifyFrom";
	}

	@PostMapping("/modify")
	public String modifyOk(@ModelAttribute("dto")MemberDTO dto2,
						   @RequestParam("mbirth1")String mbirth1,
						   @RequestParam("mbirth2")String mbirth2,
						   @RequestParam("mbirth3")String mbirth3,
						   @RequestParam("password")String password) {
		
		passwordEncoder = new BCryptPasswordEncoder();
		
		dto2.setPassword(passwordEncoder.encode(password)); // 암호화한후 넘기기
		dto2.setMbirth(mbirth1+"-"+mbirth2+"-"+mbirth3);
		service.updateOne(dto2);
		return "redirect:admin2";
	}
	
	
	@GetMapping("/delete")
	public String deleteOk(@RequestParam("mno")int mno) {
		service.deleteOne(mno);
		return "redirect:admin2";
	}
	
	
	// 급여 관련
	@GetMapping("/admin3/**")
	public String admin3(Model model,
						@RequestParam(name = "cp", defaultValue = "1")int currentPage) {
		
		// 총페이지수
		int totalNumber = service.getTotal();
		//페이지당 게시물수
		int recordPerPage = 10;
		
		// 총페이지수,한페이지당수, 현재페이지
		Map<String, Object> map = PageUtil.getPageData(totalNumber, recordPerPage, currentPage);
		
		int startNo = (int)map.get("startNo");
		int endNo = (int)map.get("endNo");
		
		List<MemberDTO> list = service.getAll(startNo, endNo);
		model.addAttribute("list", list);
		model.addAttribute("map", map);
		
		List<MemberDTO> avg = service.getAvg();
		List<MemberDTO> avg2 = service.getAvg2();
		
		model.addAttribute("avg", avg);
		model.addAttribute("avg2", avg2);
		
		
		log.info("list : " + list);
		log.info("관리자 admin");
		
		return "/admin/m_salInfo";
	}
	
	@GetMapping("/msal")
	public String sal(@RequestParam("mno")int mno, Model model) {
		
		MemberDTO dto2 = service.getOne(mno);
		System.out.println("dto2 : " + dto2);
		log.info("tt : ",dto2 );
		
		model.addAttribute("dto2", dto2);
		
		return "/include/modalTest";
	}
	
	
	
	// 근태 임시 
	@GetMapping("/admin4/**")
	public String admin4() {
		log.info("관리자 admin");
		return "/admin/test4";
	}
	
}
