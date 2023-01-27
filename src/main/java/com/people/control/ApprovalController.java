package com.people.control;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
		
		// 임시회원번호 : 2
		int mno = 2;
		
		// 개인문서함
		model.addAttribute("wait", dservice.getMyCount("결재대기",String.valueOf(mno)));
		model.addAttribute("ing", dservice.getMyCount("진행중",String.valueOf(mno)));
		model.addAttribute("success", dservice.getMyCount("결재완료",String.valueOf(mno)));
		model.addAttribute("reject", dservice.getMyCount("반려",String.valueOf(mno)));
		
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
	public String apvWrite() {
		return "/approval/apvWrite";
	}
	
	@RequestMapping("/personalFile")
	public String personalFile(@RequestParam("apvP")String apvP,
								Model model) {
		
		// 임시회원번호 2
		int mno = 2;		
		
		// 분류별 불러오기
		List<DocumentDTO> list = dservice.readByDoprogress(apvP, String.valueOf(2));

		model.addAttribute("list1", list);
		
		// 전체 불러오기
		List<DocumentDTO> list2 = dservice.readAllByMno(mno);
		
		model.addAttribute("list2", list2);
		
		return "/approval/personalFile";
	}
	
	@RequestMapping("apvProgress")
	public String apvProgress() {
		return "/approval/apvProgress";
	}
	
	@RequestMapping("formBox")
	public String formBox() {
		return "/approval/formBox";
	}
}
