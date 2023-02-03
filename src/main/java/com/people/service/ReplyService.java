package com.people.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.people.dao.ReplyDAO;
import com.people.dto.ReplyDTO;
@Service
public class ReplyService {

	@Autowired
	private ReplyDAO rmapper;
	
	public List<ReplyDTO> getList(int bono) {  // 댓글목록
		List<ReplyDTO> list = rmapper.getAll(bono);
		return list;
	}

	public void write(ReplyDTO dto) { // 댓글작성
		rmapper.insertOne(dto);
	}

	public void remove(int reno) { // 댓글1개 삭제
		rmapper.deleteOne(reno);
	}
 
	public void modify(ReplyDTO dto) { // 댓글수정
		rmapper.updateOne(dto);
	}

	public void removeAll(int bono) { // 해당 게시물 댓글 전체삭제
		rmapper.deleteAll(bono);
		
	}

}
