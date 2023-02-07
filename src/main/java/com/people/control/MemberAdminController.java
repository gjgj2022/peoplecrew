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
	public String adminSing() {
		log.info("관리자 admin");
		return "admin/m_sign";
	}
	
	@PostMapping("/sign")
	public String adminOk(@ModelAttribute("dto")MemberDTO dtoSign,
						  @RequestParam("mbirth1")String mbirth1,
						  @RequestParam("mbirth2")String mbirth2,
						  @RequestParam("mbirth3")String mbirth3,
						  @RequestParam("password")String password) {
		
		// 비밀번호를 암호화하는데 사용할수있는 메서드를 제공하는 클래스
		passwordEncoder = new BCryptPasswordEncoder();
		
		dtoSign.setMbirth(mbirth1+"-"+mbirth2+"-"+mbirth3);
		dtoSign.setPassword(passwordEncoder.encode(password)); // 암호화한후 넘기기
		
		service.insertOne(dtoSign);
		
		log.info("완료 : ");
		return "redirect:admin2";
	}
	
	
	// 조회 (수정,삭제) 관련
	@GetMapping("/admin2/**")
	public String adminMngmn(Model model,
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
		log.info("search 2 : " + keyword);
		
		return "admin/m_mngmn";
	}
	
	
	@GetMapping("/modify")
	public String modifyForm(@RequestParam("mno")int mno, Model model) {
		
		MemberDTO dtoModify = service.getOne(mno);
		
		model.addAttribute("dto2", dtoModify);
		
		log.info("조회시 리스트" + dtoModify);
		
		return "admin/m_modifyFrom";
	}

	@PostMapping("/modify")
	public String modifyOk(@ModelAttribute("dto")MemberDTO dtoModify,
						   @RequestParam("pfile")MultipartFile pfile,
						   @RequestParam("mbirth1")String mbirth1,
						   @RequestParam("mbirth2")String mbirth2,
						   @RequestParam("mbirth3")String mbirth3,
						   @RequestParam("password")String password) {
		
		passwordEncoder = new BCryptPasswordEncoder();
		
		dtoModify.setPassword(passwordEncoder.encode(password)); // 암호화한후 넘기기
		dtoModify.setMbirth(mbirth1+"-"+mbirth2+"-"+mbirth3);
		
		log.info("dto2 getImg_name : " + dtoModify.getImg_name());
		log.info("password : " + password);
		
		ProFileDTO pfile2 = new ProFileDTO();
		
		String imgname = dtoModify.getImg_name();
		log.info("imgname : " + imgname);
		
		
		if(pfile.isEmpty()) {
			log.info("파일없음");
			
			if(password.isEmpty()) {
				service.updateOne(dtoModify);
			}else {
				service.updateOne(dtoModify);
				service.update_pw(dtoModify);
			}
			
		} else if(imgname.length() == 0) {
			
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
			pfile2.setMno(dtoModify.getMno());
			
			if(password.isEmpty()) {
				service.profileAdd(pfile2);
				service.updateOne(dtoModify);
			}else {
				service.profileAdd(pfile2);
				service.updateOne(dtoModify);
				service.update_pw(dtoModify);
			}
			
			log.info("dto2 getImg_name null : " + imgname);
			log.info("dto2 mno : " + dtoModify.getMno());
			
			
		} else if(imgname.length() != 0){
		
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
			pfile2.setMno(dtoModify.getMno());
			
			if(password.isEmpty()) {
				service.profileUpdate(pfile2);
				service.updateOne(dtoModify);
			}else {
				service.profileUpdate(pfile2);
				service.updateOne(dtoModify);
				service.update_pw(dtoModify);
			}
			
			log.info("dto2 img_name O : " + imgname);
			log.info("dto2 mno : " + dtoModify.getMno());
			
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
	public String adminSal(Model model,
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
		
		List<MemberDTO> avg = service.getAvg();   // avg  : 부서
		List<MemberDTO> avg2 = service.getAvg2(); // avg2 : 직급
		
		model.addAttribute("avg", avg);
		model.addAttribute("avg2", avg2);
		
		log.info("list : " + list);
		log.info("avg2 : " + avg2);
		
		return "/admin/m_salInfo";
	}
	
	// 조회 (검색 페이징 급여)
	@GetMapping("/search2")
	public String searchSal(Model model,
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
		
		model.addAttribute("avg", avg);  	// avg  : 부서
		model.addAttribute("avg2", avg2);	// avg2 : 직급
		model.addAttribute("keyword", keyword);
		
		log.info("map 2 : " + map);
		log.info("list 2 : " + list);
		log.info(" keyword2 : " + keyword);
		
		return "admin/m_salInfo";
	}
	
	

}

