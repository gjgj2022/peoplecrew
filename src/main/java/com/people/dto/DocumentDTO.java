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
	String dono;
	int mno;
	String dotitle;
	String docontents;
	String docontents2;
	String docontents3;
	String dodate;
	String dotype;
	String doprogress;
	int fno;
}
