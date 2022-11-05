<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../include/header.jsp" %>
<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
<div class="container">
    <div class="input-form-backgroud row">
      <div class="input-form col-md-12 mx-auto">
        <h4 class="mb-3">온라인 상담</h4>
        <div class="row">
            <div class="col-md-8 mb-3">
              <label for="root">지점 선택</label>
              <select class="custom-select d-block w-50" id="root">
                <option value=""></option>
                <option>부천</option>
                <option>화곡</option>
              </select>
              <div class="invalid-feedback">
                가입 경로를 선택해주세요.
              </div>
            </div>
          </div>
        <div class="row">
            <div class="col-3">
              <label for="root">문의 과정 선택</label>
              <select class="custom-select d-block w-100" id="root">
                <option value=""></option>
                <option>과정1</option>
                <option>과정2</option>
                <option>과정3</option>
              </select>
              <div class="invalid-feedback">
                가입 경로를 선택해주세요.
              </div>
            </div>
            <div class="col-8">
              <label for="root">강의 선택</label>
              <select class="custom-select d-block w-100" id="root">
                <option value=""></option>
                <option>강의1</option>
                <option>강의2</option>
                <option>강의3</option>
              </select>
              <div class="invalid-feedback">
                가입 경로를 선택해주세요.
              </div>
            </div>
          </div>
        
          <div class="row">
            <div class="col-md-6 mb-3">
              <label for="name">이름</label>
              <input type="text" class="form-control" id="name" placeholder="" value="" required>
              <div class="invalid-feedback">
                이름을 입력해주세요.
              </div>
            </div>
          </div>

          <div class="mb-3">
            <label for="email">이메일</label>
            <input type="email" class="form-control" id="email" placeholder="you@example.com" required>
            <div class="invalid-feedback">
              이메일을 입력해주세요.
            </div>
          </div>
		
		<div class="row g-2">
		
		<div class="row">
		    <div class="col-3">
		      <label for="floatingSelectGrid">연락수단선택</label>
		      <select class="form-select" id="floatingSelectGrid" aria-label="Floating label select example">
		        <option value="1">이메일</option>
		        <option value="2">핸드폰번호</option>
		      </select>
		    </div>
		    <div class="col-8">
		   		<label for="floatingTextarea">연락수단 입력란</label>
		  		<textarea class="form-control" placeholder="연락수단을 입력해 주세요" id="floatingTextarea"></textarea>
			</div>
		</div>
		
 
		</div>
          
          <label for="root">상담 내용 선택</label>
              <select class="custom-select d-block w-100" id="root">
                <option value=""></option>
                <option>내용1</option>
                <option>내용2</option>
                <option>내용3</option>
              </select>
              <div class="invalid-feedback">
                가입 경로를 선택해주세요.
              </div>
            </div>
		<br>
		
		<div class="mb-3">
		  <label for="exampleFormControlTextarea1" class="form-label">상담내용</label>
		  <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
		</div>
		
          <hr class="mb-4">
          <div class="custom-control custom-checkbox">
            <input type="checkbox" class="custom-control-input" id="aggrement" required>
            <label class="custom-control-label" for="aggrement">개인정보 수집 및 이용에 동의합니다.</label>
          </div>
          <div class="mb-4"></div>
          <button class="btn btn-primary btn-lg btn-block" type="submit">상담 신청</button>
        
      </div>
    </div>
  </div>
</main>
<%@ include file="../include/footer.jsp" %>