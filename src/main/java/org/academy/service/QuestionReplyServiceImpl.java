package org.academy.service;

import java.util.List;

import org.academy.domain.Criteria;
import org.academy.domain.QuestionReplyPageDTO;
import org.academy.domain.QuestionReplyVO;
import org.academy.mapper.QuestionMapper;
import org.academy.mapper.QuestionReplyMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class QuestionReplyServiceImpl implements QuestionReplyService {
	
	@Setter(onMethod_ = @Autowired)
	private QuestionReplyMapper mapper;
	
	@Setter(onMethod_ = @Autowired)
	private QuestionMapper questionMapper;

	
	@Transactional
	@Override
	public int register(QuestionReplyVO vo) {
		// TODO Auto-generated method stub
		
		log.info("register..........." + vo);
		return mapper.insert(vo);
	}

	@Override
	public QuestionReplyVO get(String qr_code) {
		// TODO Auto-generated method stub
		
		log.info("get....................." + qr_code);
		return mapper.read(qr_code);
	}

	@Override
	public int modify(QuestionReplyVO vo) {
		// TODO Auto-generated method stub
		
		log.info("modify................." + vo);
		return mapper.update(vo);
	}

	@Transactional
	@Override
	public int remove(String qr_code) {
		// TODO Auto-generated method stub
		
		log.info("remove...................." + qr_code);
		return mapper.delete(qr_code);
	}

	@Override
	public List<QuestionReplyVO> getList(Criteria cri, String que_code) {
		// TODO Auto-generated method stub
		
		log.info("get Reply List of a Question " + que_code);
		return mapper.getListWithPaging(cri, que_code);
		
		
	}
	
	@Override
	public QuestionReplyPageDTO getListPage(Criteria cri, String que_code) {
		return new QuestionReplyPageDTO(
				mapper.getCountByQue_code(que_code),
				mapper.getListWithPaging(cri, que_code));
	}

}
