package com.people.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.people.dto.ApprovalDTO;

@Repository
@Mapper
public interface ApprovalDAO {
	List<ApprovalDTO> selectAll();
	List<ApprovalDTO> selectAllByApprogress(String apvP);
	int getAllCount(String apvP);
	int getMyCount(String apvP, String mno);
	// dd
}
