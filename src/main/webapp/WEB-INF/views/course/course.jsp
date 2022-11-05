<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="../include/header.jsp"%>
<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
	<!-- main 부분은 이쪽에 작성하세요  -->
	
	<div class="p-2 mb-1 bg-light rounded-3">
      <div class="container-fluid py-5">
        <h1 class="display-5 fw-bold">국비과정</h1>
        <p class="col-md-8 fs-4">고용노동부에서 주관하는 사업으로 구직자와 근로자 모두에게 일정 금액 국비를 지원하여 인적자원 개발을 독려하는 제도입니다.</p>
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
          <a href = "course_info">
            <img src="https://cdn.pixabay.com/photo/2019/05/14/17/07/web-development-4202909_1280.png" height="225" width="100%">
		 </a>
            <div class="card-body">
              <p class="card-text">
              <strong>(국비) 백엔드 과정</strong><br>
              가장 기본적인 프로그래밍 언어 자바(JAVA)부터 시작하는 웹/앱 개발자로의 성장- 스마트 웹/앱 전문 개발자로 IT시장에서 필요로 하는 인재로 성장할 수 있습니다.
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
          <a href = "course_info2">
            <img src="https://cdn.pixabay.com/photo/2019/07/16/18/18/frontend-4342425_1280.png" height="225" width="100%">
		 </a>
            <div class="card-body">
              <p class="card-text">
              <strong>(국비) 프론트엔드 과정</strong><br>
              자바스크립트 언어를 깊게 이해하고, 다양한 프로그래밍 개발 능력을 마스터하자~! 프론트엔드 전문가가 되고 싶은 분 일단 시작!
              </p>
              <div class="d-flex justify-content-between align-items-center">
              <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">찜하기</button>
                </div>
              </div>
            </div>
          </div>
         <div class="card shadow-sm">
          <a href = "course_info3">
            <img src="https://hg.ezenac.co.kr/upload/curriculum/master/2021/2021062411413047475731145.png" height="225" width="100%">
		 </a>
            <div class="card-body">
              <p class="card-text">
              <strong>(국비) 자격증 과정</strong><br>
              회계 이론과 실무 능력과 실무 전문가임을 인증하는 자격시험 과정입니다.
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