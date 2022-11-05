<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<%@ include file="../include/header.jsp" %>

<!-- main 부분은 이쪽에 작성하세요  -->
		<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
		    <div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">게시글 등록</h1>
				</div>
			</div>
		
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-body">
						<form role="form" action="/question/register" method="post">
							<div class="form-group">
								<label>강의</label>
								<input class="form-control" name="class_code">	
							</div>
							<div class="form-group">
								<label>제목</label>
								<input class="form-control" name="title">
							</div>
							<div class="form-group">
								<label>내용</label>
								<textarea class="form-control" rows="3" name="content"></textarea>
							</div>
							<div class="form-group" hidden>
								<label for="STU_ID">작성자</label>
								<input class="form-control" id="STU_ID" name="stu_id" value="${member.STU_ID}" readonly>
							</div>
<!--	파일 첨부						
							<div class="row">
								<div class="col-lg-12">
									<div class="panel panel-default">
									
										<div class="panel-heading">파일첨부</div>
										<div class="panel-body">
											<div class="form-group uploadDiv">
												<input type="file" name="uploadFile" multiple>
											</div>
										</div>
										
										<div class="uploadResult">
											<ul>
												
											</ul>
										</div>
									
									</div>
								</div>
							</div>
-->							<button data-oper="list" 
								class="btn btn-outline-secondary"
								onclick="location.href='/question/list'">목록</button>
							<button type="reset" class="btn btn-outline-secondary">초기화</button>
							<button type="submit" class="btn btn-secondary">등록</button>
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
         
         if(operation === 'list'){
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