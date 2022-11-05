package org.academy.controller;


import java.util.List;

import org.academy.domain.Criteria;
import org.academy.domain.QuestionReplyPageDTO;
import org.academy.domain.QuestionReplyVO;
import org.academy.service.QuestionReplyService;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RequestMapping("/replies/")
@RestController
@Log4j
@AllArgsConstructor
public class QuestionReplyController {

	private QuestionReplyService service;
	
	// 등록
	@PostMapping (value = "/new", consumes="application/json", produces= {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> create(@RequestBody QuestionReplyVO vo) {
		
		log.info("QuestionReplyVO: " + vo);
		int insertCount = service.register(vo);
		
		log.info("Reply INSERT COUNT: " + insertCount);
		
		return insertCount==1 ? new ResponseEntity<> ("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	
	// 특정 게시물의 댓글 조회
	@GetMapping(value="/pages/{que_code}/{page}", produces= {
			MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE
	})
	public ResponseEntity<QuestionReplyPageDTO> getList(
			@PathVariable("page") int page,
			@PathVariable("que_code") String que_code
			) {
		log.info("getList...............");
		Criteria cri = new Criteria(page, 10);
		log.info("get Reply List Que_code: " + que_code);
		log.info("cri: " +cri);
		return new ResponseEntity<>(service.getListPage(cri, que_code), HttpStatus.OK);
	}
	
	// 조회, 삭제
	@GetMapping(value="/{qr_code}", 
				produces= { MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE })
	public ResponseEntity<QuestionReplyVO> get(@PathVariable("qr_code") String qr_code ) 
	{
			
		log.info("get : " + qr_code);
		return new ResponseEntity<>(service.get(qr_code), HttpStatus.OK);
	}
	
	
	@DeleteMapping(value="/{qr_code}", 
					produces = { MediaType.TEXT_PLAIN_VALUE }) 
	public ResponseEntity<String> remove(@PathVariable("qr_code") String qr_code){
		log.info("remove : " + qr_code);
		return service.remove(qr_code) == 1
				? new ResponseEntity<>("success", HttpStatus.OK)
						: new ResponseEntity<> (HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	// 수정
	@RequestMapping(method= {RequestMethod.PUT, RequestMethod.PATCH},
			value="/{qr_code}",
			consumes="application/json",
			produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> modify(
			@RequestBody QuestionReplyVO vo,
			@PathVariable("qr_code") String qr_code) {
		vo.setQr_code(qr_code);
		log.info("qr_code : " + qr_code);
		log.info("modify : " + vo);
		
		return service.modify(vo) == 1
				? new ResponseEntity<> ("success", HttpStatus.OK)
						: new ResponseEntity<> (HttpStatus.INTERNAL_SERVER_ERROR);
	}
}
