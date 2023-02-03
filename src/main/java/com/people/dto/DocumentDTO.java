package com.people.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class DocumentDTO {
	private String dono;
	private int mno;
	private String dotitle;
	private String docontents;
	private String docontents2;
	private String docontents3;
	private String dodate;
	private String dotype;
	private String doprogress;
	private int fno;
}
