package com.people.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.people.dao.PinfoAnswerDAO;
import com.people.dto.PinfoAnswerDTO;
import com.people.dto.PinfoCsAnsDTO;

@Service
public class PinfoAnswerService {
	
	@Autowired
	private PinfoAnswerDAO dao;
	

	
	public PinfoCsAnsDTO getOne(int bono) {
		return null;
		
	};
	void insertOne(PinfoAnswerDTO dto) {
		
	};
	void removeOne(int ansno) {
		
	};
	void updateOne(PinfoCsAnsDTO dto) {
		
	};
	void updateOne(PinfoAnswerDTO dto) {
		
	};

}
