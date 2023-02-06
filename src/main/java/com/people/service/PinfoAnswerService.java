package com.people.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.people.dao.PinfoAnswerDAO;
import com.people.dto.PinfoAnswerDTO;
import com.people.dto.PinfoMOImgDTO;
import com.people.dto.PinfoCsDTO;

@Service
public class PinfoAnswerService {
	
	@Autowired
	private PinfoAnswerDAO dao;
	

	
	public PinfoAnswerDTO getOneBono(int bono) {
		return dao.getOneBono(bono);
		
	};
	public void insertOne(PinfoAnswerDTO dto) {
		dao.insertOne(dto);
		
	};
	public void removeOne(int ansno) {
		dao.removeOne(ansno);
	};
	
	public void updateOne(PinfoAnswerDTO dto) {
		dao.updateOne(dto);
	};

}

