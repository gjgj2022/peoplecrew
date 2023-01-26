package com.people.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.people.dto.DocumentDTO;

@Repository
@Mapper
public interface DocumentDAO {
	List<DocumentDTO> selectAll();
	DocumentDTO selectBydono(int dono);
}
