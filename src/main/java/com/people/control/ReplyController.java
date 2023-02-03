package com.people.control;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.people.dto.ReplyDTO;
import com.people.service.ReplyService;

import lombok.extern.slf4j.Slf4j;

@RestController
@Slf4j
@RequestMapping("/reply")
public class ReplyController {

	@Autowired
	ReplyService rService;

	@RequestMapping("/list") // 목록
	@ResponseBody
	public List<ReplyDTO> list(@RequestParam("bono")int bono) {
		log.info("===========================> 댓글목록 불러오기");
		return rService.getList(bono);
	}

	@PostMapping("/insert") // 작성
	@ResponseBody
	public void insert(@ModelAttribute("params")ReplyDTO dto, HttpSession session) {
		String no = (String) session.getAttribute("mno");
		int mno;
		if (no != null) {
			mno = Integer.parseInt(no);
			dto.setMno(mno);
		}
		rService.write(dto);
	}

	@PostMapping("/delete/{reno}") // 삭제
	@ResponseBody
	public void delete(@PathVariable int reno) {   // @RequestParam("reno") int reno
		rService.remove(reno);   
	}

	@GetMapping("/deleteAll") // 게시글 삭제시 댓글 전체삭제
	public void deleteAll(@RequestParam("bono") int bono) {
		rService.removeAll(bono);
	}

	@PostMapping("/modifyOk")  //수정 
	@ResponseBody
	public void modify(@ModelAttribute("dto")ReplyDTO dto) {
		rService.modify(dto);
	}
}
