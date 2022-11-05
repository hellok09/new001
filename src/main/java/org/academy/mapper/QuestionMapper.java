package org.academy.mapper;

import java.util.List;

import org.academy.domain.Criteria;
import org.academy.domain.QuestionVO;
import org.apache.ibatis.annotations.Param;

public interface QuestionMapper {
	
	// @Select("select * from question where que_code <> '0' ")
	
	// 전체 목록 가져오기
	public List<QuestionVO> getList();
	
	// 페이징 처리
	public List<QuestionVO> getListWithPaging(Criteria cri);
	
	
	// CREATE (insert) 처리
	public void insert(QuestionVO question);
	
	public void insertSelectKey(QuestionVO question);
	
	
	// READ (select) 처리
	public QuestionVO read(String que_code);
	
	
	// DELETE 처리
	public int delete(String que_code);
	
	
	// UPDATE 처리
	public int update(QuestionVO question);
	
	

	public int getTotalCount(Criteria cri);
	
	
	// 댓글수 처리
	public void updateReplycnt(@Param("que_code") String que_code, @Param("amount") int amount);

}
