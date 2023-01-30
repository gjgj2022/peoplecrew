package com.people.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class MemberDTO {
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
	private String mno_lst;
	private String mmessage;
	private int enabled;
	private int ono;
	private int uno;
	private String maddress2;
	private String zipcode;
}
