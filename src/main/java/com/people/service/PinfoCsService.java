package com.people.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.people.dao.PinfoCsDAO;
import com.people.dto.PinfoCsDTO;
import com.people.dto.PinfoFileDTO;
import com.people.dto.PinfoStartEnd;

@Service
public class PinfoCsService {

	@Autowired
    private PinfoCsDAO dao;
	
	
	public int getBoardCount() { //총 게시물수
		int total = dao.getBoardTotal();
		return total;
	}
	
	public List<PinfoCsDTO> selectAll(int startNo, int endNo) {
		PinfoStartEnd se = new PinfoStartEnd(startNo,endNo); //페이징처리
		return dao.readAll(se);
	}
	
	public PinfoCsDTO getOne(int bono) {  
		PinfoCsDTO dto = dao.getOne(bono);
		return dto;
	}

	public void raisehits(int bono) {  
		dao.raiseBohits(bono);
	}
	public int getTotal(int bono) {  
		int recnt = dao.getCount(bono);
		return recnt;
	}
	
	public PinfoFileDTO fileDetailService(int fno){ 
	    return dao.fileDetail(fno);
	}
	
	public void write(PinfoCsDTO dto) { 
		dao.insertOne(dto);
	}
	public void removeFileByFno(int fno) {
		dao.removeFileByFno(fno);  
		
	}
	public void modifyNoFile(PinfoCsDTO dto) {
		dao.updateNoFile(dto);
	}
	
	public int fileInsertService(PinfoFileDTO file) {   
		return dao.fileInsert(file); 
	}
	
	public void modify(PinfoCsDTO dto) {  
		dao.updateOne(dto);
	}
	
	public void remove(int bono) {
		dao.removeOne(bono);
	}

	public void removeRAll(int bono) {  
		dao.removeReplyAll(bono);
	}
	
	public void upRemove(PinfoCsDTO dto) {
		dao.upRemove(dto);
	};

}

	
	

