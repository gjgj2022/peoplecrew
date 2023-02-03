package com.people.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ReplyDTO {

	private int reno;
	private int bono;
	private int mno;
	private String mname;
	private String recontents;
	private String redate;
}
