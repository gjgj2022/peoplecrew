package com.people.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.people.dao.DocumentDAO;
import com.people.dto.DocumentDTO;

@Service
public class DocumentService {
	@Autowired
	DocumentDAO dao;
	
	public List<DocumentDTO> readAll(){
		return dao.selectAll();
	}
	
	public List<DocumentDTO> readAllByMno(int mno){
		return dao.selectAllByMno(mno);
	}
	
	public DocumentDTO readOne(int dono){
		return dao.selectBydono(dono);
	}
	
	public List<DocumentDTO> readIng(int dono) {
		return dao.selectIng(dono);
	}
	
	public List<DocumentDTO> readEnd(int dono) {
		return dao.selectEnd(dono);
	}
	
	public List<DocumentDTO> readByDoprogress(String apvP, String mno){
		return dao.selectByDoprogress(apvP, mno);
	}
	
	public int getAllCount(String apvP) {
		return dao.getAllCount(apvP);
	}
	
	public int getMyCount(String apvP, String mno) {
		return dao.getMyCount(apvP, mno);
	}
}
