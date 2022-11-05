<%@ page language="java" contentType="text/html; charset=UTF-8"    
pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="header.jsp" %>
<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
<!-- main 부분은 이쪽에 작성하세요  -->
      <h2>내강의</h2>
	  <div class="row">
	  <div class="col-lg-6 col-sm-12 text-lg-start text-center">
      </div>
      </div>
      <div class="table-responsive">
                <table class="table table-striped table-sm">
          <thead>
            <tr>
              <th scope="col">지점</th>
              <th scope="col">과정</th>
              <th scope="col">강의</th>
              <th scope="col">강사</th>
              <th scope="col">개강</th>
              <th scope="col">종강</th>
			  <th scope="col">강의 영상</th>
          </thead>
          <tbody>
          <thead>
            <tr>
              <th scope="col">화곡</th>
              <th scope="col">백엔드</th>
              <th scope="col">자바</th>
              <th scope="col">자바강사</th>
              <th scope="col">2022-02-14</th>
              <th scope="col">2022-07-27</th>
              <th scope="col">
              <a href="/mypage/video_list">동영상 페이지 이동</a></th>
            </tr>
          </thead>
          <!-- 데이터베이스에서 받아온값 넣기 
          <c:forEach var="question" items="${list }">
              <tr>
                 <td>
                    <c:out value="${question.que_code }" />
                 </td>
                 <td>
                 	<a class='move' href='<c:out value="${question.que_code}"/>'>
       	       		  <c:out value="${question.title }"/>
       	       		</a>
                 </td>
                 <td>
                    <c:out value="${question.stu_id }" />
                 </td>
                 <td>
                    <c:out value="${question.views }" />
                 </td>
                 <td>
                    <fmt:formatDate value="${question.updateDate }" pattern="yyyy-MM-dd"/>
                 </td>
                 <td>
                    <fmt:formatDate value="${question.updateDate }" pattern="yyyy-MM-dd"/>
                 </td>
                 <td>
                    <fmt:formatDate value="${question.updateDate }" pattern="yyyy-MM-dd"/>
                 </td>
                 <td>
                 	<a href="/mypage/video_list"></a>
                   	동영상 페이지 이동
                 </td>
              </tr>
         </c:forEach>-->
        </table>
        
        <!-- 페이지 버튼 -->
        <nav aria-label="Page navigation example">
           <div class='pull-right'>
              <ul class="pagination">
              
                    <c:if test="${pageMaker.prev }">
                       <li class="page-item">
                     <a class="page-link" href="${pageMaker.startPage -1 }" aria-label="Previous">
                       <span aria-hidden="true">&laquo;</span>
                     </a>
                   </li>
                    </c:if>
                    
                    <c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
                       <li class="page-item" ${pageMaker.cri.pageNum == num ? "active":"" }><a class="page-link" href="${num }">${num }</a> </li>
                    </c:forEach>
                    
                    <c:if test="${pageMaker.next }">
                       <li class="page-item">
                     <a class="page-link" href="${pageMaker.endPage +1 }" aria-label="Next">
                       <span aria-hidden="true">&raquo;</span>
                     </a>
                   </li>
                    </c:if>
                 </ul>
                 
                 <form id='actionForm' action="/mypage/mypage" method='get'>
            		<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum }'>
            		<input type='hidden' name='amount' value='${pageMaker.cri.amount }'>
           		 </form>
                           		 
           </div>
        </nav>
        <!-- 페이지 버튼 끝, 아래 javascript도 추가해야함  -->
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
