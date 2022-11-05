package org.academy.mapper;

import org.academy.service.CourseService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.LoggerFactory;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class CourseMapperTests {

	private static final Logger log = LoggerFactory.getLogger(CourseMapperTests.class);
	
	@Autowired
	private CourseService service;

	@Test
	public void testGetList() {

		service.getList().forEach(board -> log.info("" + board));

	}

}
