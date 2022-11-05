<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="../include/header.jsp"%>
<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
	<!-- main 부분은 이쪽에 작성하세요  -->
	<div class="col">
      <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
        <div class="col p-4 d-flex flex-column position-static">
          <strong class="d-inline-block mb-2 text-primary">백엔드 과정</strong>
          <h3 class="mb-0">JAVA</h3>
          <c:forEach items="${course_info}" var="list" begin="11" end="11">
          <div class="mb-1 text-muted">개강일 : <c:out value="${list.start_date}" /></div>
          </c:forEach>
          <p class="card-text mb-auto">Java는 세계 1위의 프로그래밍 언어이자 개발 플랫폼입니다. Java는 비용 절감, 개발 기간 단축, 혁신 유도, 애플리케이션 서비스 개선 등의 이점을 선사하죠. 510억 개 이상의 Java Virtual Machine을 실행하는 전 세계 수백만 명의 개발자들을 고객으로 보유한 Java는 기업 및 개발자 모두가 선택한 개발 플랫폼입니다.</p>
        </div>
        <div class="col-auto d-none d-lg-block">
        <img src="https://www.uhakbrain.com/wp-content/uploads/2017/02/%EC%BA%90%EB%82%98%EB%8B%A4-%EB%8C%80%ED%95%99-%EC%A7%84%ED%95%99%EC%9D%84-%EC%9C%84%ED%95%9C-%EA%B3%A0%EB%93%B1%ED%95%99%EA%B5%90-%EA%B3%BC%EB%AA%A9-%EC%84%A0%ED%83%9D.jpg"  width="340" height="250" height="225" width="100%">
        </div>
      </div>
    </div>
    
    <div class="col">
            <div class="card">
             <c:forEach items="${course_info}" var="list" begin="11" end="11">
              <ul class="list-group list-group-flush">
                <li class="list-group-item"><div><span class = "block">과정명 : <c:out value="${list.course_name}" /></span></div></li>
                <li class="list-group-item"><div><span class = "block">강의명 : <c:out value="${list.class_name}" /></span></div></li>
                <li class="list-group-item"><div><span class = "block">강사명 : <c:out value="${list.teacher_name}" /></span></div></li>
                <li class="list-group-item"><div><SPAN class= "block" onclick="location.href='#'" style="cursor: pointer; color:blue;">강의정보download </SPAN></div></li>
                <li class="list-group-item"><div><span class = "block">개강일 : <c:out value="${list.start_date}" /></span> <span style="margin:10px" class = "block">종강일 : <c:out value="${list.end_date}" /></span> </div></li>
                <li class="list-group-item"><div><span class = "block">시작시각 : <c:out value="${list.start_time}" /></span> <span style="margin:10px" class = "block">종료시각 : <c:out value="${list.end_time}" /></span> </div></li>
                <li class="list-group-item"><div><span class = "block">강의소개 : <c:out value="${list.class_target}" /></span></div></li>
              </ul>
              </c:forEach>
            </div>
          </div>
          <br>
        <a href = "/inquery/register">
        <button class="btn btn-outline-primary btn-sm" type="button">온라인 상담</button>
        </a>
        <button class="btn btn-outline-primary btn-sm" type="button">수강신청 & 결제</button>
        <button class="btn btn-outline-primary btn-sm" type="button">찜하기</button>
    <!-- 기존 코드
	<div class = "all">
	<c:forEach items="${course_info}" var="list" begin="2" end="2">
			<div><span class = "block">과정명 : <c:out value="${list.course_name}" /></span></div>
			<div><span class = "block">강의명 : <c:out value="${list.class_name}" /></span></div>
			<div><span class = "block">강사명 : <c:out value="${list.teacher_name}" /></span></div>
			<br>
			<div><SPAN class= "block" onclick="location.href='#'" style="cursor: pointer; color:blue;">강의정보download </SPAN></div>
			<div><span class = "block">개강일 : <c:out value="${list.start_date}" /></span> <span style="margin:10px" class = "block">종강일 : <c:out value="${list.end_date}" /></span> </div>
			<div><span class = "block">시작시각 : <c:out value="${list.start_time}" /></span> <span style="margin:10px" class = "block">종료시각 : <c:out value="${list.end_time}" /></span> </div>
			<div><span class = "block">강의소개 : <c:out value="${list.class_target}" /></span></div>
	</c:forEach>
	</div>  -->

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