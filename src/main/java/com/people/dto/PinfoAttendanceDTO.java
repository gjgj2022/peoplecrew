package com.people.dto;

import java.security.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class PinfoAttendanceDTO {

	
	private int atno;
	private int mno;
	private Timestamp start_time;
	private Timestamp end_time;
	private String state;
	private int ono;
}
