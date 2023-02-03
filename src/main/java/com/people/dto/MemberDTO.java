package com.people.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class MemberDTO {
	
	private int mno; 		 // 사원번호
	private String password; // 비밀번호
	private String mid; 	 // 아이디
	private String mname;  	 // 이름
	private String mphone;   // 휴대폰
	private String memail; 	 // 이메일
	private String mbirth;   // 생년월일
	private String maddress; // 주소
	private String maddress2;// 상세주소
	private String zipcode;  // 우편번호
	private String mdate; 	 // 입사일 기본값 Y
	private int mannual; 	 // 연차 디폴트 기본값 1
	private int msal; 	 	 // 급여 디폴트 기본값 0
	private String mrank; 	 // 직급 디폴트 기본값 사원 
	private String role; 	 // 권한 디폴트 기본값 ROLE_USER
	private int ono; 	 	 // 부서번호 
	private String oname; 	 // 부서명
	private String ophone; 	 // 부서번호
	private int mmsal; 	 	 // 월급 부서별 최대값
	private int amsal; 	 	 // 월급 부서별 평균값
	private String keyword;	 // 검색 키워드

	
}