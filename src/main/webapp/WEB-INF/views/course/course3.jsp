<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="../include/header.jsp"%>
<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
	<!-- main 부분은 이쪽에 작성하세요  -->
	
	<div class="p-2 mb-1 bg-light rounded-3">
      <div class="container-fluid py-5">
        <h1 class="display-5 fw-bold">프론트엔드과정</h1>
        <p class="col-md-8 fs-4">웹퍼블리셔 기초부터 프론트엔드 트렌디한 기술까지-웹 프론트엔드 </p>
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
          <a href = "course_info6">
            <img src="https://play-lh.googleusercontent.com/85WnuKkqDY4gf6tndeL4_Ng5vgRk7PTfmpI4vHMIosyq6XQ7ZGDXNtYG2s0b09kJMw" height="225" width="100%">
		 </a>
            <div class="card-body">
              <p class="card-text">
              <strong>(프론트엔드) HTML</strong><br>
              HTML이란? HTML (Hypertext Markup Language,하이퍼텍스트 마크업 언어)는 프로그래밍 언어는 아니고, 우리가 보는 웹페이지가 어떻게 구조화되어 있는지 브라우저로 하여금 알 수 있도록 하는 마크업 언어입니다.
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
          <a href = "course_info7">
            <img src="https://images.velog.io/images/0jiiino/post/8c947a9e-3efd-47ed-be88-6a08107b6ea2/919826.png" height="225" width="100%">
		 </a>
            <div class="card-body">
              <p class="card-text">
              <strong>(프론트엔드) CSS</strong><br>
              Cascading Style Sheets(CSS)는 HTML이나 XML(XML의 방언인 SVG, XHTML 포함)로 작성된 문서의 표시 방법을 기술하기 위한 스타일 시트 언어입니다.
              </p>
              <div class="d-flex justify-content-between align-items-center">
              <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">찜하기</button>
                </div>
              </div>
            </div>
          </div>
         <div class="card shadow-sm">
          <a href = "course_info8">
            <img src="https://velog.velcdn.com/images%2Fajt1097%2Fpost%2F870bfbf7-2d22-49ea-9ae6-10033ae353c6%2FReact.jpeg" height="225" width="100%">
		 </a>
            <div class="card-body">
              <p class="card-text">
              <strong>(프론트엔드) React</strong><br>
              React는 상호작용이 많은 UI를 만들 때 생기는 어려움을 줄여줍니다. 애플리케이션의 각 상태에 대한 간단한 뷰만 설계하세요. 그럼 React는 데이터가 변경됨에 따라 적절한 컴포넌트만 효율적으로 갱신하고 렌더링합니다.
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