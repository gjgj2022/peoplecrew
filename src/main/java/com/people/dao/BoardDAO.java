package com.people.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.people.dto.BoardDTO;
import com.people.dto.FileDTO;
import com.people.dto.StartEnd;

@Mapper
@Repository
public interface BoardDAO {
	int getBoardTotal(); //총 게시물수 
	List<BoardDTO> readAll(StartEnd se);  //변수 2개 못받아서 se로 묶음
	List<BoardDTO> readDashAll(); 
	BoardDTO getOne(int bono);
	void raiseBohits(int bono);
	int getCount(int bono);  //총 댓글수 
	FileDTO fileDetail(int fno);
	void insertOne(BoardDTO dto);
	void removeFileByFno(int fno);//파일삭제
	void updateNoFile(BoardDTO dot); //파일 변경 없이 글 수정 
	int fileInsert(FileDTO file); //파일넣기
	void updateOne(BoardDTO dto);
	void removeOne(int bono);
	void removeReplyAll(int bono);
	

}
