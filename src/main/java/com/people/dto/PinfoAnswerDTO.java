package com.people.dto;

import java.security.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;



@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class PinfoAnswerDTO {
	private int ansno;
	private int bono;
	private int mno;
	private String ansdate;
	private String anstitle;
	private String anscontents;
	

}
