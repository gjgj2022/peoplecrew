package com.people.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class PinfoFileDTO {

	private int fno;
	private String fname;
	private String oriname;
	private String fpath;
	private int mno;

}
