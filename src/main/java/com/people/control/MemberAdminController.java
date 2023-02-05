package com.people.control;

import java.io.UnsupportedEncodingException;
import java.lang.ProcessHandle.Info;
import java.net.URLDecoder;
import java.util.Base64;
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
import org.springframework.web.multipart.MultipartFile;

import com.people.dto.MemberDTO;
import com.people.dto.ProFileDTO;
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
		
		log.info("완료 : ");
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
		
		List<MemberDTO> list = service.getAll(startNo, endNo, null);
		model.addAttribute("list", list);
		model.addAttribute("map", map);
		
		log.info("list : " + list);
		log.info("관리자 admin");
		
		return "admin/m_mngmn";
	}
	
	// 조회 (검색 페이징 사원)
	@GetMapping("/search")
	public String search(Model model,
						@RequestParam("keyword")String keyword,
						@RequestParam(name = "cp", defaultValue = "1")int currentPage) {
		
		MemberDTO dto = new MemberDTO();
		dto.setKeyword(keyword);
		
		log.info("keyword : " + keyword);
		log.info("keyword2 : " + service.getTotal(keyword));
		
		model.addAttribute("keyword", keyword);
		
		// 총페이지수
		int totalNumber = service.getTotal(keyword);
		//페이지당 게시물수
		int recordPerPage = 10;
		
		// 총페이지수,한페이지당수, 현재페이지
		Map<String, Object> map = PageUtil.getPageData(totalNumber, recordPerPage, currentPage);
		
		int startNo = (int)map.get("startNo");
		int endNo = (int)map.get("endNo");
		
		List<MemberDTO> list = service.getAll(startNo, endNo, keyword);
		model.addAttribute("list", list);
		model.addAttribute("map", map);
		
		log.info("map 2 : " + map);
		log.info("list 2 : " + list);
		log.info("search2 : " + keyword);
		
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
						   @RequestParam("pfile")MultipartFile pfile,
						   @RequestParam("mbirth1")String mbirth1,
						   @RequestParam("mbirth2")String mbirth2,
						   @RequestParam("mbirth3")String mbirth3,
						   @RequestParam("password")String password) {
		
		passwordEncoder = new BCryptPasswordEncoder();
		
		dto2.setPassword(passwordEncoder.encode(password)); // 암호화한후 넘기기
		dto2.setMbirth(mbirth1+"-"+mbirth2+"-"+mbirth3);
		
		log.info("dto2 getImg_name : " + dto2.getImg_name());
		log.info("password : " + password);
		
		ProFileDTO pfile2 = new ProFileDTO();
		if(pfile.isEmpty()) {
			log.info("파일없음");
			
			if(password.isEmpty()) {
				service.updateOne(dto2);
			}else {
				service.updateOne(dto2);
				service.update_pw(dto2);
			}
			
		} else if(dto2.getImg_name() != null) {
			String fileName = pfile.getOriginalFilename();
			log.info("파일이름 : " +fileName);

			long fileSize= pfile.getSize();
			int ImgSize = (int)fileSize;
			log.info("파일 사이즈 : " + ImgSize);
			
			String fileUrl = "/img/"; // 파일 저장 경로
			log.info("파일저장경로 : " +fileUrl);
			
			pfile2.setImg_name(fileName);
			pfile2.setImg_path(fileUrl);
			pfile2.setImg_size(ImgSize);
			pfile2.setMno(dto2.getMno());
			
			if(password.isEmpty()) {
				service.profileUpdate(pfile2);
				service.updateOne(dto2);
			}else {
				service.profileUpdate(pfile2);
				service.updateOne(dto2);
				service.update_pw(dto2);
			}
			
			log.info("dto2 mno : " + dto2.getImg_name());
			log.info("dto2 mno : " + dto2.getMno());
			
		} else {
			
			String fileName = pfile.getOriginalFilename();
			log.info("파일이름2 : " +fileName);

			long fileSize= pfile.getSize();
			int ImgSize = (int)fileSize;
			log.info("파일 사이즈2 : " + ImgSize);
			
			String fileUrl = "/img/"; // 파일 저장 경로
			log.info("파일저장경로2 : " +fileUrl);
			
			pfile2.setImg_name(fileName);
			pfile2.setImg_path(fileUrl);
			pfile2.setImg_size(ImgSize);
			pfile2.setMno(dto2.getMno());
			
			if(password.isEmpty()) {
				service.profileAdd(pfile2);
				service.updateOne(dto2);
			}else {
				service.profileAdd(pfile2);
				service.updateOne(dto2);
				service.update_pw(dto2);
			}
			
			log.info("dto2 getImg_name : " + dto2.getImg_name());
			log.info("dto2 mno : " + dto2.getMno());
			
		}
		
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
		
		List<MemberDTO> list = service.getAll(startNo, endNo,null);
		model.addAttribute("list", list);
		model.addAttribute("map", map);
		
		List<MemberDTO> avg = service.getAvg();
		List<MemberDTO> avg2 = service.getAvg2();
		
		model.addAttribute("avg", avg);
		model.addAttribute("avg2", avg2);
		
		log.info("list : " + list);
		log.info("avg2 : " + avg2);
		
		return "/admin/m_salInfo";
	}
	
	// 조회 (검색 페이징 급여)
	@GetMapping("/search2")
	public String search2(Model model,
						@RequestParam("keyword")String keyword,
						@RequestParam(name = "cp", defaultValue = "1")int currentPage) {
		
		MemberDTO dto = new MemberDTO();
		dto.setKeyword(keyword);
		
		log.info("keyword : " + keyword);
		log.info("keyword2 : " + service.getTotal(keyword));
		
		// 총페이지수
		int totalNumber = service.getTotal(keyword);
		//페이지당 게시물수
		int recordPerPage = 10;
		
		// 총페이지수,한페이지당수, 현재페이지
		Map<String, Object> map = PageUtil.getPageData(totalNumber, recordPerPage, currentPage);
		
		int startNo = (int)map.get("startNo");
		int endNo = (int)map.get("endNo");
		
		List<MemberDTO> list = service.getAll(startNo, endNo, keyword);
		model.addAttribute("list", list);
		model.addAttribute("map", map);
		
		List<MemberDTO> avg = service.getAvg();
		List<MemberDTO> avg2 = service.getAvg2();
		
		model.addAttribute("avg", avg);
		model.addAttribute("avg2", avg2);
		model.addAttribute("keyword", keyword);
		
		log.info("map 2 : " + map);
		log.info("list 2 : " + list);
		log.info(" keyword2 : " + keyword);
		
		return "admin/m_salInfo";
	}
	
	

}

