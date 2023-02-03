package com.people.service;

import java.util.List;

import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

import com.people.dto.MemberDTO;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CustomUser extends User{
	
	private static final long serialVersionUID = 1L;
	
	private MemberDTO dto;
	
	public CustomUser(MemberDTO dto) {
        super(dto.getMid(), dto.getMname(), List.of(new SimpleGrantedAuthority(dto.getRole())));

        this.dto = dto;
	}
	
}
