<%@ page language="java" contentType="text/html; charset=UTF-8"    
pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="header.jsp" %>
<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
<!-- main 부분은 이쪽에 작성하세요  -->
      <h2>찜한강의</h2>
      <br>
    <div class="list-group mx-0">
    <label class="list-group-item d-flex gap-2">
      <input class="form-check-input flex-shrink-0" type="checkbox" value="" checked>
      <span>
        강의명 : First checkbox <br>
        강사이름 : 아무개 <br>
        수강료 : 100,000,000원
      </span>
    </label>
    <label class="list-group-item d-flex gap-2">
      <input class="form-check-input flex-shrink-0" type="checkbox" value="" checked>
      <span>
        강의명 : First checkbox <br>
        강사이름 : 아무개 <br>
        수강료 : 100,000,000원
      </span>
    </label>
    <label class="list-group-item d-flex gap-2">
      <input class="form-check-input flex-shrink-0" type="checkbox" value="" checked>
      <span>
        강의명 : First checkbox <br>
        강사이름 : 아무개 <br>
        수강료 : 100,000,000원
      </span>
    </label>
  </div>
  <br>
  
<div class="text-center">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">총 결제 금액</h5>
        <p class="card-text">300,000,000원</p>
        <a href="#" class="btn btn-secondary btn-center">결제하기</a>
      </div>
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
