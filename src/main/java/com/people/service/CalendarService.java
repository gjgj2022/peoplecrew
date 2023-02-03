package com.people.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.people.dao.CalendarDAO;
import com.people.dto.CalendarDTO;
import com.people.dto.MemberDTO;

@Service
public class CalendarService{
	@Autowired
	private CalendarDAO cMapper;

	public List<CalendarDTO> getList() { //회사일정 전부 가져오기
		return cMapper.getAll();
	}
	public CalendarDTO getOne(int calno) {
		return cMapper.getOne(calno);
	}
	
	public List<CalendarDTO> getByMno(int mno){
		return cMapper.getByMno(mno);
	}
	public List<CalendarDTO> getByUno(int uno) {
		
		return cMapper.getByUno(uno);
	}

	
	public void write(CalendarDTO dto) {
		cMapper.insertOne(dto);
	}
	
	public void upperCalUpdate(CalendarDTO dto) {
		cMapper.upperCalUpdate(dto);
	}


	public void remove(int calno) {
		cMapper.deleteOne(calno);
	}


	public void modify(CalendarDTO dto) {
		cMapper.updateOne(dto);
	}
	public Integer getOneUcalno(int mno) { //개인테이블 있는지 조회. 있으면 번호 가져오기
		Integer ucalno = cMapper.getUcalno(mno);
		return ucalno;
	}
	public void addTable(int mno) { //개인테이블 없으면 추가
		cMapper.makeTable(mno);
	}
	public List<CalendarDTO> getEndList(MemberDTO dto) {
		return cMapper.endList(dto);
	}
	public List<CalendarDTO> getOneByOno(int ono){
		return cMapper.getByOno(ono);
	}
}
