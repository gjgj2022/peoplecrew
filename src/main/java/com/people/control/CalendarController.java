package com.people.control;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.IntStream;

import javax.servlet.http.HttpSession;

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
import com.people.service.MemberService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/calendar")
public class CalendarController {
	@Autowired
	private CalendarService cService;
	@Autowired
	private MemberService mService;
	 
	@RequestMapping("/list")
	public String calendar() {
		log.info("===========================> calendar 페이지로");
		return "/calendar/list";
	}
	@PostMapping("/alllist")
	@ResponseBody
	public List<CalendarDTO> calendarl(@RequestParam("mno")String mno) {
		log.info("======> calendar 모든 데이터 가져오기");
		List<CalendarDTO> list = cService.getList();//회사일정 가져오기
		List<CalendarDTO> list2 =null;
		
		if(mno!="") {
		int no = Integer.parseInt(mno);
		list2 = cService.getByMno(no); //사원번호로 개인일정 가져오기
		list.addAll(list2);}
		return list;
	}
	
	@RequestMapping("/searchbyuno")  //부서번호로 찾기
	@ResponseBody
	public List<CalendarDTO> schbyono(@RequestParam(value="arr") int[] unoarr, @RequestParam("mno")String mno,
			@RequestParam("ono")int ono) {
		List<CalendarDTO> list = new ArrayList<CalendarDTO>();
		List<CalendarDTO> joined = new ArrayList<CalendarDTO>(); //합칠거
		List<CalendarDTO> list2 = null;
		
		List<CalendarDTO> list3 = cService.getOneByOno(ono);
		joined.addAll(list3);
		
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
			Integer no = cService.getOneUcalno(dto.getUpdatemno());
			System.out.println("no : "+no);
			if(no!=null) {  //Integer 라서 null 비교가능 
				ucalno = (int)no; //Integer 라서 int 로 형변환
			}else {
				cService.addTable(dto.getUpdatemno()); //개인 캘린더 테이블 추가하고 ucalno 번호받아오기
				ucalno = (int)cService.getOneUcalno(dto.getUpdatemno());
			}
		}
		dto.setUcalno(ucalno);
		cService.write(dto);
		cService.upperCalUpdate(dto);
		log.info("===========================> calendar 일정등록완료");
		return "/calendar/list";
	}
	
	@GetMapping("/detail")
	public String detail(@RequestParam("calno")int calno, Model model) {
		model.addAttribute("caldto",cService.getOne(calno));
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
		model.addAttribute("caldto",cService.getOne(calno));
		return "calendar/modify";
	}
	
	@PostMapping("/modifyOk")  //수정 
	@ResponseBody
	public void modify(@ModelAttribute("params")CalendarDTO dto) {
		log.info("==> " +dto.getUno());
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
			Integer no = cService.getOneUcalno(dto.getUpdatemno());
			System.out.println("no : "+no);
			if(no!=null) {  //Integer 라서 null 비교가능 
				ucalno = (int)no; //Integer 라서 int 로 형변환
			}else {
				cService.addTable(dto.getUpdatemno()); //개인 캘린더 테이블 추가하고 ucalno 번호받아오기
				ucalno = (int)cService.getOneUcalno(dto.getUpdatemno());
			}
		}
		dto.setUcalno(ucalno);
		cService.modify(dto);
		cService.upperCalUpdate(dto);
	}
	
	@RequestMapping("/mycalendar")
	public String mycalendar(Model model,HttpSession session) {
		log.info("===========================> mycalendar 페이지로");
		MemberDTO dto = (MemberDTO) session.getAttribute("dto");
		String enddate = "";
	
		
		if(dto!=null) {
			int uno = mService.getOne(dto.getMno()).getUno();
			List<CalendarDTO> unolist = cService.getByUno(uno); //내부서일정
			//List<CalendarDTO> unolist = cService.getOneByOno(dto.getOno()); //내부서일정
			List<CalendarDTO> olist = cService.getByUno(0); //회사 일반 일정 
			List<CalendarDTO> mylist = cService.getByMno(dto.getMno());//내 개인일정
			unolist.addAll(olist); //회사일정
			List<CalendarDTO> myall = cService.getEndList(dto);  //완료일정
			
			for (CalendarDTO date : mylist) {
				String calend = date.getCalend();
				String match = "[^0-9]";
		        enddate = calend.replaceAll(match, "");
		        date.setCalend(enddate);
		        model.addAttribute("mylist",mylist);
			}
			
			for (CalendarDTO date : unolist) {
				String calend = date.getCalend();
				String match = "[^0-9]";
		        enddate = calend.replaceAll(match, "");
		        date.setCalend(enddate);
		        model.addAttribute("unolist",unolist);
			}
			for (CalendarDTO date : myall) {
				String calend = date.getCalend();
				String match = "[^0-9]";
		        enddate = calend.replaceAll(match, "");
		        date.setCalend(enddate);
		        model.addAttribute("myall",myall);
			}
			
			log.info("mylist=========>"+mylist);
		}	
		return "/calendar/mycalendar";
	}
	
}
