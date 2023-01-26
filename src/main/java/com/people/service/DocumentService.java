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
	
	public DocumentDTO readOne(int dono){
		return dao.selectBydono(dono);
	}
}
