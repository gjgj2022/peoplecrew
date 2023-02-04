package com.people.control;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.people.dto.ApprovalDTO;
import com.people.dto.DocumentDTO;
import com.people.dto.FileDTO;
import com.people.dto.MemberDTO;
import com.people.service.ApprovalService;
import com.people.service.DocumentService;
import com.people.service.FileService;
import com.people.service.MemberService;

@Controller
public class ApprovalController {

	@Autowired
	DocumentService dservice;
	@Autowired
	ApprovalService aservice;
	@Autowired
	FileService fservice;
	@Autowired
	MemberService mservice;

	@RequestMapping("/apvHome")
	public String apvHome(Model model, HttpServletRequest req) {
		
		HttpSession session = req.getSession();
		
		MemberDTO dto = (MemberDTO)session.getAttribute("dto");
		
		System.out.println(dto.getMno());
		
		// 세션 회원번호 : 
		int mno = dto.getMno();

		session.setAttribute("mno", mno);

		// 개인문서함
		
		String wait = "결재대기";
		String ing = "진행중";
		String success = "결재완료";
		String reject = "반려";
		
		model.addAttribute("wait", dservice.getMyCount(wait, String.valueOf(mno)));
		model.addAttribute("ing", dservice.getMyCount(ing, String.valueOf(mno)));
		model.addAttribute("success", dservice.getMyCount(success, String.valueOf(mno)));
		model.addAttribute("reject", dservice.getMyCount(reject, String.valueOf(mno)));

		// 결재처리함
		
		List<ApprovalDTO> list = aservice.readOne(mno);
		
		ArrayList<DocumentDTO> listWait = new ArrayList<DocumentDTO>();
		ArrayList<DocumentDTO> listIng = new ArrayList<DocumentDTO>();
		ArrayList<DocumentDTO> listSuccess = new ArrayList<DocumentDTO>();
		ArrayList<DocumentDTO> listNo = new ArrayList<DocumentDTO>();
		
		for(int i=0; i<list.size(); i++) {
			ApprovalDTO adto = list.get(i);
			
			DocumentDTO ddtoWait = dservice.getWait(adto.getDono());
			if(ddtoWait != null) {
				listWait.add(ddtoWait);
			}
			DocumentDTO ddtoIng = dservice.getIng(adto.getDono());
			if(ddtoIng != null) {
				listIng.add(ddtoIng);
			}
			DocumentDTO ddtoSuccess = dservice.getSuccess(adto.getDono());
			if(ddtoSuccess != null) {
				listSuccess.add(ddtoSuccess);
			}
			DocumentDTO ddtoNo = dservice.getNo(adto.getDono());
			if(ddtoNo != null) {
				listNo.add(ddtoNo);
			}
		}
		
		model.addAttribute("AllWait", listWait.size());
		model.addAttribute("AllIng", listIng.size());
		model.addAttribute("AllSuccess", listSuccess.size());
		model.addAttribute("AllReject", listNo.size());
		
		model.addAttribute("sum", listWait.size()+listIng.size()+listSuccess.size()+listNo.size());
		
		// 내가 최근 올린 결재
		List<DocumentDTO> list3 = dservice.readIng(mno);
		ArrayList<MemberDTO> mlist1 = new ArrayList<MemberDTO>();
		
		for(int i=0; i<list3.size(); i++) {
			DocumentDTO ddto = list3.get(i);
			MemberDTO mdto = mservice.getOne(ddto.getMno());
			mlist1.add(mdto);
		}
		model.addAttribute("ingList", list3);
		model.addAttribute("mlist1", mlist1);
		
		// 내가 최근 받은 결재
		List<DocumentDTO> list4 = dservice.readEnd(mno);
		ArrayList<MemberDTO> mlist2 = new ArrayList<MemberDTO>();
		
		for(int i=0; i<list4.size(); i++) {
			DocumentDTO ddto = list4.get(i);
			MemberDTO mdto = mservice.getOne(ddto.getMno());
			mlist2.add(mdto);
		}
		model.addAttribute("endList", list4);
		model.addAttribute("mlist2",mlist2);

		return "/approval/apvHome";
	}

	@RequestMapping("/apvWrite")
	public String apvWrite(@RequestParam("form") String form, Model model,
							HttpServletRequest req) {

		model.addAttribute("form", form);
		
		// 회원번호 불러오기
		HttpSession session = req.getSession();
		MemberDTO dto = (MemberDTO) session.getAttribute("dto");

		MemberDTO mdto = mservice.getOne(dto.getMno());
		
		System.out.println(mdto);
		
		model.addAttribute("mdto", mdto);

		
		// sysdate
		
		Date d = new Date();
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		String now = sdf.format(d);
		
		model.addAttribute("now", now);
		
		// 결재사원(팀장)
		MemberDTO mdto2 = mservice.getOneTL(dto.getOno());
		
		model.addAttribute("mdto2", mdto2);
		
		// 결재사원(부장)
		MemberDTO mdto3 = mservice.getOne(dto.getMno());
		
		MemberDTO mdto4 = mservice.getOneTM(mdto3.getUno());
		
		model.addAttribute("mdto4", mdto4);
		
		return "/approval/apvWrite";
	}

	@PostMapping("/apvWriteOk")
	public String apvWriteOk(HttpServletRequest req, @ModelAttribute DocumentDTO ddto,
			@ModelAttribute ApprovalDTO adto, Model model) {
		
		// 회원번호 불러오기
		HttpSession session = req.getSession();
		MemberDTO dto = (MemberDTO) session.getAttribute("dto");
		
		model.addAttribute("mno",dto.getMno());

		Date d = new Date();

		SimpleDateFormat sdf = new SimpleDateFormat("yyMMddHHmm");

		String now = sdf.format(d);

		String dono = ddto.getMno() + "-" + now;

		// document 테이블데이터 생성
		ddto.setDono(dono);
		dservice.addOne(ddto);

		// approval 테이블데이터 생성
		String apno = dono + "-0";
		
		adto.setApno(apno);
		
		// 결재사원(팀장)
		MemberDTO mdto = mservice.getOneTL(dto.getOno());
		
		adto.setApmno(mdto.getMno());
		adto.setDono(dono);

		aservice.addOne(adto);

		return "redirect:/personalFile";
	}

	@RequestMapping("/personalFile")
	public String personalFile(HttpServletRequest req, Model model) {
		// 회원번호 불러오기
		HttpSession session = req.getSession();
		MemberDTO dto = (MemberDTO) session.getAttribute("dto");
		
		String apvP = req.getParameter("apvP");

		if (apvP == null) {
			apvP = "전체문서";
		}
		// 분류별 불러오기
		List<DocumentDTO> list = dservice.readByDoprogress(apvP, String.valueOf(dto.getMno()));
		ArrayList<MemberDTO> mlist = new ArrayList<MemberDTO>();
		for(int i=0; i<list.size(); i++) {
			DocumentDTO ddto = list.get(i);
			MemberDTO mdto = mservice.getOne(ddto.getMno());
			mlist.add(mdto);
		}
		model.addAttribute("list1", list);
		model.addAttribute("mlist1", mlist);

		// 전체 불러오기
		List<DocumentDTO> list2 = dservice.readAllByMno(dto.getMno());
		ArrayList<MemberDTO> mlist2 = new ArrayList<MemberDTO>();
		for(int i=0; i<list2.size(); i++) {
			DocumentDTO ddto = list2.get(i);
			MemberDTO mdto = mservice.getOne(ddto.getMno());
			mlist2.add(mdto);
		}
		model.addAttribute("list2", list2);
		model.addAttribute("mlist2", mlist2);

		return "/approval/personalFile";
	}
	
	@RequestMapping("/personalFileView")
	public String personalFileView(@RequestParam("dotype")String dotype,Model model,
									@ModelAttribute DocumentDTO ddto) {
		
		DocumentDTO dto2 = dservice.readOne(ddto.getDono());
		
		model.addAttribute("form", dto2.getDotype());
		
		model.addAttribute("ddto", dto2);
		
		// 멤버불러오기
		MemberDTO mdto = mservice.getOne(dto2.getMno());
		
		model.addAttribute("mdto", mdto);
		
		// 도장이미지 불러오기
		FileDTO dto11 = fservice.selectOne(1001);
		FileDTO dto12 = fservice.selectOne(1002);
		
		model.addAttribute("dto11", dto11);
		model.addAttribute("dto12", dto12);
		
		return "/approval/personalFileView";
	}
	
	@PostMapping("personalFileModify")
	public String personalFileModify(@RequestParam("dotype")String dotype,Model model,
									@ModelAttribute DocumentDTO dto) {
		DocumentDTO dto2 = dservice.readOne(dto.getDono());
		
		model.addAttribute("form", dotype);
		
		model.addAttribute("ddto", dto2);		
		
		return "/approval/personalFileModify";
	}
	
	@PostMapping("/personalFileModifyOk")
	public String personalFileModifyOk(@ModelAttribute DocumentDTO ddto,
									 @ModelAttribute ApprovalDTO adto,
									 @RequestParam("dono")String dono,
									 HttpServletRequest req) {
		
		// 회원번호 불러오기
		HttpSession session = req.getSession();
		MemberDTO dto = (MemberDTO) session.getAttribute("dto");
		
		dservice.updateFile("결재대기", ddto.getDotitle(), ddto.getDocontents(), ddto.getDocontents2(), ddto.getDocontents3(), ddto.getDono());
		
		aservice.deleteOne(ddto.getDono());
		
		// approval 테이블데이터 생성
		String apno = ddto.getDono() + "-0";
		
		adto.setApno(apno);
		
		// 결재사원(팀장)
		MemberDTO mdto = mservice.getOneTL(dto.getOno());
		
		adto.setMno(dto.getMno());
		adto.setApmno(mdto.getMno());
		adto.setDono(ddto.getDono());

		aservice.addOne(adto);
		

		
		return "redirect:/personalFile";
	}
	
	@RequestMapping("/personalFileDelete")
	public String personalFileDelete(@RequestParam("dono")String dono) {
		
		System.out.println(dono);
		
		aservice.deleteOne(dono);
		dservice.deleteOne(dono);
		
		return "redirect:/personalFile";
	}
	
	@RequestMapping("/apvProgressView")
	public String apvProgressView(@RequestParam("dotype")String dotype,Model model,
									@ModelAttribute DocumentDTO ddto,
									HttpServletRequest req) {
		
		// 회원번호 불러오기
		HttpSession session = req.getSession();
		MemberDTO dto = (MemberDTO) session.getAttribute("dto");
		
		System.out.println(dto.getMno());
		
		System.out.println(ddto.getDono());
		
		DocumentDTO dto2 = dservice.readOne(ddto.getDono());
		
		model.addAttribute("form", dotype);
		
		model.addAttribute("ddto", dto2);
		
		String apmno = String.valueOf(dto.getMno());
		
		ApprovalDTO adto = aservice.selectOneByDono(ddto.getDono(), apmno);
		
		System.out.println(adto);
		
		System.out.println(adto.getApprogress());
		
		model.addAttribute("adto", adto);
		
		// 멤버불러오기
		MemberDTO mdto = mservice.getOne(dto2.getMno());
		
		model.addAttribute("mdto", mdto);
		
		
		// 도장이미지 불러오기
		FileDTO dto11 = fservice.selectOne(1001);
		FileDTO dto12 = fservice.selectOne(1002);
		
		model.addAttribute("dto11", dto11);
		model.addAttribute("dto12", dto12);
		
		
		return "/approval/apvProgressView";
	}
	
	@PostMapping("/apvProgressOk1")
	public String apvProgressOk1(@ModelAttribute ApprovalDTO adto,
								 @ModelAttribute DocumentDTO ddto,
								 HttpServletRequest req, Model model) {
		
		dservice.updateOne("진행중", ddto.getDono());
		
		String apno = ddto.getDono()+"-0";
		
		aservice.updateOne("1", apno);		
		
		// 회원번호 불러오기
		HttpSession session = req.getSession();
		MemberDTO dto = (MemberDTO) session.getAttribute("dto");
		
		// 결재사원(부장)
		MemberDTO mdto3 = mservice.getOne(dto.getMno());
		
		MemberDTO mdto4 = mservice.getOneTM(mdto3.getUno());

		
		adto.setApno(apno+"0");
		adto.setApmno(mdto4.getMno());		
		
		aservice.addOne(adto);
		
		return "redirect:/apvProgress";
	}
	
	@PostMapping("/apvProgressOk2")
	public String apvProgressOk2(@ModelAttribute ApprovalDTO adto,
			 					 @ModelAttribute DocumentDTO ddto) {
		
		System.out.println(ddto.getDono());
		System.out.println(ddto.getMno());
		
		dservice.updateOne("결재완료", ddto.getDono());
		
		String apno = ddto.getDono()+"-00";
		
		aservice.updateOne("1", apno);
		
		return "redirect:/apvProgress";
	}
	
	@RequestMapping("/apvProgressNo")
	public String apvProgressNo(@RequestParam("dono")String dono) {
		
		dservice.updateOne("반려", dono);
		
		String apno = dono+"-0";
		
		aservice.updateOne("2", apno);
		
		return "redirect:/apvProgress";
	}
	
	@RequestMapping("/apvProgressNo2")
	public String apvProgressNo2(@RequestParam("dono")String dono) {
		
		dservice.updateOne("반려", dono);
		
		String apno = dono+"-00";
		
		aservice.updateOne("2", apno);
		
		return "redirect:/apvProgress";
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
		
		// 회원번호 불러오기
		HttpSession session = req.getSession();
		MemberDTO dto = (MemberDTO) session.getAttribute("dto");
		int apmno = dto.getMno();
		
		List<ApprovalDTO> list10 = aservice.getAllByApmno(apmno);
		
		// 분류별 불러오기
		ArrayList<DocumentDTO> list11 = new ArrayList<DocumentDTO>();
		ArrayList<MemberDTO> mlist1 = new ArrayList<MemberDTO>();
		
		for(int i=0; i<list10.size(); i++) {
			ApprovalDTO dto10 = list10.get(i);
			DocumentDTO dto11 = dservice.readC(dto10.getDono(),apvP);
			if(dto11 != null) {
				list11.add(dto11);
				MemberDTO mdto = mservice.getOne(dto11.getMno());
				mlist1.add(mdto);
			}
		}
		
		model.addAttribute("list1", list11);
		model.addAttribute("mlist1", mlist1);
		
		// 전체 불러오기
		ArrayList<DocumentDTO> list12 = new ArrayList<DocumentDTO>();
		ArrayList<MemberDTO> mlist2 = new ArrayList<MemberDTO>();
		
		for(int i=0; i<list10.size(); i++) {
			ApprovalDTO dto10 = list10.get(i);
			DocumentDTO dto11 = dservice.readOne(dto10.getDono());
			list12.add(dto11);
			MemberDTO mdto = mservice.getOne(dto11.getMno());
			mlist2.add(mdto);
		}

		model.addAttribute("list2", list12);
		model.addAttribute("mlist2", mlist2);
		
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
