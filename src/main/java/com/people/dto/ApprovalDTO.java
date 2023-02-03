package com.people.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class ApprovalDTO {
	private String apno;
	private String dono;
	private int approgress;
	private String apdate;
	private int mno;
	private int apmno;
}
