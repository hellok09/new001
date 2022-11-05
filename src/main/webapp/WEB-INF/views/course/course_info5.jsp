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
          <strong class="d-inline-block mb-2 text-primary">백엔드</strong>
          <h3 class="mb-0">Database</h3>
          <c:forEach items="${course_info}" var="list" begin="9" end="9">
          <div class="mb-1 text-muted">개강일 : <c:out value="${list.start_date}" /></div>
          </c:forEach>
          <p class="card-text mb-auto">데이터베이스는 일반적으로 컴퓨터 시스템에 전자적으로 저장되는 구조화된 정보 또는 데이터의 조직화된 모음입니다. 데이터베이스는 일반적으로 데이터베이스 관리 시스템(DBMS)에 의해 제어됩니다. 연결된 애플리케이션과 함께 데이터와 DBMS를 하나로 묶어 데이터베이스 시스템이라고 하며 단축하여 데이터베이스라고도 합니다.</p>
        </div>
        <div class="col-auto d-none d-lg-block">
        <img src="https://www.uhakbrain.com/wp-content/uploads/2017/02/%EC%BA%90%EB%82%98%EB%8B%A4-%EB%8C%80%ED%95%99-%EC%A7%84%ED%95%99%EC%9D%84-%EC%9C%84%ED%95%9C-%EA%B3%A0%EB%93%B1%ED%95%99%EA%B5%90-%EA%B3%BC%EB%AA%A9-%EC%84%A0%ED%83%9D.jpg"  width="340" height="250" height="225" width="100%">
        </div>
      </div>
    </div>
    
    <div class="col">
            <div class="card">
             <c:forEach items="${course_info}" var="list" begin="9" end="9">
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