package com.people.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.people.dto.MemberDTO;
import com.people.dto.ProFileDTO;
import com.people.dto.StartEnd;

@Repository
@Mapper
public interface MemberDAO {
	
	List<MemberDTO> getAll(StartEnd se);  // 전체조회 및 페이징처리
	int getTotal();
	int getTotal(String key);
	List<MemberDTO> getAvg();
	List<MemberDTO> getAvg2();
	MemberDTO getOne(int mno); // 한명조회
	MemberDTO getIdOne(String mid); // 한명조회
	MemberDTO getNEOne(String mname, String memail); // 한명조회
	MemberDTO getIEOne(String mid, String memail); // 한명조회
	public void insertOne(MemberDTO dto); // 추가 
	public void updateOne(MemberDTO dto); // 업데이트
	public void update_pw(MemberDTO dto); // 임시 비밀번호 업데이트
	public void deleteOne(int mno); 	  // 삭제
	MemberDTO getOneTL(int ono);
	MemberDTO getOneTM(int uno);
	
	int profileAdd(ProFileDTO pfile);
	public void profileUpdate(ProFileDTO pfile); // 업데이트
	
}
