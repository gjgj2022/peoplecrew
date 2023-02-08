package com.people.control;

import java.sql.Date;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.junit.runners.Parameterized.Parameter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.people.dto.ApprovalDTO;
import com.people.dto.AttendanceDTO;
import com.people.dto.BoardDTO;
import com.people.dto.DocumentDTO;
import com.people.dto.MemberDTO;
import com.people.service.ApprovalService;
import com.people.service.AttendanceService;
import com.people.service.BoardService;
import com.people.service.DocumentService;
import com.people.service.MemberService;
import com.people.util.PageUtil;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class DashBoardController {
	
	@Autowired
	MemberService service;
	
	@Autowired
	BoardService bservice;

	@Autowired
	AttendanceService atservice;
	
	@Autowired
	DocumentService dservice;
	
	@Autowired
	ApprovalService aservice;
	

	
	
	@GetMapping("/")
	public String dashBoard(Model model,Authentication authentication) {

		MemberDTO dto = service.getIdOne(authentication.getName()); // 세션아이디로 사원번호 가져오기
		
		// 공지사항
		List<BoardDTO> list = bservice.selectAll();
		model.addAttribute("blist",list); // 공지사항 리스트
		
		log.info("공지사항리스트 : " + list);
		
		// 근태현황 정상2 지각3 조퇴4 결근5
		List<AttendanceDTO> list2 = atservice.attenMno(dto.getMno());
		List<AttendanceDTO> list3 = atservice.attenMno2(dto.getMno());
		List<AttendanceDTO> list4 = atservice.attenMno3(dto.getMno());
		List<AttendanceDTO> list5 = atservice.attenMno4(dto.getMno());
		model.addAttribute("list2",list2); 
		model.addAttribute("list3",list3); 
		model.addAttribute("list4",list4); 
		model.addAttribute("list5",list5); 
		
		log.info("근태리스트 : " + list2);
		
		// 연차현황
		model.addAttribute("mannual",  dto.getMannual());
		model.addAttribute("usemannual",  dto.getUsemannual());
		
		log.info("총연차 : " + dto.getMannual());
		log.info("사용연차 : " + dto.getUsemannual());
		
		// 문서관련
		// 개인문서함
		String wait = "결재대기";
		String ing = "진행중";
		String success = "결재완료";
		String reject = "반려";
		
		model.addAttribute("wait", dservice.getMyCount(wait, String.valueOf(dto.getMno())));
		model.addAttribute("ing", dservice.getMyCount(ing, String.valueOf(dto.getMno())));
		model.addAttribute("success", dservice.getMyCount(success, String.valueOf(dto.getMno())));
		model.addAttribute("reject", dservice.getMyCount(reject, String.valueOf(dto.getMno())));
		
		// 결재처리함
		List<ApprovalDTO> list6 = aservice.readOne(dto.getMno());
		
		ArrayList<DocumentDTO> listWait = new ArrayList<DocumentDTO>();
		ArrayList<DocumentDTO> listIng = new ArrayList<DocumentDTO>();
		ArrayList<DocumentDTO> listSuccess = new ArrayList<DocumentDTO>();
		ArrayList<DocumentDTO> listNo = new ArrayList<DocumentDTO>();
		
		for(int i=0; i<list6.size(); i++) {
			ApprovalDTO adto = list6.get(i);
			
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
		
		
		
		return "index";
	}
	
	// 조회 (조직도에서 부서 클릭시 사원리스트)
		@GetMapping("/search3")
		public String searchUser(Model model,
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
			
			return "admin/m_mngmn_user";
		}
		
		
	// 출근 추가
	@PostMapping("/attin")
	public String inworkOk (Model model,
						  @ModelAttribute("dto")AttendanceDTO workdto,
						  @RequestParam("mno")int mno,
						  @RequestParam("ono")int ono,
						  @RequestParam(required=false, name="state")String state,
						  @RequestParam(required=false, name="start_time")String start_time,
						  @RequestParam(required=false, name="end_time")String end_time) {
		
		LocalDateTime now = LocalDateTime.now();
		int hour = now.getHour(); // 시
		int minute = now.getMinute(); // 분
		int second = now.getSecond(); // 초
		
		String gtw = "정상";
		String td = "지각";
		String at = "결근";
		String le = "조퇴";
		String vt = "휴가";
		
		workdto.setMno(mno);
		workdto.setStart_time(start_time);
		workdto.setOno(ono);
		workdto.setState(state);
		
		if(hour <= 9 && hour >= 7) {
			workdto.setState("정상");
		} else if(hour > 9) {
			workdto.setState("지각");
		} /*
			 * else if(hour >= 18) { workdto.setState("정상"); }
			 */
		
		atservice.addOne(workdto);
		model.addAttribute("workdto", workdto);
		
		log.info("wdto : " + workdto.getMno());
		log.info("wdto : " + workdto.getOno());
		log.info("wdto : " + workdto.getState());
		log.info("workdto {}" + workdto);
		return "redirect:";
		
	}
	
	// 퇴근업데이트
	@GetMapping("/attout")
	public String outworkOk(Model model,
							@ModelAttribute("dto")AttendanceDTO outwdto,
							@RequestParam("mno")int mno,
							@RequestParam(required=false, name="state")String state,
							@RequestParam(required=false, name="start_time")String start_time,
							@RequestParam(required=false, name="end_time")String end_time) {
		
		LocalDateTime now = LocalDateTime.now();
		int hour = now.getHour(); // 시
		
		outwdto.setMno(mno);
		outwdto.setEnd_time(end_time);
		outwdto.setState(state);
		
		if(outwdto.getEnd_time() == null) {
			atservice.dupdeteOne(outwdto);
		}else {
			
		}
		
		model.addAttribute("end_time", end_time);
		model.addAttribute("outwdto", outwdto);
		log.info("outwdto {}", outwdto);
		log.info("퇴근시간!!!! {}", outwdto.getEnd_time());
		
		return "redirect:";
		
	}
	
	

}
