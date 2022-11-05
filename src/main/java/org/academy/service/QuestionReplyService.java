package org.academy.service;

import java.util.List;

import org.academy.domain.Criteria;
import org.academy.domain.QuestionReplyPageDTO;
import org.academy.domain.QuestionReplyVO;

public interface QuestionReplyService {

	public int register(QuestionReplyVO vo);
	
	public QuestionReplyVO get(String qr_code);
	
	public int modify(QuestionReplyVO vo);
	
	public int remove(String qr_code);
	
	public List<QuestionReplyVO> getList(Criteria cri, String que_code);
	
	public QuestionReplyPageDTO getListPage(Criteria cri, String que_code);
}
