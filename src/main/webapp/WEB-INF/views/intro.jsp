<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="include/header.jsp"%>
<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
	<!-- main 부분은 이쪽에 작성하세요  -->
	<br>
	<br>
	<br>
	<br>
	<details>
		<summary>학원연혁</summary>
 <article class="my-3" id="accordion">
      <div class="bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2">
        <h3>연혁</h3>
      </div>

      <div>
        <div class="bd-example">
        <div class="accordion" id="accordionExample">
          <div class="accordion-item">
            <h4 class="accordion-header" id="headingOne">
              <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                2020
              </button>
            </h4>
            <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
              <div class="accordion-body">
                <strong>1월</strong><br>
                이공계 전문기술 연수 사업 운영 : 카티아(Catia) 기계요소설계 -파트, 어셈블리, 서피스, 프로젝트 (과학기술정보통신부, 경기도경제과학진흥원)
                 <br><br>
                 <strong>3월</strong><br>
                2019년 내일배움카드 우수사례 수기공모전 우수상 수상 부천캠퍼스 유O영 수강생
                <br><br>
                 <strong>4월</strong><br>
                3D환경인테리어디자인 수강생 모형제작 전시회 04.13-07.28
                <br><br>
                 <strong>8월</strong><br>
                이공계(빅데이터 양성과정) 현장전문가 특강 & 수료식 개최
                <br><br>
                 <strong>11월</strong><br>
                지역산업 맞춤형 인력양성과정 - 직장인 대상 빅데이터, 텐서플로우, 구글애널리틱스, 웹크롤링 등
              </div>
            </div>
          </div>
          
          <div class="accordion-item">
            <h4 class="accordion-header" id="headingTwo">
              <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                2021
              </button>
            </h4>
            <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
              <div class="accordion-body">
                 <strong>1월</strong><br>
                UI/UX 웹앱 디자인&프론트엔드(React.js) 현대카드 본사, 뮤직카우, 인컴즈 등 웹 분야 취업 확정
                 <br><br>
                 <strong>2월</strong><br>
                고용노동부 지정우수훈련기관(5년인증) 달성
                <br><br>
                 <strong>3월</strong><br>
                서울시 뉴딜 일자리사업 UX/UI 웹&모바일 디자인 취업연계과정 운영
                <br><br>
                 <strong>9월</strong><br>
                2021 NCS기반 우수 직업 교육훈련 경진대회> 과정평가형자격제도 실내건축산업기사 은상 수상
                <br><br>
                 <strong>12월</strong><br>
                CAD 건축/인테리어 설계 입문 온라인 원격 교육 제작 및 서비스
              </div>
            </div>
          </div>
          
          <div class="accordion-item">
            <h4 class="accordion-header" id="headingThree">
              <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                2022
              </button>
            </h4>
            <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
              <div class="accordion-body">
                <strong>1월</strong><br>
                고용노동부 HRD-Net 전산세무회계 NCS 훈련기관 직종별 평균 취업률 86.4%
                 <br><br>
                 <strong>3월</strong><br>
                C언어, 자바(JAVA) 특강 개최
                <br><br>
                 <strong>4월</strong><br>
                예비고3 및 일반고 직업능력개발 위탁교육 훈련실시
                <br><br>
                 <strong>5월</strong><br>
                이공계 전문기술 연수 사업 운영 : 자바(Java)와 R을 활용한 빅데이터 (경기도경제과학진흥원)
                <br><br>
                 <strong>6월</strong><br>
                자바기반 전자정부표준프레임워크 기수별 프로젝트 포트폴리오 개최
              </div>
            </div>
          </div>
          
        </div>
        </div>
      </div>
    </article>
	</details>
	<br>
	<details>
		<summary>찾아오시는길</summary>
		<div class="container">
			<p>
				<img src="resources/img/naver_map2.PNG" height="70%" width="70%">
			</p>
		</div>
	</details>

</main>
<%@ include file="include/footer.jsp"%>
<script type="text/javascript">
<!— register page mapping —>
	$(document).ready(function(e) {
		$("#regBtn").on('click', function() {
			self.location = "/notice/register";
		});
	});
</script>