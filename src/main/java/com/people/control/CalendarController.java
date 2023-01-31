package com.people.control;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.IntStream;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.people.dto.CalendarDTO;
import com.people.dto.MemberDTO;
import com.people.service.CalendarService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/calendar")
public class CalendarController {
	@Autowired
	private CalendarService cService;
	 
	@RequestMapping("/list")
	public String calendar() {
		log.info("===========================> calendar 페이지로");
		return "/calendar/list";
	}
	@PostMapping("/alllist")
	@ResponseBody
	public List<CalendarDTO> calendarl(@RequestParam("mno")String mno) {
		log.info("======> calendar 모든 데이터 가져오기");
		List<CalendarDTO> list = cService.getList();
		List<CalendarDTO> list2 =null;
		
		if(mno!="") {
		int no = Integer.parseInt(mno);
		list2 = cService.getByMno(no); //사원번호로 개인일정 가져오기
		list.addAll(list2);}
		return list;
	}
	@PostMapping("/listjson")
	@ResponseBody
	public JSONArray calendarj() {
		log.info("===========================> calendar 데이터 가져오기");
		List<CalendarDTO> list = cService.getList();//회사일정
		
		Map<String, Object> map = new HashMap<String, Object>();
		JSONObject jsonObj = new JSONObject();
		JSONArray jsonArr = new JSONArray();
		
		for (CalendarDTO dto : list) {
		map.put("title", dto.getCaltitle());
		map.put("start", dto.getCalstart());
		map.put("end", dto.getCalend());
		map.put("groupid", dto.getUname());
		
		jsonObj = new JSONObject(map); 
		jsonArr.add(jsonObj); 
		}
		
		return jsonArr;
	}
	
	@PostMapping("/searchbyuno")
	@ResponseBody
	public List<CalendarDTO> schbyono(@RequestParam(value="arr") int[] unoarr, @RequestParam("mno")String mno) {
		List<CalendarDTO> list = new ArrayList<CalendarDTO>();
		List<CalendarDTO> joined = new ArrayList<CalendarDTO>(); //합칠거
		List<CalendarDTO> list2 = null;
		
		if(IntStream.of(unoarr).anyMatch(x -> x == 1)) {  //개인 선택시
			if(mno!="") {
				int no = Integer.parseInt(mno);
				list2 = cService.getByMno(no); //사원번호로 개인일정 가져오기
				joined.addAll(list2);
	        }
		}
		for(int i = 0;i<unoarr.length;i++) {
		//System.out.println(onoarr[i]);
		list =cService.getByUno(unoarr[i]);
		//System.out.println(list);
		joined.addAll(list);
		}
		
		return joined;
	}
	
	
	@GetMapping("/write")
	public String write() {
		log.info("===========================> calendar 일정등록페이지로");
		return "/calendar/write";
	}
	
	@PostMapping("/write")
	@ResponseBody
	public String write(@ModelAttribute("params")CalendarDTO dto) {
		int ucalno=0;
		
		if(dto.getUno()==0) {
			ucalno=1;
		}else if(dto.getUno()==10) {
			ucalno=3;
		}else if(dto.getUno()==20) {
			ucalno=4;
		}else if(dto.getUno()==30) {
			ucalno=5;
		}else if(dto.getUno()==40) {
			ucalno=6;
		}else if(dto.getUno()==50) {
			ucalno=7;
		}else if(dto.getUno()==1) {  //개인일정등록 선택했는데 테이블 없으면 개인일정테이블 추가
			Integer no = cService.getUcalno(dto.getUpdatemno());
			if(no == null) {
				cService.addTable(dto.getUpdatemno());
				ucalno = cService.getUcalno(dto.getUpdatemno());
			}else {
				ucalno = (int)no;
			}
		}
		//System.out.println(ucalno);
		dto.setUcalno(ucalno);
		//System.out.println(dto);
		cService.write(dto);
		cService.upperCalUpdate(dto);
		log.info("===========================> calendar 일정등록완료");
		return "/calendar/list";
	}
	
	
	//@ResponseBody
	@GetMapping("/detail")
	public String detail(@RequestParam("calno")int calno, Model model) {
		model.addAttribute("dto",cService.getOne(calno));
		log.info("===========> calendar 데이터 하나 가져오기");
		return "/calendar/detail";
	}
	
	@RequestMapping("/delete") // 삭제
	@ResponseBody
	public void delete(@RequestParam("calno")int calno) {  
		log.info("===========================> calendar 데이터 삭제");
		cService.remove(calno);   
	}
	
	@GetMapping("/modify")  //수정 
	public String modify(@RequestParam("calno")int calno,Model model) {
		model.addAttribute("dto",cService.getOne(calno));
		return "calendar/modify";
	}
	
	@PostMapping("/modifyOk")  //수정 
	@ResponseBody
	public void modify(@ModelAttribute("params")CalendarDTO dto) {
		log.info("==> " +dto.getUno());
		cService.modify(dto);
		cService.upperCalUpdate(dto);
	}
	
//	@RequestMapping("/search")
//	@ResponseBody
//	public List<CalendarDTO> onos(@RequestParam("ono")int ono) {
//		List<CalendarDTO> list = cService.getOno(ono);
//		log.info("===========================> 부서별 데이터 가져오기");
//		return list;
//	}
	@RequestMapping("/mycalendar")
	public String mycalendar(Model model,HttpSession session) {
		log.info("===========================> mycalendar 페이지로");
		MemberDTO dto = (MemberDTO) session.getAttribute("user");
		
			List<CalendarDTO> unolist = cService.getByUno(dto.getUno()); //내부서일정
			List<CalendarDTO> mylist = cService.getByMno(dto.getMno());//내 개인일정
			List<CalendarDTO> alllist = cService.getByUno(0); //회사전체일정 
			
			mylist.addAll(unolist);
			mylist.addAll(alllist);
			log.info("mylist=========>"+mylist);
			model.addAttribute("mylist",mylist);
		
		return "/calendar/mycalendar";
	}
	
}
