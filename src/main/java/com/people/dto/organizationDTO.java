package com.people.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class organizationDTO {
	private int ono; 		// 부서번호
	private String oname;	// 부서명
	private String ophone;	// 부서전화번호
	
}	
