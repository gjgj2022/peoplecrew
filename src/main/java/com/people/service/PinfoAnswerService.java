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
		dao.insertOne(dto);
		
	};
	void removeOne(int ansno) {
		dao.removeOne(ansno);
	};
	void upRemove(PinfoCsAnsDTO dto) {
		dao.upRemove(dto);
	};
	void updateOne(PinfoAnswerDTO dto) {
		dao.updateOne(dto);
	};

}
