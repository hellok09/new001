package org.academy.domain;

import java.util.Date;
import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class MemberVO {
	private String STU_ID;
	private String BRANCHCODE;
	private String PWD;
	private String NAME;
	private String ADDRESS;
	private String GENDER;
	private String EMAIL;
	private String PHONE;
	private String AGREE_AD;
	private String STATUS;
	private Date ENTER;
	private Date UPDATEDATE;
	private String BIRTH;
	private String ADMIN_CODE;
	
}
