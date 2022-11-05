package org.academy.domain;

import java.util.Date;

import lombok.Data;

@Data
public class QuestionVO {

	private String que_code;
	private String class_code;

	private String stu_id;
	private String title;
	private String content;
	private int views;
	private int replycnt;
	private String status;
	private Date enter;
	private Date updateDate;
	
}
