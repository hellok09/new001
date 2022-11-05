package org.academy.controller;

import org.academy.domain.Criteria;
import org.academy.domain.InqueryVO;
import org.academy.domain.NoticeVO;
import org.academy.domain.PageDTO;
import org.academy.service.InqueryService;
import org.academy.service.NoticeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
@Controller
@Log4j
@RequestMapping("/inquery/*")
@AllArgsConstructor
public class InqueryController {
private InqueryService service;
	
	@GetMapping("/register")
	public void register() {
	
	} 
	/*
	@GetMapping("/list")
	public void list() {
	} 
	
	
	@GetMapping("/list")
	public void list(Model model) {
		
		log.info("list");
		model.addAttribute("list", service.getList());
	} */
	
	@GetMapping("/list")
	public void list(Criteria cri, Model model) {
	   
	   log.info("list: "+cri);
	   model.addAttribute("list", service.getList(cri));
	   //model.addAttribute("pageMaker", new PageDTO(cri, 123));
	   
	   int total = service.getTotal(cri);
	   
	   log.info("total: "+total);
	   
	   model.addAttribute("pageMaker", new PageDTO(cri, total));
	}			
	
	@PostMapping("/register")
	public String register(InqueryVO inquery, RedirectAttributes rttr) {
		
		log.info("register: " + inquery);
		
		service.register(inquery);
		
		rttr.addFlashAttribute("result", inquery.getOi_code());
		
		// 이전페이지를 호출하는 것을 띄울 필요가 있음. js로 만들던지..
		return "redirect:/inquery/list";
	} 
	
	   // 조회 처리
	   @GetMapping({"/get","/modify"})
	   public void get(@RequestParam("oi_code") String oi_code, @ModelAttribute("cri") Criteria cri, Model model) {
	      
	      log.info("/get or /modify");
	      model.addAttribute("inquery", service.get(oi_code));
	   }
}
