package org.academy.controller;

import org.academy.domain.Criteria;
import org.academy.domain.NoticeVO;
import org.academy.domain.PageDTO;
import org.academy.service.NoticeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;


@Controller
@Log4j
@RequestMapping("/notice/*")
@AllArgsConstructor
public class NoticeController {
	
	private NoticeService service;
	
	@GetMapping("/list")
	   public void list(Criteria cri, Model model) {
	      
	      log.info("list: "+cri);
	      model.addAttribute("list", service.getList(cri));
	      //model.addAttribute("pageMaker", new PageDTO(cri, 123));
	      
	      int total = service.getTotal(cri);
	      
	      log.info("total: "+total);
	      
	      model.addAttribute("pageMaker", new PageDTO(cri, total));
	   }		

	
	   // 조회 처리
	   @GetMapping({"/get","/modify"})
	   public void get(@RequestParam("notice_code") String notice_code, @ModelAttribute("cri") Criteria cri, Model model) {
	      
	      log.info("/get or /modify");
	      model.addAttribute("notice", service.get(notice_code));
	   }

}