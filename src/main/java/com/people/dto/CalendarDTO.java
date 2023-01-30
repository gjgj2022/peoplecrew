package com.people.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class CalendarDTO {

	private int calno;
	private int mno;
	private String mname;
	private String uname;
	private String caltitle;
	private String calstart;
	private String calend;
	private String calloc;
	private String calcontents;
	private int uno;
	private int ono;
	private int ucalno;
	private int updatemno; 
	private String updatemname; 
	private String updatedate;
	
}
