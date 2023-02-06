package com.people.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.people.dto.DocumentDTO;

@Repository
@Mapper
public interface DocumentDAO {
	List<DocumentDTO> selectAll();
	List<DocumentDTO> selectAllByMno(int mno);
	DocumentDTO selectOne(String dono);
	DocumentDTO selectC(String dono, String doprogress);
	List<DocumentDTO> selectIng(int mno);
	List<DocumentDTO> selectEnd(int mno);
	List<DocumentDTO> selectByDoprogress(String apvP, String mno);
	
	DocumentDTO getWait(String dono);
	DocumentDTO getIng(String dono);
	DocumentDTO getSuccess(String dono);
	DocumentDTO getNo(String dono);
	
	int getAllCount(String apvP);
	int getMyCount(String apvP, String mno);
	void addOne(DocumentDTO dto);
	void updateOne(String doprogress, String dono);
	
	void deleteOne(String dono);
	
	void updateFile(String doprogress, String dotitle, String docontents, String docontents2, String docontents3, String dono);

	List<DocumentDTO> selectOld(int mno);
	
	DocumentDTO selectOneOld(String dono);
}
