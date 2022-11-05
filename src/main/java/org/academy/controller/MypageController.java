package org.academy.controller;

import javax.servlet.http.HttpSession;
import org.academy.domain.MemberVO;
import org.academy.mapper.MemberMapper;
import org.academy.service.MemberService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/mypage")
public class MypageController {
	
	@Autowired
	private MemberMapper mapper;
	
	 private static final Logger logger = LoggerFactory.getLogger(MypageController.class);
	 
	/* 마이 페이지 이동 */
    @RequestMapping(value="mypage", method = RequestMethod.GET)
    public void mypageGET() throws Exception{
        
        logger.info("마이페이지 이동");
        
    }
    
    @RequestMapping(value="mypage_heart", method = RequestMethod.GET)
    public void mypage_heartGET() throws Exception{
        
        logger.info("찜한강의 이동");
        
    }
    
    @RequestMapping(value="video_list", method = RequestMethod.GET)
    public void video_listGET() throws Exception{
        
        logger.info("강의동영상 이동");
        
    }
    
    @RequestMapping(value="memberUpdateView", method = RequestMethod.GET)
    public void memberUpdateView() {
    	logger.info("수정페이지 이동");
    }
    
    @RequestMapping(value="/updateMembers.do", method = RequestMethod.POST)
    public String updateMembers(MemberVO member) throws Exception {
    	mapper.memberUpdate(member);
    	return "redirect:/main";
    }

}
