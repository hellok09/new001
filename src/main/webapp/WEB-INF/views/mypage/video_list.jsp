<%@ page language="java" contentType="text/html; charset=UTF-8"    
pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="header.jsp" %>
<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
<!-- main 부분은 이쪽에 작성하세요  -->
      <h2>동영상 강의 목록</h2>
      <br>
<div class="card">
  <div class="card-header">
    <strong>강의제목 : 자바</strong>
  </div>
</div>

<div class="card">
  <div class="card-header">
    Java는 세계 1위의 프로그래밍 언어이자 개발 플랫폼입니다. Java는 비용 절감, 개발 기간 단축, 혁신 유도, 애플리케이션 서비스 개선 등의 이점을 선사하죠. 510억 개 이상의 Java Virtual Machine을 실행하는 전 세계 수백만 명의 개발자들을 고객으로 보유한 Java는 기업 및 개발자 모두가 선택한 개발 플랫폼입니다.
  </div>
</div>

<div class="card">
  <div class="card-header">
    챕터1
  </div>
  <div class="card-body">
    <h5 class="card-title">java - 소개와 수업 소개</h5>
    <a href="https://www.youtube.com/watch?v=qR90tdW0Hbo&list=PLuHgQVnccGMCeAy-2-llhw3nWoQKUvQck&index=2" 
    class="btn btn-primary">동영상 보기</a>
  </div>
</div>

<div class="card">
  <div class="card-header">
    챕터2
  </div>
  <div class="card-body">
    <h5 class="card-title">java - 설치</h5>
    <a href="https://www.youtube.com/watch?v=kyFrm3zKryE&list=PLuHgQVnccGMCeAy-2-llhw3nWoQKUvQck&index=3" 
    class="btn btn-primary">동영상 보기</a>
  </div>
</div>

<div class="card">
  <div class="card-header">
    챕터3
  </div>
  <div class="card-body">
    <h5 class="card-title">java - 설치와 실행</h5>
    <a href="https://www.youtube.com/watch?v=u7MKu4uDsJs&list=PLuHgQVnccGMCeAy-2-llhw3nWoQKUvQck&index=6" 
    class="btn btn-primary">동영상 보기</a>
  </div>
</div>
    </main>
<%@ include file="footer.jsp" %>

<script type="text/javascript">

$(document).ready(function(){
	
	$(document).ready(function(e) {
		$("#regBtn").on("click", function() {
			self.location = "/question/register";
		});
	});
	
	
	var actionForm = $("#actionForm");
	
	$(".page-item a").on("click", function(e) {
		e.preventDefault();
		console.log('click');
		actionForm.find("input[name='pageNum']").val($(this).attr("href"));
		actionForm.submit();
	});
	
	
	$(".move").on("click", function(e) {
		e.preventDefault();
		actionForm.append("<input type='hidden' name='que_code' value='"+$(this).attr("href")+"'>");
		actionForm.attr("action", "/question/get");
		actionForm.submit();
	});

});
</script>
