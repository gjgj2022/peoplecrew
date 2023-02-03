package com.people.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.people.dto.PinfoMemOriAttDTO;
import com.people.dto.PinfoMemOriDTO;
import com.people.dto.PinfoMemberDTO;


@Repository
@Mapper
public interface PinfoMemberDAO {
	List<PinfoMemOriDTO> getAll();
	PinfoMemberDTO getOne(int mno);
	void modify_mypage(PinfoMemberDTO dto);
	
	PinfoMemOriDTO getMno(int mno);
	PinfoMemberDTO getIdOne(String mid);
	List<PinfoMemOriDTO> getName();
	List<PinfoMemOriDTO> getRank();
	List<PinfoMemOriDTO> getOrg();
	
	
	List<PinfoMemOriAttDTO> getAll2();
	
}
