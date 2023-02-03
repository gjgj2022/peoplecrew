package com.people.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.people.dao.MemberDAO;
import com.people.dto.MemberDTO;
import com.people.dto.StartEnd;

@Service
public class MemberService {
	
	@Autowired
	private MemberDAO dao;
	
	public List<MemberDTO> getAll(int startno, int endno, String keyword){
		StartEnd se = new StartEnd(startno, endno,keyword);
		return dao.getAll(se);
	}
	
	public int getTotal() {
		return dao.getTotal();
	}
	
	public int getTotal(String key) {
		return dao.getTotal(key);
	}
	
	public List<MemberDTO> getAvg() {
		return dao.getAvg();
	}
	public List<MemberDTO> getAvg2() {
		return dao.getAvg2();
	}
	
	public MemberDTO getOne(int mno) {
		return dao.getOne(mno);
	}
	
	public MemberDTO getIdOne(String mid) {
		return dao.getIdOne(mid);
	}

	public MemberDTO getNEOne(String mname, String memail) {
		return dao.getNEOne(mname,memail);
	}
	public MemberDTO getIEOne(String mid, String memail) {
		return dao.getIEOne(mid,memail);
	}
	
	public void insertOne(MemberDTO dto) {
		dao.insertOne(dto);
	}
	
	public void updateOne(MemberDTO dto) {
		dao.updateOne(dto);
	}
	public void update_pw(MemberDTO dto) {
		dao.update_pw(dto);
	}
	
	public void deleteOne(int mno) {
		dao.deleteOne(mno);
	}
	
}
