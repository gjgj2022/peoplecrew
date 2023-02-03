package com.people.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.people.dao.FileDAO;
import com.people.dto.FileDTO;

@Service
public class FileService {
	
	@Autowired
	FileDAO dao;
	
	public FileDTO selectOne(int fno) {
		return dao.selectOne(fno);
	}
}
