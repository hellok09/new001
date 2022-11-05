<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="../include/header.jsp"%>
<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
	<!-- main 부분은 이쪽에 작성하세요  -->
	
	<div class="p-2 mb-1 bg-light rounded-3">
      <div class="container-fluid py-5">
        <h1 class="display-5 fw-bold">백엔드 과정</h1>
        <p class="col-md-8 fs-4">과거부터 꾸준한 인기 자바(JAVA),웹/앱 개발자 되는 필수 언어! 자바 웹&앱 프로그래밍 어떤 수업일까?</p>
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
          <a href = "course_info3">
            <img src="https://miro.medium.com/max/1400/1*J76LX5mvMD-bP1qCj8PQpA.png" height="225" width="100%">
		 </a>
            <div class="card-body">
              <p class="card-text">
              <strong>(백엔드) JAVA</strong><br>
              Java는 세계 1위의 프로그래밍 언어이자 개발 플랫폼입니다. Java는 비용 절감, 개발 기간 단축, 혁신 유도, 애플리케이션 서비스 개선 등의 이점을 선사하죠. 510억 개 이상의 Java Virtual Machine을 실행하는 전 세계 수백만 명의 개발자들을 고객으로 보유한 Java는 기업 및 개발자 모두가 선택한 개발 플랫폼입니다.
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
          <a href = "course_info4">
            <img src="https://images.velog.io/images/co_der/post/c3651e27-0250-4298-966f-2262c4909561/OG-Spring.png" height="225" width="100%">
		 </a>
            <div class="card-body">
              <p class="card-text">
              <strong>(백엔드) Spring FrameWork</strong><br>
              자바 플랫폼을 위한 오픈소스 애플리케이션 프레임워크로서 엔터프라이즈급 애플리케이션을 개발하기 위한 모든 기능을 종합적으로 제공하는 경량화된 솔루션입니다. 
              </p>
              <div class="d-flex justify-content-between align-items-center">
              <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">찜하기</button>
                </div>
              </div>
            </div>
          </div>
         <div class="card shadow-sm">
          <a href = "course_info5">
            <img src="https://nesoy.github.io/assets/logo/database.jpg" height="225" width="100%">
		 </a>
            <div class="card-body">
              <p class="card-text">
              <strong>(백엔드) Database</strong><br>
              데이터베이스는 일반적으로 컴퓨터 시스템에 전자적으로 저장되는 구조화된 정보 또는 데이터의 조직화된 모음입니다. 데이터베이스는 일반적으로 데이터베이스 관리 시스템(DBMS)에 의해 제어됩니다. 연결된 애플리케이션과 함께 데이터와 DBMS를 하나로 묶어 데이터베이스 시스템이라고 하며 단축하여 데이터베이스라고도 합니다.
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