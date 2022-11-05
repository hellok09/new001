package org.academy.mapper;

import java.util.List;

import org.academy.domain.Criteria;
import org.academy.domain.NoticeVO;

public interface NoticeMapper {

	//@Select("select * from notice where notice_code > 0")
	
	// 게시물 불러오기 
	public List<NoticeVO> getList();
	
	//read
	
	public NoticeVO read(String notice_code);
	
	   // 페이징 처리
	   public List<NoticeVO> getListWithPaging(Criteria cri);
	   
	   public int getTotalCount(Criteria cri);
}
