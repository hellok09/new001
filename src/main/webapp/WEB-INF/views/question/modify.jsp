<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    

<!-- main 부분은 이쪽에 작성하세요  -->
		<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
		    <div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">게시글 수정</h1>
				</div>
			</div>
		
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-body">
						
						<form role="form" action="/question/modify" method="post"> 
						
						<!-- 추가 -->
						<input type='hidden' name='pageNum' value='<c:out value="${cri.pageNum }"/>'>
						<input type='hidden' name='amount' value='<c:out value="${cri.amount }"/>'>
						
						<div class="form-group">
						<label>강의</label> 
						<input class="form-control" name="class_code" value='<c:out value="${question.class_code }" />'>
						</div>
						
						<div class="form-group">
						<label>글번호</label> 
						<input class="form-control" name="que_code" value='<c:out value="${question.que_code }" />' readonly="readonly">
						</div>
						
						<div class="form-group">
						<label>제목</label> 
						<input class="form-control" name="title" value='<c:out value="${question.title }" />'>
						</div>
						
						<div class="form-group">
						<label>내용</label> 
						<textarea class="form-control" rows="3" name="content"> <c:out value="${question.content }" /> </textarea>
						</div>
						
						<div class="form-group">
						<label>작성자</label> 
						<input class="form-control" name="stu_id" value='<c:out value="${question.stu_id }" />' readonly="readonly">
						</div>
						
						<div class="form-group">
						<label>작성일</label> 
						<input class="form-control" name="enter" value='<fmt:formatDate pattern="yyyy/MM/dd" value="${question.enter }" />' readonly="readonly">
						</div>
						
						<div class="form-group">
						<label>수정일</label> 
						<input class="form-control" name="updateDate" value='<fmt:formatDate pattern="yyyy/MM/dd" value="${question.updateDate }" />' readonly="readonly">
						</div>
						
						
						<button type="submit"
								data-oper="modify" 
								class="btn btn-secondary">수정</button>
						<button type="submit"
								data-oper="remove" 
								class="btn btn-danger">삭제</button>
						<button type="submit"
								data-oper="list" 
								class="btn btn-outline-secondary">목록</button>
						
						</form>	
						
					</div>
				</div>
			</div>
		</div>
		</main>

<%@ include file="../include/footer.jsp" %>

<script type="text/javascript">
	$(document).ready(function() {
		
		var formObj = $("form");
		
		$('button').on("click", function(e){
			
			e.preventDefault();
			
			var operation = $(this).data("oper");
			
			console.log(operation);
			
			if(operation === 'remove'){
				formObj.attr("action", "/question/remove");
			} else if(operation === 'list'){
				// move to list
				formObj.attr("action", "/question/list").attr("method","get");
				var pageNumTag = $("input[name='pageNum']").clone();
				var amountTag = $("input[name='amount']").clone();
				
				formObj.empty();
				formObj.append(pageNumTag);
				formObj.append(amountTag);
				
			}
			formObj.submit();
		});
		
	});
</script>