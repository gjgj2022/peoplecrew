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
		
		// 개인문서함
		model.addAttribute("wait", aservice.getMyCount("결재대기",String.valueOf(2)));
		model.addAttribute("ing", aservice.getMyCount("진행중",String.valueOf(2)));
		model.addAttribute("success", aservice.getMyCount("결재완료",String.valueOf(2)));
		model.addAttribute("reject", aservice.getMyCount("반려",String.valueOf(2)));
		
		// 결재진행함
		model.addAttribute("AllWait", aservice.getAllCount("결재대기"));
		model.addAttribute("AllIng", aservice.getAllCount("진행중"));
		model.addAttribute("AllSuccess", aservice.getAllCount("결재완료"));
		model.addAttribute("AllReject", aservice.getAllCount("반려"));
		
		return "/approval/apvHome";
	}
	
	@RequestMapping("/apvWrite")
	public String apvWrite() {
		return "/approval/apvWrite";
	}
	
	@RequestMapping("/personalFile")
	public String personalFile(@RequestParam("apvP")String apvP,
								Model model) {
		
		// 분류별 불러오기
		List<ApprovalDTO> list = aservice.readAllByProgress(apvP);
		
		ArrayList<DocumentDTO> list2 = new ArrayList<DocumentDTO>();
		
		for(int i=0; i<list.size(); i++) {
			ApprovalDTO adto = list.get(i);
			int dono = adto.getDono();
			DocumentDTO ddto = dservice.readOne(dono);
			list2.add(ddto);
		}		

		model.addAttribute("list1", list2);
		model.addAttribute("list2", list);
		
		// 전체 불러오기
		List<ApprovalDTO> list3 = aservice.readAll();
		
		ArrayList<DocumentDTO> list4 = new ArrayList<DocumentDTO>();
		
		for(int i=0; i<list3.size(); i++) {
			ApprovalDTO adto2 = list3.get(i);
			int dono = adto2.getDono();
			DocumentDTO ddto2 = dservice.readOne(dono);
			list4.add(ddto2);
		}
		
		model.addAttribute("dto1", list4);
		model.addAttribute("dto2", list3);
		
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
