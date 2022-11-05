package org.academy.service;

import java.util.List;

import org.academy.domain.Criteria;
import org.academy.domain.QuestionVO;

public interface QuestionService {

	public void register(QuestionVO question);
	
	public QuestionVO get(String que_code);
	
	public boolean modify(QuestionVO question);

	public boolean remove(String que_code);
	
	//public List<QuestionVO> getList();
	
	public List<QuestionVO> getList(Criteria cri);
	
	public int getTotal(Criteria cri);
	
}
