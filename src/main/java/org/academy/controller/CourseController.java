/*
package org.academy.controller;


import org.academy.service.CourseService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/course/*")
public class CourseController {
	
	 private static final Logger log = LoggerFactory.getLogger(CourseController.class);
	 @Autowired
	 private CourseService cservice;
	 
	
	    @RequestMapping(value="/list", method=RequestMethod.GET)
	    public void boardListGET(Model model) {
	        
	        log.info("게시판 목록 페이지 진입");
	        
	        model.addAttribute("list", cservice.getList());
	        
	    }
}
*/