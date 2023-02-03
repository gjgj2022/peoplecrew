package com.people.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.people.dto.PinfoAnswerDTO;
import com.people.dto.PinfoCsAnsDTO;
import com.people.dto.PinfoCsDTO;

@Mapper
@Repository
public interface PinfoAnswerDAO {
	
	PinfoCsAnsDTO getOne(int bono);
	void insertOne(PinfoAnswerDTO dto);
	void removeOne(int ansno);
	void updateOne(PinfoCsAnsDTO dto);
	void updateOne(PinfoAnswerDTO dto);
	

}
