package org.academy.service;

import java.util.List;

import org.academy.domain.Criteria;
import org.academy.domain.QuestionVO;
import org.academy.mapper.QuestionMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class QuestionServiceImpl implements QuestionService {

	@Setter(onMethod_ = @Autowired)
	private QuestionMapper mapper;
	
	@Override
	public void register(QuestionVO question) {
		// TODO Auto-generated method stub
		
		log.info("register................." + question);
		
		mapper.insertSelectKey(question);

	}

	@Override
	public QuestionVO get(String que_code) {
		// TODO Auto-generated method stub
		log.info("get...................");
		
		return mapper.read(que_code);
	}

	@Override
	public boolean modify(QuestionVO question) {
		// TODO Auto-generated method stub
		log.info("modify..................." + question);
		
		return mapper.update(question) == 1;
	}

	@Override
	public boolean remove(String que_code) {
		// TODO Auto-generated method stub
		log.info("remove..................." + que_code);
		
		return mapper.delete(que_code) == 1;
	}

	/*
	@Override
	public List<QuestionVO> getList() {
		// TODO Auto-generated method stub
		
		log.info("getList...................");
		
		return mapper.getList();
	}
	*/
	
	@Override
	public List<QuestionVO> getList(Criteria cri) {
		
		log.info("get List with criteria: " +cri);
		
		return mapper.getListWithPaging(cri);
	}
	
	
	@Override
	public int getTotal(Criteria cri) {
		
		log.info("get total count");
		
		return mapper.getTotalCount(cri);
	}

}
