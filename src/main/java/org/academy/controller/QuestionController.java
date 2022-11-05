package org.academy.controller;

import org.academy.domain.Criteria;
import org.academy.domain.PageDTO;
import org.academy.domain.QuestionVO;
import org.academy.service.QuestionService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/question/*")
@AllArgsConstructor
public class QuestionController {

   private QuestionService service;
   
   /*
   // 전체 목록 처리
   @GetMapping("/list")
   public void list(Model model) {

	   log.info("list");
	   model.addAttribute("list", service.getList());
   }
   */
   
   @GetMapping("/list")
   public void list(Criteria cri, Model model) {
	   
	   log.info("list: "+cri);
	   model.addAttribute("list", service.getList(cri));
	   //model.addAttribute("pageMaker", new PageDTO(cri, 123));
	   
	   int total = service.getTotal(cri);
	   
	   log.info("total: "+total);
	   
	   model.addAttribute("pageMaker", new PageDTO(cri, total));
   }
   
  
   // 등록 처리
   @PostMapping("/register")
   public String register(QuestionVO question, RedirectAttributes rttr) {
      
      log.info("register: " +question);
      
      service.register(question);
      
      rttr.addFlashAttribute("result", question.getQue_code());
      
      return "redirect:/question/list";
   }
   
   
   // 임시 등록 입력 페이지 처리
   @GetMapping("/register")
   public void register() {
	   
   }
   
   
   // 조회 처리
   @GetMapping({"/get","/modify"})
   public void get(@RequestParam("que_code") String que_code, @ModelAttribute("cri") Criteria cri, Model model) {
      
      log.info("/get or /modify");
      model.addAttribute("question", service.get(que_code));
   }
   
   
   // 수정 처리
   @PostMapping("/modify")
   public String modify(QuestionVO question, @ModelAttribute("cri") Criteria cri,RedirectAttributes rttr) {
      log.info("modify: "+question);
      
      if (service.modify(question)) {
         rttr.addFlashAttribute("result", "success");
      }
      
      rttr.addAttribute("pageNum", cri.getPageNum());
      rttr.addAttribute("amount", cri.getAmount());
      
      return "redirect:/question/list";
   }
   
   
   // 삭제 처리
   @PostMapping("/remove")
   public String remove(@RequestParam("que_code") String que_code, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {
      log.info("remove..." + que_code);
      if (service.remove(que_code)) {
         rttr.addFlashAttribute("result", "success");
      }
      rttr.addAttribute("pageNum", cri.getPageNum());
      rttr.addAttribute("amount", cri.getAmount());
      
      return "redirect:/question/list";
   }
  
}
