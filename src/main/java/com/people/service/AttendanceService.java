package com.people.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.people.dao.AttendanceDAO;
import com.people.dto.AttendanceDTO;
import com.people.dto.AttdStartEnd;

@Service
public class AttendanceService {
	
	@Autowired
	private AttendanceDAO dao;
	
	//관리자 조회
	public List<AttendanceDTO> selectAll(int startNo, int endNo) {
		AttdStartEnd se = new AttdStartEnd(startNo, endNo);
		return dao.readAll(se);
	}

	public int getattTotal() {
		return dao.getattTotal();
	}
	
	public int attOneCnt(int mno) {
		return dao.attOneCnt(mno);
	}
	
    //직원 조회	
	public List<AttendanceDTO> attdOne(int startNo, int endNo, int mno) {
		AttdStartEnd se = new AttdStartEnd(startNo, endNo, mno);
		return dao.getAOne(se);
	}
	
	//근무시간 차트
	public List<AttendanceDTO> getCtime() {
		return dao.getCtime();
	}
	
	public List<AttendanceDTO> chdb2() {
		return dao.getAll();
	}
	
	public void addOne(AttendanceDTO dto) {
		dao.insertOne(dto);
	}
	
	public AttendanceDTO userOne(int mno) {
		return dao.admingetOne(mno);
	}

	public void updateOne(AttendanceDTO admindto) {
		dao.updateOne(admindto);
	}
	
	// 대시보드 근태 정상
	public List<AttendanceDTO> attenMno(int mno) {
		return dao.getOneAtten(mno);
	}
	public List<AttendanceDTO> attenMno2(int mno) {
		return dao.getOneAtten2(mno);
	}
	public List<AttendanceDTO> attenMno3(int mno) {
		return dao.getOneAtten3(mno);
	}
	public List<AttendanceDTO> attenMno4(int mno) {
		return dao.getOneAtten4(mno);
	}

	public void dupdeteOne(AttendanceDTO outwdto) {
		dao.outworkUOne(outwdto);
	}

	public AttendanceDTO timediff(int mno) {
		return dao.timediff(mno);
	}
	public AttendanceDTO outGetOne(int mno) {
		return dao.outGetOne(mno);
	}
	
}
