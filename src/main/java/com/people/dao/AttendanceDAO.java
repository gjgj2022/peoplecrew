package com.people.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.people.dto.AttendanceDTO;
import com.people.dto.AttdStartEnd;

@Repository
@Mapper
public interface AttendanceDAO {
	List<AttendanceDTO> getAll();
	List<AttendanceDTO> readAll(AttdStartEnd se); // 관리자조회
	AttendanceDTO admingetOne(int mno);
	List<AttendanceDTO> getAOne(AttdStartEnd se); // 직원조회
	int getattTotal();
	int attOneCnt(int mno);
	void insertOne(AttendanceDTO dto);
	void updateOne(AttendanceDTO dto);
	
	List<AttendanceDTO> getOneAtten(int mno);
	List<AttendanceDTO> getOneAtten2(int mno);
	List<AttendanceDTO> getOneAtten3(int mno);
	List<AttendanceDTO> getOneAtten4(int mno);
	void outworkUOne(AttendanceDTO outwdto); // 퇴근버튼 업데이트
	
	AttendanceDTO timediff(int mno);
	AttendanceDTO outGetOne(int mno);
}
