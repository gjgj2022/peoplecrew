package com.people.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.people.dto.PinfoCsDTO;
import com.people.dto.PinfoFileDTO;
import com.people.dto.PinfoMemberDTO;
import com.people.dto.PinfoStartEnd;



@Mapper
@Repository
public interface PinfoCsDAO {
	int getBoardTotal(); 
	List<PinfoCsDTO> readAll(PinfoStartEnd se);  
	PinfoCsDTO getOne(int bono);
	void raiseBohits(int bono);
	int getCount(int bono);  
	PinfoFileDTO fileDetail(int fno);
	void insertOne(PinfoCsDTO dto);
	void removeFileByFno(int fno);
	void updateNoFile(PinfoCsDTO dot); 
	int fileInsert(PinfoFileDTO file); 
	void updateOne(PinfoCsDTO dto);
	void removeOne(int bono);
	void removeReplyAll(int bono);
	

}
