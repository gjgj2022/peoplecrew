package com.people.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.people.dto.PinfoAnswerDTO;
import com.people.dto.PinfoMOImgDTO;
import com.people.dto.PinfoCsDTO;

@Mapper
@Repository
public interface PinfoAnswerDAO {
	
	PinfoAnswerDTO getOneBono(int bono);
	void insertOne(PinfoAnswerDTO dto);
	void removeOne(int ansno);
	void updateOne(PinfoAnswerDTO dto);
	
	

}

