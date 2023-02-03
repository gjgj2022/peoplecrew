package com.people.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.people.dto.PinfoOrganizationDTO;

@Repository
@Mapper
public interface PinfoOrganizationDAO {
	List<PinfoOrganizationDTO> getAllori();

	

}
