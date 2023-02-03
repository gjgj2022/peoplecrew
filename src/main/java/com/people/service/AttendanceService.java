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
	
	public List<AttendanceDTO> selectAll() {
		return dao.getAll();
	}
	public List<AttendanceDTO> selectAll(int startNo, int endNo) {
		AttdStartEnd se = new AttdStartEnd(startNo, endNo, 0);
		return dao.readAll(se);
	}

	public int getTotal() {
		return dao.getTotal();
	}
	
	public AttendanceDTO selectOne(int startNo, int endNo, int mno) {
		AttdStartEnd se = new AttdStartEnd(startNo, endNo, mno);
		return dao.getMOne(se);
	}
	
	public String work_day(String aid) {
		return dao.work_day(aid);
	}
	
	//차트
	public List<AttendanceDTO> getChdb() {
		return dao.getAll();
	}
	public List<AttendanceDTO> chdb2() {
		return dao.getAll();
	}
	public void addOne(AttendanceDTO dto) {
		dao.insertOne(dto);
	}
	public AttendanceDTO userOne(int mno) {
		return dao.getOne(mno);
	}
	public void updateOne(AttendanceDTO dto) {
		dao.updateOne(dto);
	}


	
}
