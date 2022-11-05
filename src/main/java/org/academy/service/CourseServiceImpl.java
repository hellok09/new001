package org.academy.service;

import java.util.List;
import org.academy.domain.CourseAttachVO;
import org.academy.domain.CourseCriteria;
import org.academy.domain.CourseVO;
import org.academy.mapper.CourseMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CourseServiceImpl implements CourseService {
	@Autowired
	private CourseMapper mapper;

	@Override
	public void register(CourseVO course) {
		// TODO Auto-generated method stub

	}

	@Override
	public CourseVO get(Long class_code) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean modify(CourseVO course) {
		return false;
	}

	@Override
	public boolean deleteCourse(CourseVO course) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<CourseVO> getList() {
		// TODO Auto-generated method stub
		return mapper.getList();
	}

	@Override
	public int getTotalCount(CourseCriteria cri) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<CourseAttachVO> getCourseAttach(Long class_code) {
		// TODO Auto-generated method stub
		return null;
	}

}
