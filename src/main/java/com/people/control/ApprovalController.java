package com.people.control;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.people.dto.ApprovalDTO;
import com.people.dto.DocumentDTO;
import com.people.service.ApprovalService;
import com.people.service.DocumentService;

@Controller
public class ApprovalController {

	@Autowired
	DocumentService dservice;
	@Autowired
	ApprovalService aservice;

	@RequestMapping("/apvHome")
	public String apvHome(Model model) {

		// 임시회원번호 : 111
		int mno = 111;

		// 개인문서함
		model.addAttribute("wait", dservice.getMyCount("결재대기", String.valueOf(mno)));
		model.addAttribute("ing", dservice.getMyCount("진행중", String.valueOf(mno)));
		model.addAttribute("success", dservice.getMyCount("결재완료", String.valueOf(mno)));
		model.addAttribute("reject", dservice.getMyCount("반려", String.valueOf(mno)));

		// 결재진행함
		model.addAttribute("AllWait", dservice.getAllCount("결재대기"));
		model.addAttribute("AllIng", dservice.getAllCount("진행중"));
		model.addAttribute("AllSuccess", dservice.getAllCount("결재완료"));
		model.addAttribute("AllReject", dservice.getAllCount("반려"));

		// 내가 최근 올린 결재
		List<DocumentDTO> list = dservice.readIng(mno);
		model.addAttribute("ingList", list);

		// 내가 최근 받은 결재
		List<DocumentDTO> list2 = dservice.readEnd(mno);
		model.addAttribute("endList", list2);

		return "/approval/apvHome";
	}

	@RequestMapping("/apvWrite")
	public String apvWrite(@RequestParam("form") String form, Model model) {

		model.addAttribute("form", form);

		return "/approval/apvWrite";
	}

	@PostMapping("/apvWriteOk")
	public String apvWriteOk(HttpServletRequest req, @ModelAttribute DocumentDTO dto,
			@ModelAttribute ApprovalDTO dto2) {

		Date d = new Date();

		SimpleDateFormat sdf = new SimpleDateFormat("yyMMddHHmm");

		String now = sdf.format(d);

		String dono = dto.getMno() + "-" + now;

//		System.out.println("mno : "+dto.getMno());
//		System.out.println("dotype : "+dto.getDotype());
//		System.out.println("dotitle : "+dto.getDotitle());
//		System.out.println("docontents : "+dto.getDocontents());
//		System.out.println("docontents2 : "+dto.getDocontents2());
//		System.out.println("docontents3 : "+dto.getDocontents3());
//		System.out.println("dono : "+dono);

		// document 테이블데이터 생성
		dto.setDono(dono);
		dservice.addOne(dto);

		// approval 테이블데이터 생성
		String apno = dono + "-0";

		dto2.setApno(apno);
		// 임시결재사원 = 113;
		dto2.setApmno(113);
		dto2.setDono(dono);

		aservice.addOne(dto2);

		return "redirect:/personalFile";
	}

	@RequestMapping("/personalFile")
	public String personalFile(HttpServletRequest req, Model model) {
		String apvP = req.getParameter("apvP");

		if (apvP == null) {
			apvP = "전체문서";
		}
		// 임시회원번호 111
		int mno = 111;

		// 분류별 불러오기
		List<DocumentDTO> list = dservice.readByDoprogress(apvP, String.valueOf(mno));

		model.addAttribute("list1", list);

		// 전체 불러오기
		List<DocumentDTO> list2 = dservice.readAllByMno(mno);

		model.addAttribute("list2", list2);

		return "/approval/personalFile";
	}
	
	@RequestMapping("/personalFileView")
	public String personalFileView(@RequestParam("dotype")String dotype,Model model,
									@ModelAttribute DocumentDTO dto) {
		
		DocumentDTO dto2 = dservice.readOne(dto.getDono());
		
		model.addAttribute("form", dotype);
		
		model.addAttribute("dto", dto2);
		
		return "/approval/personalFileView";
	}
	
	@RequestMapping("/apvProgressView")
	public String apProgressView(@RequestParam("dotype")String dotype,Model model,
									@ModelAttribute DocumentDTO dto) {
		
		DocumentDTO dto2 = dservice.readOne(dto.getDono());
		
		model.addAttribute("form", dotype);
		
		model.addAttribute("dto", dto2);
		
		return "/approval/apvProgressView";
	}

	@RequestMapping("apvProgress")
	public String apvProgress(HttpServletRequest req, Model model,
								@ModelAttribute ApprovalDTO adto,
								@ModelAttribute DocumentDTO ddto) {
		String apvP = req.getParameter("apvP");

		if (apvP == null) {
			apvP = "전체문서";
		}
		
		// -----------------------------------------------------------------------
		
		// 임시결재회원번호 113
		int apmno = 113;
		
		List<ApprovalDTO> list10 = aservice.getAllByApmno(apmno);
		
		// 분류별 불러오기
		ArrayList<DocumentDTO> list11 = new ArrayList<DocumentDTO>();
		
		for(int i=0; i<list10.size(); i++) {
			ApprovalDTO dto10 = list10.get(i);
			DocumentDTO dto11 = dservice.readC(dto10.getDono(),apvP);
			if(dto11 != null) {
				list11.add(dto11);
			}
		}		

		model.addAttribute("list1", list11);

		// 전체 불러오기
		ArrayList<DocumentDTO> list12 = new ArrayList<DocumentDTO>();
		
		for(int i=0; i<list10.size(); i++) {
			ApprovalDTO dto10 = list10.get(i);
			DocumentDTO dto11 = dservice.readOne(dto10.getDono());
			list12.add(dto11);
		}

		model.addAttribute("list2", list12);

		return "/approval/apvProgress";
	}

	@RequestMapping("formBox")
	public String formBox() {
		return "/approval/formBox";
	}

	@RequestMapping("vacation")
	public String vacation() {
		return "/approval/form/vacation";
	}
}
