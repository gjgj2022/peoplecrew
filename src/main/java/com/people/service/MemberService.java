package com.people.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.people.dao.MemberDAO;
import com.people.dto.MemberDTO;




@Service
public class MemberService {
	@Autowired
	private MemberDAO mMapper;
	
	public MemberDTO getIdOne(String mid) {
		return mMapper.getIdOne(mid);
	};
}
