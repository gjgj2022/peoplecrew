package com.people.dto;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ProFileDTO {
		private int img_no;
	    private String img_name;  // 파일이름
	    private String img_path;  // 파일경로
	    private int img_size;  // 파일크기
	    private int mno;

}
