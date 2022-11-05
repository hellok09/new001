package org.academy.domain;

import java.util.Date;

import lombok.Data;

@Data
public class QuestionReplyVO {

	private String qr_code;
	private String que_code;
	
	private String replyer;
	private String qr_content;
	private Date enter;
	private Date updateDate;
}
