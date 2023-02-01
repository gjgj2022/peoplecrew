package com.people.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.people.dao.AttendanceDAO;
import com.people.dto.AttendanceDTO;
import com.people.dto.StartEnd;

@Service
public class AttendanceService {
	
	@Autowired
	private AttendanceDAO dao;
	
	public List<AttendanceDTO> selectAll() {
		return dao.getAll();
	}
	public List<AttendanceDTO> selectAll(int startNo, int endNo) {
		StartEnd se = new StartEnd(startNo, endNo);
		return dao.readAll(se);
	}

	public int getTotal() {
		return dao.getTotal();
	}
	
	public AttendanceDTO selectOne(int mno) {
		return dao.getOne(mno);
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

	
}
