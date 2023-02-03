package com.people.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.people.dto.FileDTO;

@Repository
@Mapper
public interface FileDAO {
	
	FileDTO selectOne(int fno);
	
}
