package com.people.security;

import static org.junit.jupiter.api.Assertions.assertTrue;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.password.PasswordEncoder;

@SpringBootTest
class SecurityConfigTest {
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Test
	void testPasswordEncoder() {
		
		// 암호화 테스트
		String password = "asd123";
		String password2 = "zxc123";
		String password3 = "123";
		
		System.out.println("비밀번호 : " + password3);
		
		String enPw = passwordEncoder.encode(password3);
		
		System.out.println("암호화된 비밀번호 : " + enPw);
		
		// 일치 확인
		boolean matchResult = passwordEncoder.matches(password3, enPw);		
		
		System.out.println("매칭결과 : " + matchResult);
		
		assertTrue(matchResult);
		
	}

}
