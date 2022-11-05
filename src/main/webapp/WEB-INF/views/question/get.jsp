<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- Bootstrap core CSS -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<!-- Custom styles for this template-->
<link href="/resources/css/sb-admin-2.min.css" rel="stylesheet">

<link href="/resources/css/styles.css" rel="stylesheet">

<!-- 패널 생성 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">



<!-- main 부분은 이쪽에 작성하세요  -->
<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">게시글 조회</h1>
		</div>
	</div>

	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-body">

					<div class="form-group">
						<label>강의</label> <input class="form-control" name="class_code"
							value='<c:out value="${question.class_code }" />'
							readonly="readonly">
					</div>

					<div class="form-group">
						<label>글번호</label> <input class="form-control" name="que_code"
							value='<c:out value="${question.que_code }" />'
							readonly="readonly">
					</div>

					<div class="form-group">
						<label>제목</label> <input class="form-control" name="title"
							value='<c:out value="${question.title }" />' readonly="readonly">
					</div>

					<div class="form-group">
						<label>내용</label>
						<textarea class="form-control" rows="3" name="content"
							readonly="readonly"><c:out
								value="${question.content }" /> </textarea>
					</div>

					<div class="form-group">
						<label>작성자</label> <input class="form-control" name="stu_id"
							value='<c:out value="${question.stu_id }" />' readonly="readonly">
					</div>

					<button data-oper="modify" class="btn btn-secondary"
						onclick="location.href= '/question/modify?que_code=<c:out value="${question.que_code }" />&pageNum=<c:out value="${cri.pageNum}"/>&amount=<c:out value="${cri.amount}"/>'">
						수정</button>
					<button data-oper="list" class="btn btn-outline-secondary"
						onclick="location.href='/question/list?pageNum=<c:out value="${cri.pageNum}"/>&amount=<c:out value="${cri.amount}"/>'">
						목록</button>

					<form id="operForm" action="/question/modify" method="get">
						<input type='hidden' id='que_code' name='que_code'
							value='<c:out value="${question.que_code}"/>'> <input
							type='hidden' name='pageNum'
							value='<c:out value="${cri.pageNum}"/>'> <input
							type='hidden' name='amount'
							value='<c:out value="${cri.amount}"/>'>
					</form>

				</div>
			</div>
		</div>

		<!-- 댓글 -->
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					<i class="fa fa-comments fa-fw"></i> Reply
					<button id='addReplyBtn' class='btn btn-primary btn-xs pull-right'>새
						댓글</button>
				</div>
				<!-- /.panel-heading -->

				<div class="panel-body">
					<ul class="chat">
						<!-- start reply -->
						<li class="left clearfix" data-qr_code='12'>
							<div>
								<div class="header">
									<strong class="primary-font"></strong> <small
										class="pull-right text-muted"></small>
								</div>
								<p></p>
							</div>
						</li>
						<!--  end reply -->
					</ul>
					<!--  ./end ul -->
				</div>
				<!-- ./ end row -->

				<!-- /.panel .chat-panel 추가 -->
				<div class="panel-footer"></div>
			</div>
		</div>


		<!-- 댓글 모달 -->
		<div class="modal" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">REPLY MODAL</h4>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label>Reply</label> <input class="form-control"
								name='qr_content' value='New Reply!!!!'>
						</div>
						<div class="form-group">
							<label>Replyer</label> <input class="form-control" name='replyer'
								value='replyer'>
						</div>
						<div class="form-group">
							<label>Reply Date</label> <input class="form-control"
								name='enter' value=''>
						</div>
					</div>
					<div class="modal-footer">
						<button id='modalModBtn' type="button" class="btn btn-warning">Modify</button>
						<button id='modalRemoveBtn' type="button" class="btn btn-danger">Remove</button>
						<button id='modalRegisterBtn' type="button"
							class="btn btn-primary">Register</button>

						<!--  <button id='modalCloseBtn' type="button" class="btn btn-default">Close</button> -->
					</div>
				</div>
			</div>
		</div>
		<!-- 댓글 모달 끝 -->

		<!-- 댓글 끝 -->


		<script type="text/javascript"
			src="/resources/js/questionReply.js?ver=1"></script>

		<script>
			$(document)
					.ready(
							function() {

								var que_codeValue = '<c:out value="${question.que_code}"/>';
								var replyUL = $(".chat");

								showList(1);

								function showList(page) {

									console.log("show list " + page);
									questionReplyService
											.getList(
													{
														que_code : que_codeValue,
														page : page || 1
													},
													function(replyCnt, list) {

														console
																.log("replyCnt : "
																		+ replyCnt);
														console.log("list : "
																+ list);
														console.log(list);

														if (page == -1) {
															pageNum = Math
																	.ceil(replyCnt / 10.0);
															showList(pageNum);
															return;
														}

														var str = "";

														if (list == null
																|| list.length == 0) {

															return;
														}

														for (var i = 0, len = list.length || 0; i < len; i++) {
															str += "<li class='left clearfix' data-qr_code='"+list[i].qr_code+"'>";
															str += "    <div><div class='header'><string class='primary-font'>"
																	+ list[i].replyer
																	+ "</strong>";
															str += "        <small class='pull-right text-muted'>"
																	+ questionReplyService
																			.displayTime(list[i].enter)
																	+ "</small></div>";
															str += "            <p>"
																	+ list[i].qr_content
																	+ "</p></div></li>";
														}
														replyUL.html(str);
														showReplyPage(replyCnt);

													});

								}

								var modal = $(".modal");
								var modalInputReply = modal
										.find("input[name='qr_content']");
								var modalInputReplyer = modal
										.find("input[name='replyer']");
								var modalInputReplyDate = modal
										.find("input[name='enter']");

								var modalModBtn = $("#modalModBtn");
								var modalRemoveBtn = $("#modalRemoveBtn");
								var modalRegisterBtn = $("#modalRegisterBtn");

								$("#addReplyBtn")
										.on(
												"click",
												function(e) {
													modal.find("input").val("");
													modalInputReplyDate
															.closest("div")
															.hide();
													modal
															.find(
																	"button[id!='modalCloseBtn']")
															.hide();

													modalRegisterBtn.show();
													$(".modal").modal("show");
												});

								modalRegisterBtn.on("click", function(e) {
									var qr_content = {
										qr_content : modalInputReply.val(),
										replyer : modalInputReplyer.val(),
										que_code : que_codeValue
									};
									questionReplyService.add(qr_content,
											function(result) {
												alert(result);

												modal.find("input").val("");
												modal.modal("hide");

												//showList(1);
												showList(-1);
											});
								});

								$(".chat")
										.on(
												"click",
												"li",
												function(e) {
													var qr_code = $(this).data(
															"qr_code");
													questionReplyService
															.get(
																	qr_code,
																	function(
																			qr_content) {
																		modalInputReply
																				.val(qr_content.qr_content);
																		modalInputReplyer
																				.val(qr_content.replyer);
																		modalInputReplyDate
																				.val(
																						questionReplyService
																								.displayTime(qr_content.enter))
																				.attr(
																						"readonly",
																						"readonly");
																		modal
																				.data(
																						"qr_code",
																						qr_content.qr_code);

																		modal
																				.find(
																						"button[id != 'modalCloseBtn']")
																				.hide();
																		modalModBtn
																				.show();
																		modalRemoveBtn
																				.show();

																		$(
																				".modal")
																				.modal(
																						"show");
																	});
												});

								modalModBtn.on("click", function(e) {
									var qr_content = {
										qr_code : modal.data("qr_code"),
										qr_content : modalInputReply.val()
									};
									questionReplyService.update(qr_content,
											function(result) {
												alert(result);
												modal.modal("hide");
												showList(pageNum);
											});
								});

								modalRemoveBtn.on("click", function(e) {
									var qr_code = modal.data("qr_code");
									questionReplyService.remove(qr_code,
											function(result) {
												alert(result);
												modal.modal("hide");
												showList(pageNum);
											});
								});

								var pageNum = 1;
								var replyPageFooter = $(".panel-footer");
								function showReplyPage(replyCnt) {
									var endNum = Math.ceil(pageNum / 10.0) * 10;
									var startNum = endNum - 9;

									var prev = startNum != 1;
									var next = false;

									if (endNum * 10 >= replyCnt) {
										endNum = Math.ceil(replyCnt / 10.0);
									}

									if (endNum * 10 < replyCnt) {
										next = true;
									}

									var str = "<ul class='pagination pull-right'>";
									if (prev) {
										str += "<li class='page-item'><a class='page-link' href='"
												+ (startNum - 1)
												+ "'>Previous</a></li>";
									}

									for (var i = startNum; i <= endNum; i++) {
										var active = pageNum == i ? "active"
												: "";
										str += "<li class='page-item "+active+" '><a class='page-link' href='"+i+"'>"
												+ i + "</a></li>";
									}

									if (next) {
										str += "<li class='page-item'><a class='page-link' href='"
												+ (endNum + 1)
												+ "'>Next</a></li>";
									}
									str += "</ul></div>";
									console.log(str);

									replyPageFooter.html(str);
								}

								replyPageFooter.on("click", "li a",
										function(e) {
											e.preventDefault();
											console.log("page click");
											var targetPageNum = $(this).attr(
													"href");
											console.log("targetPageNum : "
													+ targetPageNum);
											pageNum = targetPageNum;
											showList(pageNum);
										});

							});
		<%--
         console.log("==========================");
         console.log("JS TEST");
         
         var que_codeValue = '<c:out value="${question.que_code}"/>';
         
         
         // questionReplyService 테스트
         
         // List 테스트
         questionReplyService.getList({que_code:que_codeValue, page:1}, function(list) {
           for(var i=0, len=list.length || 0; i<len; i++) {
              console.log(list[i]);
           }
         });
         
         
         // 3번 댓글 삭제 테스트
         questionReplyService.remove(3, function(count) {
         console.log(count);
         if(count==="success") {
            alert("REMOVED");
         }
       }, function(err) {
         alert('ERROR....');
         
        });
        
        
         
         // 7번 댓글 수정 테스트
         questionReplyService.update({
            qr_code : 7,
            que_code : que_codeValue,
            qr_content : "수정된 댓글....."
         }, function(result) {
            alert("수정 완료......");
         });
         
         
         
         questionReplyService.get(7, function(data){
            console.log(data);
         });
         
         --%>
			
		</script>

	</div>

</main>

<%@ include file="../include/footer.jsp"%>