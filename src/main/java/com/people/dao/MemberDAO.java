package com.people.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.people.dto.MemberDTO;
@Mapper
@Repository
public interface MemberDAO {

	MemberDTO getIdOne(String mid);
}
