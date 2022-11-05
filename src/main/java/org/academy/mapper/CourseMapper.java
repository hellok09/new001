package org.academy.mapper;

import java.util.List;

import org.academy.domain.CourseVO;

import org.academy.domain.CourseCriteria;

public interface CourseMapper {

	public List<CourseVO> getList(); //	목록, CourseMapper.xml의 select태그와 일치해야함
	
	public List<CourseVO> getPaging(CourseCriteria cri);
	
	public void insertCourse(CourseVO course);	
	
	public CourseVO read(Long class_code);
	
	public int delete(CourseVO course);
	
	public int modifyCourse(CourseVO course);
	
	public int getTotal(CourseCriteria cri);
	
	
}
