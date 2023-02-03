package com.people.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.people.dao.PinfoMemberDAO;
import com.people.dao.PinfoOrganizationDAO;
import com.people.dto.PinfoCsDTO;
import com.people.dto.PinfoMemOriAttDTO;
import com.people.dto.PinfoMemOriDTO;
import com.people.dto.PinfoMemberDTO;
import com.people.dto.PinfoOrganizationDTO;

@Service
public class PinfoMemberService {

	@Autowired
	private PinfoMemberDAO dao;
	
	@Autowired
	private PinfoOrganizationDAO ordao;
	
	public List<PinfoMemOriDTO> selectAll(){
		return dao.getAll();
	}

	
	public PinfoMemOriDTO getMnoOne(int mno) {
		return dao.getMno(mno);
	};
	
	public void mypagemodify(PinfoMemberDTO dto) {
		dao.modify_mypage(dto);
	}
	
	
	
	//===================================================
	
	public PinfoMemberDTO getIdOne(String mid){
		return dao.getIdOne(mid);
	};
	
	public List<PinfoMemOriDTO> getName(){
		
		return dao.getName();
	}
	public List<PinfoMemOriDTO> getRank(){
		
		return dao.getRank();
	}
	public List<PinfoMemOriDTO> getOrg(){
		
		return dao.getOrg();
	}
	public List<PinfoMemOriAttDTO> selectAll2(){
	
		return dao.getAll2();
	}
	
	public List<PinfoOrganizationDTO> getAllori(){
		return ordao.getAllori();
	}
	
}
