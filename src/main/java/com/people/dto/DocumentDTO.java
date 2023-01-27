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
	int dono;
	int mno;
	String doname;
	String docontents;
	String dodate;
	String dotype;
	String doprogress;
	int fno;
}
