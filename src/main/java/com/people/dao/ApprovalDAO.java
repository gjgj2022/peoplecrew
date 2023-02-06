package com.people.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.people.dto.ApprovalDTO;

@Repository
@Mapper
public interface ApprovalDAO {
	List<ApprovalDTO> selectAll();
	List<ApprovalDTO> selectOne(int apmno);
	List<ApprovalDTO> selectAllByApprogress(String apvP);
	int getAllCount(String apvP);
	int getMyCount(String apvP, String mno);
	List<ApprovalDTO> getAllByApmno(int apmno);
	void addOne(ApprovalDTO dto);
	void updateOne(String approgress, String apno);
	ApprovalDTO selectOneByDono(String dono,String apmno);
	void deleteOne(String dono);
	
	List<ApprovalDTO> getAllByApmnoNot1(int apmno);
}
