package com.people.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class StartEnd {
	private int startNo;
	private int endNo;
	private String keyword; // 검색 키워드
}
