package org.academy.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import org.academy.domain.MemberVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class MemberMapperTests {

	@Autowired
	private MemberMapper membermapper;			//MemberMapper.java 인터페이스 의존성 주입
	
	//회원가입 쿼리 테스트 메서드
	 @Test
	    public void memberLogin() throws Exception{
	        
	        MemberVO member = new MemberVO();    // MemberVO 변수 선언 및 초기화
	        
	        /* 올바른 아이디 비번 입력경우 */
	        member.setSTU_ID("test");
	        member.setPWD("test");
	        
	        
	        /* 올바른 않은 아이디 비번 입력경우 */
	        //member.setMemberId("test1123");
	        //member.setMemberPw("test1321321");
	        
	        membermapper.memberLogin(member);
	        System.out.println("결과 값 : " + membermapper.memberLogin(member));
	        
	    }
	
	
	
}
