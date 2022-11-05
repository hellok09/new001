package org.academy.service;

import java.util.List;

import org.academy.domain.Criteria;
import org.academy.domain.NoticeVO;

public interface NoticeService {
	
	public NoticeVO get(String notice_code);
	
	public List<NoticeVO> getList();
	
    public List<NoticeVO> getList(Criteria cri);
    
    public int getTotal(Criteria cri);	
}
