package com.people.dto;

import java.security.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;



@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class PinfoMOImgDTO {
	private int mno;
	private String password;
	private String mid;
	private String mname;
	private String mphone;
	private String memail;
	private String mbirth;
	private String maddress;
	private String mdate;
	private int mannual;
	private int msal;
	private String mrank;
	private String role;
	private Timestamp mno_lst;
	private String mmessage;
	private int enabled;
	private int ono;
	
	
	private String oname;
	private String ophone;
	private int uno;
	

	private int atno;
	private Timestamp start_time;
	private Timestamp end_time;
	private String state;
	
	
	private int img_no;
	private String img_name;
	private String img_path;
	private int img_size;
	
	
}
