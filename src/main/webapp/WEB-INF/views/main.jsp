<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="UTF-8">
<head>
<!-- Bootstrap core CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<title>3팀아카데미</title>
</head>
<body>
	<!-- 상단 시작. -->
	<div class="container">

		<div class="row">
			<div class="col-3 align-items-center">교육문의 & 시험문의 : 02-666-1234
			</div>

			<div class="col-6 text-center">
				<button type="button" class="btn btn-outline-white btn-sm">부천점</button>
				<button type="button" class="btn btn-outline-white btn-sm">화곡점</button>
			</div>

			<div class="col-3 text-end">
				<!-- 로그아웃 상태일때 출력 -->
				<c:if test="${member == null }">
					<button type="button" class="btn btn-outline-primary"
						onclick="location.href='/member/join'" style="cursor: pointer;">회원가입</button>
					<button type="button" class="btn btn-outline-dark"
						onclick="location.href='/member/login'" style="cursor: pointer;">로그인</button>
				</c:if>
				<!-- 로그인했을때 -->
				<c:if test="${ member != null }">
					<div class="login_success_area">
						<span>회원 : ${member.STU_ID} 님 환영합니다.</span><br> 
						<!-- 기존코드
						<span class="member"><a href="/mypage/mypage">마이페이지</a></span> 
						<span class="member"><a href="/member/logout.do">로그아웃</a></span> -->
						<button type="button" class="btn btn-outline-primary"
						onclick="location.href='/mypage/mypage'" style="cursor: pointer;">마이페이지</button>
						<button type="button" class="btn btn-outline-primary"
						onclick="location.href='/member/logout.do'" style="cursor: pointer;">로그아웃</button>
					</div>
				</c:if>
			</div>
		</div>

		<div class="container">

			<div class="row justify-content-md-center">
				<div class="col-md-auto">
					<h1 onclick="location.href='/main';" style="cursor:pointer;">3팀 academy</h1>
				</div>
			</div>
			<br>

		</div>
		<!-- 상단 네비게이션 bar 부분입니다. -->

		<ul class="nav nav-pills nav-fill">
			<li class="nav-item"><a class="nav-link" href="/intro">
					<div class="text-black text-opacity-50">
						<p class="fs-5 fw-bolder">학원소개</p>
					</div>
			</a></li>

			<li class="nav-item"><a class="nav-link" href="/course/course">
					<div class="text-black text-opacity-50">
						<p class="fs-5 fw-bolder">과정소개</p>
					</div>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="/inquery/register">
					<div class="text-black text-opacity-50">
						<p class="fs-5 fw-bolder">온라인상담</p>
					</div>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="/notice/list">
					<div class="text-black text-opacity-50">
						<p class="fs-5 fw-bolder">커뮤니티</p>
					</div>
			</a></li>
		</ul>
	</div>
	
	<div class="p-4 p-md-5 mb-4 text-white rounded bg-dark">
    <div class="col-md-6 px-0">
      <h1 class="display-4 fst-italic">과거부터 꾸준한 인기 자바(JAVA),웹/앱 개발자 되는 필수 언어! 자바 웹&앱 프로그래밍 어떤 수업일까?</h1>
      <p class="lead my-3">가장 기본적인 프로그래밍 언어 자바(JAVA)부터 시작하는 웹/앱개발자로 성장-스마트 웹/앱 전문 개발자로 IT 시장에서 필요로 하는 인재로 성장할 수 있다.</p>
      <p class="lead mb-0"><a href="#" class="text-white fw-bold">상세보기</a></p>
    </div>
  </div>

  <div class="row mb-2">
    <div class="col-md-6">
      <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
        <div class="col p-4 d-flex flex-column position-static">
          <strong class="d-inline-block mb-2 text-primary">프론트엔드 과정</strong>
          <h3 class="mb-0">웹 프론트엔드 퍼블리셔</h3>
          <div class="mb-1 text-muted">22-9 개강</div>
          <p class="card-text mb-auto">전 세계 개발자들이 주목하는 React. js 라이브러리를 이용해 클라이언트단의 모든 것을 경험합니다.</p>
          <a href="#" class="stretched-link">상세보기</a>
        </div>

      </div>
    </div>
    <div class="col-md-6">
      <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
        <div class="col p-4 d-flex flex-column position-static">
          <strong class="d-inline-block mb-2 text-success">자격증 과정</strong>
          <h3 class="mb-0">재경관리자 자격증</h3>
          <div class="mb-1 text-muted">22-9 개강</div>
          <p class="mb-auto">회계, 세무, 원가, 경영관리 등 재경 분야의 실무전문가임을 인증하는 실무과정 재경관리사란?</p>
          <a href="#" class="stretched-link">더보기</a>
        </div>
      </div>
    </div>
  </div>
  <div class="container">
  <footer class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
    <div class="col-md-4 d-flex align-items-center">
      <a href="/" class="mb-3 me-2 mb-md-0 text-muted text-decoration-none lh-1">
        <svg class="bi" width="30" height="24"><use xlink:href="#bootstrap"/></svg>
      </a>
      <span class="mb-3 mb-md-0 text-muted">&copy; 학원명 : 3팀학원
      <br>학원주소 : 서울특별시 강서구 화곡동 211-12 
      <br>전화번호 : 02-666-1234 
      <br>대표자 : 강민철 
      <br>사업자 등록번호 : 211-12 
      <br>대표이메일 : vlnrhs22@naver.com 
      </span>
    </div>

  </footer>
</div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
				 <script
         src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</body>
</html>