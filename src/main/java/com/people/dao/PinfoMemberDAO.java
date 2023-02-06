package com.people.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.people.dto.PinfoMOImgDTO;
import com.people.dto.PinfoMemOriAttDTO;
import com.people.dto.PinfoMemOriDTO;
import com.people.dto.PinfoMemberDTO;


@Repository
@Mapper
public interface PinfoMemberDAO {
	List<PinfoMemOriDTO> getAll();
	PinfoMemberDTO getOne(int mno);
	void modify_mypage(PinfoMemberDTO dto);
	
	
	PinfoMemberDTO getMno2(int mno);
	PinfoMemOriDTO getMno(int mno);
	PinfoMemberDTO getIdOne(String mid);
	List<PinfoMemOriDTO> getName();
	List<PinfoMemOriDTO> getRank();
	List<PinfoMemOriDTO> getOrg();
	
	
	List<PinfoMOImgDTO> getAll2();
	
}
