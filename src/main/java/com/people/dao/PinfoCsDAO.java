package com.people.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.people.dto.BoardDTO;
import com.people.dto.PinfoCsDTO;
import com.people.dto.PinfoFileDTO;
import com.people.dto.PinfoMemberDTO;
import com.people.dto.StartEnd;



@Mapper
@Repository
public interface PinfoCsDAO {
	int getBoardTotal(); 
	List<PinfoCsDTO> readAll(StartEnd se);  //변수 2개 못받아서 se로 묶음
	PinfoCsDTO getOne(int bono);
	void raiseBohits(int bono);
	int getCount(int bono);  
	PinfoFileDTO fileDetail(int fno);
	void insertOne(PinfoCsDTO dto);
	void removeFileByFno(int fno);
	void updateNoFile(PinfoCsDTO dto); 
	int fileInsert(PinfoFileDTO file); 
	void updateOne(PinfoCsDTO dto);
	void removeOne(int bono);
	void removeReplyAll(int bono);
	void upRemove(int bono);
	void upStatus(int bono);
	
	
	

}