package com.people.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class BoardDTO {
	private int bono;
	private int mno;
	private String mname;
	private String botitle;
	private String bocontents;
	private String bodate;
	private int bohits;
	private int recnt;
	private int fno;
	private int bostatus;
}
