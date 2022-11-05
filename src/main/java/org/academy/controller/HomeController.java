package org.academy.controller;

import java.util.Locale;

import org.academy.service.CourseService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired
	private CourseService cservice;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
			
		return "main";
	}
	
	@RequestMapping(value = "/intro", method = RequestMethod.GET)
	public void intro() {
		
		logger.info("소개페이지 진입");
		
	}
	
	@RequestMapping(value = "/course/course", method = RequestMethod.GET)
	public void course() {
		
		logger.info("국비과정 페이지 진입");
		
	}
	@RequestMapping(value = "/course/course2", method = RequestMethod.GET)
	public void course2() {
		
		logger.info("백엔드과정 페이지 진입");
		
	}
	@RequestMapping(value = "/course/course3", method = RequestMethod.GET)
	public void course3() {
		
		logger.info("프론트엔드과정 페이지 진입");
		
	}
	@RequestMapping(value="/course/course_info", method=RequestMethod.GET)
    public void boardListGET(Model model) {
        
        logger.info("게시판 목록1 페이지 진입");
        
       model.addAttribute("course_info", cservice.getList());   //CourseService의 list불러오기
        
    }
	@RequestMapping(value="/course/course_info2", method=RequestMethod.GET)
    public void boardListGET1(Model model) {
        
        logger.info("게시판 목록2 페이지 진입");
        
        model.addAttribute("course_info", cservice.getList());
        
    }
	@RequestMapping(value="/course/course_info3", method=RequestMethod.GET)
    public void boardListGET2(Model model) {
        
        logger.info("게시판 목록3 페이지 진입");
        
        model.addAttribute("course_info", cservice.getList());
        
    }
	@RequestMapping(value="/course/course_info4", method=RequestMethod.GET)
    public void boardListGET3(Model model) {
        
        logger.info("게시판 목록4 페이지 진입");
        
        model.addAttribute("course_info", cservice.getList());
        
    }
	@RequestMapping(value="/course/course_info5", method=RequestMethod.GET)
    public void boardListGET4(Model model) {
        
        logger.info("게시판 목록5 페이지 진입");
        
        model.addAttribute("course_info", cservice.getList());
        
    }
	@RequestMapping(value="/course/course_info6", method=RequestMethod.GET)
    public void boardListGET5(Model model) {
        
        logger.info("게시판 목록6 페이지 진입");
        
        model.addAttribute("course_info", cservice.getList());
        
    }
	@RequestMapping(value="/course/course_info7", method=RequestMethod.GET)
    public void boardListGET6(Model model) {
        
        logger.info("게시판 목록7 페이지 진입");
        
        model.addAttribute("course_info", cservice.getList());
        
    }
	@RequestMapping(value="/course/course_info8", method=RequestMethod.GET)
    public void boardListGET7(Model model) {
        
        logger.info("게시판 목록8 페이지 진입");
        
        model.addAttribute("course_info", cservice.getList());
        
    }
	@RequestMapping(value="/course/course_info9", method=RequestMethod.GET)
    public void boardListGET8(Model model) {
        
        logger.info("게시판 목록9 페이지 진입");
        
        model.addAttribute("course_info", cservice.getList());
        
    }
	@RequestMapping(value="/course/course_info10", method=RequestMethod.GET)
    public void boardListGET9(Model model) {
        
        logger.info("게시판 목록10 페이지 진입");
        
        model.addAttribute("course_info", cservice.getList());
        
    }
	@RequestMapping(value = "/course/lisense_course", method = RequestMethod.GET)
	public void lisense_course() {
		
		logger.info("국비과정 페이지 진입");
		
	}
	
}
