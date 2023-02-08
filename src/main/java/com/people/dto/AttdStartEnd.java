package com.people.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class AttdStartEnd {
	private int startNo;
	private int endNo;
	private int mno;
	
	public AttdStartEnd(int startNo, int endNo) {
		super();
		this.startNo = startNo;
		this.endNo = endNo;
	}
	
}
