package com.people.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.people.dao.ApprovalDAO;
import com.people.dto.ApprovalDTO;

@Service
public class ApprovalService {
	@Autowired
	ApprovalDAO dao;
	
	public List<ApprovalDTO> readAll(){
		return dao.selectAll();
	}
	
	public List<ApprovalDTO> readAllByProgress(String apvP){
		return dao.selectAllByApprogress(apvP);
	}
	
	public int getAllCount(String apvP) {
		return dao.getAllCount(apvP);
	}
	
	public int getMyCount(String apvP, String mno) {
		return dao.getMyCount(apvP, mno);
	}
	
	public List<ApprovalDTO> getAllByApmno(int apmno){
		return dao.getAllByApmno(apmno);
	}
	
	public void addOne(ApprovalDTO dto) {
		dao.addOne(dto);
	}
	
	public void updateOne(String approgress, String apno) {
		dao.updateOne(approgress, apno);
	}
}
