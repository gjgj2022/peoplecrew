package com.people.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.people.dto.ReplyDTO;

@Mapper
@Repository
public interface ReplyDAO {
	
	List<ReplyDTO> getAll(int bono);
	void insertOne(ReplyDTO dto);
	void deleteOne(int reno);
	void updateOne(ReplyDTO dto);
	void deleteAll(int bono);

}
