<%@ page language="java" contentType="text/html; charset=UTF-8"    
pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="UTF-8">
<head>
<!-- Bootstrap core CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<title>header</title>
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
							onclick="location.href='/member/logout.do'"
							style="cursor: pointer;">로그아웃</button>
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
			<!-- 학원 소개 section 
	  <div class="row justify-content-md-center p-2 text-dark">
	    <div class="col-md-auto">
	    실력과 인품을 겸비한 인재양성 교육기관 - Armoga
	    </div>
	  </div>-->

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
			<li class="nav-item"><a class="nav-link"
				href="/inquery/register">
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

	<!-- 상단 끝. -->


	<!-- 왼쪽 메뉴바와 메인 -->
	<div class="container">
		<!-- 전체 감싸는 부분 -->
		<div class="row">
			<!-- 네비바 부분 -->
			<div class="col-2">
				<aside
					class="bd-aside sticky-xl-top text-muted align-self-start mb-3 mb-xl-5 px-2">
					<h3 class="h4 pt-4 pb-3 mb-4 border-bottom text-center">메뉴</h3>
					<nav class="large" id="toc">
						<ul class="list-unstyled">
							<li class="my-2">
								<button class="btn d-inline-flex align-items-center collapsed"
									onclick="location.href='mypage'" style="cursor: pointer;">내강의</button>
							</li>
							<li class="my-2">
								<button class="btn d-inline-flex align-items-center collapsed"
									onclick="location.href='mypage_heart'" style="cursor: pointer;">찜한강의</button>
							</li>
							<li class="my-2">
								<button class="btn d-inline-flex align-items-center collapsed"
									onclick="location.href='memberUpdateView'"
									style="cursor: pointer;">개인정보 변경</button>
							</li>
							<li class="my-2">
								<button class="btn d-inline-flex align-items-center collapsed"
									data-bs-toggle="collapse" aria-expanded="false"
									data-bs-target="#coms-collapse" aria-controls="coms-collapse">온라인상담</button>
								<ul class="list-unstyled ps-3 collapse" id="coms-collapse">
									<li class="nav-item"><a class="nav-link"
										href="/inquery/list"> <span data-feather="file"></span>
											내상담문의
									</a></li>
								</ul>
							</li>
						</ul>
					</nav>
				</aside>

			</div>

<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
<!-- main 부분은 이쪽에 작성하세요  -->
      <h2> 온라인 상담 조회 </h2>
      <div class="table-responsive">
        <table class="table table-striped table-sm">
          <thead>
            <tr>
              <th scope="col">번호</th>
              <th scope="col">과정명</th>
              <th scope="col">제목</th>
              <th scope="col">작성자</th>
              <th scope="col">작성일</th>
            </tr>
          </thead>
          <!-- 데이터베이스에서 받아온값 넣기 -->
            <c:forEach var="inquery" items="${list }">
           	<tr>
				<td><c:out value="${inquery.oi_code }"></c:out></td>
				<td><c:out value="${inquery.course_name}"></c:out></td>
				<td><a class='move' href='<c:out value="${inquery.oi_code}"/>'>
       	       		  <c:out value="${inquery.title }"/>
       	       		</a></td>
				<td><c:out value="${member.STU_ID }"></c:out></td>
				<td><fmt:formatDate pattern="yyyy-MM-dd" value="${inquery.enter}" /></td>
           	</tr>
           	</c:forEach>
           	<!-- 							<div class="form-group" hidden>
								<label for="STU_ID">작성자</label>
								<input class="form-control" id="STU_ID" name="stu_id" value="${member.STU_ID}" readonly>
							</div> -->   
        </table>
      </div>
      </main>
<!-- main end-->

  </div>
</div>

<div class="container">
  <footer class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
    <div class="col-md-4 d-flex align-items-center">
      <a href="/" class="mb-3 me-2 mb-md-0 text-muted text-decoration-none lh-1">
        <svg class="bi" width="30" height="24"><use xlink:href="#bootstrap"/></svg>
      </a>
      <span class="mb-3 mb-md-0 text-muted">&copy; 학원명 : 아무개 학원 
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

