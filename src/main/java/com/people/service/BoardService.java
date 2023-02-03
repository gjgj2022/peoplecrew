package com.people.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.people.dao.BoardDAO;
import com.people.dto.BoardDTO;
import com.people.dto.FileDTO;
import com.people.dto.StartEnd;
@Service
public class BoardService{

	@Autowired
    private BoardDAO bMapper;
	public int getBoardCount() { //총 게시물수
		int total = bMapper.getBoardTotal();
		return total;
	}
	
	public List<BoardDTO> selectAll(int startNo, int endNo) {
		StartEnd se = new StartEnd(startNo,endNo); //페이징처리
		return bMapper.readAll(se);
	}
	
	public List<BoardDTO> selectAll() { // 대시보드 전체조회
		return bMapper.readDashAll();
	}
	
	public BoardDTO getOne(int bono) {  //상세조회. 
		BoardDTO dto = bMapper.getOne(bono);
		return dto;
	}

	public void raisehits(int bono) {  //조회수 1 증가
		bMapper.raiseBohits(bono);
	}
	public int getTotal(int bono) {  //총 댓글 수 
		int recnt = bMapper.getCount(bono);
		return recnt;
	}
	
	public FileDTO fileDetailService(int fno){ //파일상세내용
	    return bMapper.fileDetail(fno);
	}
	
	public void write(BoardDTO dto) { //추가
		bMapper.insertOne(dto);
	}
	public void removeFileByFno(int fno) {
		bMapper.removeFileByFno(fno); //파일번호로 삭제 
		
	}
	public void modifyNoFile(BoardDTO dto) {
		bMapper.updateNoFile(dto);
	}
	
	public int fileInsertService(FileDTO file) {  //게시글 쓸때 파일 넣기 
		return bMapper.fileInsert(file); 
	}
	
	public void modify(BoardDTO dto) {  //수정
		bMapper.updateOne(dto);
	}
	
	public void remove(int bono) { //삭제
		bMapper.removeOne(bono);
	}

	public void removeRAll(int bono) {  //댓글 전부 삭제
		bMapper.removeReplyAll(bono);
	}

}
