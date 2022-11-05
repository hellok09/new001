<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="../include/header.jsp"%>
<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
	<!-- main 부분은 이쪽에 작성하세요  -->
	
	<div class="p-2 mb-1 bg-light rounded-3">
      <div class="container-fluid py-5">
        <h1 class="display-5 fw-bold">자격증과정</h1>
        <p class="col-md-8 fs-4"> 다양한 자격증 과정을 통한 직무기술 level up!</p>
        <a href = "/inquery/register">
        <button class="btn btn-outline-primary btn-sm" type="button">온라인 상담</button>
        </a>
		<!-- 찜하기 기능 구현은 우째  -->
        <a href = "course_info">
        <button class="btn btn-outline-primary btn-sm" type="button">찜하기</button>
        </a>
      </div>
    </div>
	
	<div class="album py-5 ">
    <div class="container">

      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
        <div class="col">
          <div class="card shadow-sm">
          <a href = "course_info8">
            <img src="https://cdn.pixabay.com/photo/2016/11/23/14/37/blur-1853262_1280.jpg" height="225" width="100%">
		 </a>
            <div class="card-body">
              <p class="card-text">
              <strong>(자격증) 컴퓨터 활용능력</strong><br>
              현장실무의 응용력을 키워 자격증을 한 번에 취득! 스프레드시트를 실무[엑셀]와 데이터베이스 실무[엑세스]를 이용한 대한상공회의소에서 시행하는 국가기술자격 취득[컴퓨터활용능력 1급] 교육과정입니다.
              </p>
              <div class="d-flex justify-content-between align-items-center">
              <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">찜하기</button>
                </div>
              </div>
            </div>
          </div>
        </div>
          <div class="card shadow-sm">
          <a href = "course_info9">
            <img src="https://cdn.pixabay.com/photo/2022/07/13/21/57/editing-7320125_1280.jpg" height="225" width="100%">
		 </a>
            <div class="card-body">
              <p class="card-text">
              <strong>(자격증) GTQ</strong><br>
              포토샵과 마찬가지로 디자이너로써 자주 사용하는 어도비 일러스트 프로그램. 이미지에 사용되는 아이콘, 캐릭터 등에 특화된 2D 어도비 프로그램으로 표현 기법에 대해 배우고 GTQi 자격증을 취득합니다.
              </p>
              <div class="d-flex justify-content-between align-items-center">
              <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">찜하기</button>
                </div>
              </div>
            </div>
          </div>
         <div class="card shadow-sm">
          <a href = "course_info10">
            <img src="https://cdn.pixabay.com/photo/2017/03/23/09/34/artificial-intelligence-2167835_1280.jpg" height="225" width="100%">
		 </a>
            <div class="card-body">
              <p class="card-text">
              <strong>(자격증) 정보처리기사</strong><br>
              소프트웨어 개발 자격증으로 계획,수립,분석,설계,구현,시험,운영,유지보수 등의 업무를 수행할 수 있는 능력을 검증하는 시험 준비 교육입니다. 정보처리 기사 자격증 취득은 어떤 교육일까요?
              </p>
              <div class="d-flex justify-content-between align-items-center">
              <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">찜하기</button>
                </div>
              </div>
            </div>
          </div>
      </div>
    </div>
  </div>

</main>
<%@ include file="../include/footer.jsp"%>
<script type="text/javascript">
<!— register page mapping —>
	$(document).ready(function(e) {
		$("#regBtn").on('click', function() {
			self.location = "/notice/register";
		});
	});
</script>