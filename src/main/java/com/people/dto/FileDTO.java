package com.people.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class FileDTO {
	 private int fno;
	    private String fname;     //저장할 파일
	    private String oriname;  //실제 파일
	    private String fpath;
	    private int mno;
}
