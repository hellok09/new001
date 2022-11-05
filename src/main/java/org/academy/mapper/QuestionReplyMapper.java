package org.academy.mapper;

import java.util.List;

import org.academy.domain.Criteria;
import org.academy.domain.QuestionReplyVO;
import org.apache.ibatis.annotations.Param;

public interface QuestionReplyMapper {

	// 등록
	public int insert(QuestionReplyVO vo);
	
	
	// 조회 - 특정 댓글 읽기
	public QuestionReplyVO read(String qr_code);
	
	
	// 삭제
	public int delete(String qr_code);
	
	
	// 수정
	public int update(QuestionReplyVO qr_content);
	
	
	// 댓글목록, 페이징처리
	public List<QuestionReplyVO> getListWithPaging(
			@Param("cri") Criteria cri,
			@Param("que_code") String que_code);
	
	// 댓굴 수 파악
	public int getCountByQue_code(String que_code);
}
