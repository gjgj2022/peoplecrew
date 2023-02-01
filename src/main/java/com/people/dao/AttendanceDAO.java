package com.people.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.people.dto.AttendanceDTO;
import com.people.dto.StartEnd;

@Repository
@Mapper
public interface AttendanceDAO {
	List<AttendanceDTO> getAll();
	List<AttendanceDTO> readAll(StartEnd se);
	AttendanceDTO getOne(int mno);
	int getTotal();
	String work_day(String aid);
}
