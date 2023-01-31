package com.people.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.people.dto.CalendarDTO;
import com.people.dto.MemberDTO;

@Mapper
@Repository
public interface CalendarDAO {
	
	List<CalendarDTO> getAll();  //회사일정 전부 가져오기
	CalendarDTO getOne(int calno);
	List<CalendarDTO> getByUno(int uno);  //부서 일정 테이블 
	List<CalendarDTO> getByMno(int mno);  //개인 일정 테이블 
	
	void insertOne(CalendarDTO dto);  //일정등록
	void upperCalUpdate(CalendarDTO dto); //일정등록시 상위테이블 수정
	
	
	void updateOne(CalendarDTO dto);
	void deleteOne(int calno);
	
	Integer getUcalno(int mno); //개인테이블 있나 조회
	void makeTable(int mno); //개인테이블 없으면 만들기
	List<CalendarDTO> endList(MemberDTO dto); //완료 일정 뽑기용
	
}
