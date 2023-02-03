package com.people.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class AttendanceDTO {
	// Attendance(근태)
	private int atno; // 근태번호
	private String aid; // 멤버테이블과 연결할 직원 id
	private String work_day; // 출퇴근날짜
	private String start_time; // 출근 시간
	private String end_time; // 퇴근 시간
	private String state; // 상태정보
	
	//member(사원)
	private int mno; // 사원번호
	private String mid; // 아이디
	private String mname; // 사원명
	private String memail; // 이메일
	private int mannual; // 연차
	private String mrank; // 직급
	private String role; // 권한
	
	//organization(부서)
	private int ono; // 부서번호
	private String oname; // 부서명
}
