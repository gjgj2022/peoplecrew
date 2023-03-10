<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>
    PeopleCrew
  </title>
  <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
  <!-- Nucleo Icons -->
  <link href="../resources/assets/css/nucleo-icons.css" rel="stylesheet" />
  <link href="../resources/assets/css/nucleo-svg.css" rel="stylesheet" />
  <!-- Font Awesome Icons -->
  <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
  <link href="../resources/assets/css/nucleo-svg.css" rel="stylesheet" />
  <!-- CSS Files -->
  <link id="pagestyle" href="../resources/assets/css/argon-dashboard.css?v=2.0.4" rel="stylesheet" />
</head>

<body class="g-sidenav-show   bg-gray-100">
  <div class="min-height-300 bg-primary position-absolute w-100"></div>
    <aside class="sidenav bg-white navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-4 " id="sidenav-main">
    <div class="sidenav-header">
      <i class="fas fa-times p-3 cursor-pointer text-secondary opacity-5 position-absolute end-0 top-0 d-none d-xl-none" aria-hidden="true" id="iconSidenav"></i>
      <a class="navbar-brand " href="/" style="margin-right: 0; text-align: center;">
        <img src="https://i.ibb.co/1dzdtP6/logo.png" alt="main_logo">
      </a>
    </div>
    <hr class="horizontal dark mt-0">
   
   <div class="collapse navbar-collapse  w-auto " id="sidenav-collapse-main">
  <!-- 좌측 사이드바 -->
    <ul class="navbar-nav" data-widget="treeview" role="menu" data-accordion="false">

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#a-nav" data-bs-toggle="collapse" href="#">
         <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
         	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-people" viewBox="0 0 16 16">
  				<path d="M15 14s1 0 1-1-1-4-5-4-5 3-5 4 1 1 1 1h8Zm-7.978-1A.261.261 0 0 1 7 12.996c.001-.264.167-1.03.76-1.72C8.312 10.629 9.282 10 11 10c1.717 0 2.687.63 3.24 1.276.593.69.758 1.457.76 1.72l-.008.002a.274.274 0 0 1-.014.002H7.022ZM11 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4Zm3-2a3 3 0 1 1-6 0 3 3 0 0 1 6 0ZM6.936 9.28a5.88 5.88 0 0 0-1.23-.247A7.35 7.35 0 0 0 5 9c-4 0-5 3-5 4 0 .667.333 1 1 1h4.216A2.238 2.238 0 0 1 5 13c0-1.01.377-2.042 1.09-2.904.243-.294.526-.569.846-.816ZM4.92 10A5.493 5.493 0 0 0 4 13H1c0-.26.164-1.03.76-1.724.545-.636 1.492-1.256 3.16-1.275ZM1.5 5.5a3 3 0 1 1 6 0 3 3 0 0 1-6 0Zm3-2a2 2 0 1 0 0 4 2 2 0 0 0 0-4Z"/>
			 </svg>
         </div>
         <span>인사정보</span>
        </a>
        <ul id="a-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="/personnel_info/mypage?mno=${dto.mno }">
              <span>마이페이지</span>
            </a>
          </li>
          <li>
            <a href="/personnel_info/cs">
              <span>문의사항</span>
            </a>
          </li>
          <li>
            <a href="/personnel_info/stafflist">
              <span>직원 현황</span>
            </a>
          </li>
          <li>
             <a href="/personnel_info/organization2">
              <span>조직도</span>
            </a>
          </li>
        </ul>
      </li><!-- End 인사정보 Nav -->

      <li class="nav-item">
        <a class="nav-link" data-bs-target="#b-nav" data-bs-toggle="collapse" href="#">
         <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
         	 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-calendar2-check" viewBox="0 0 16 16">
			   <path d="M10.854 8.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 0 1 .708-.708L7.5 10.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
			   <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM2 2a1 1 0 0 0-1 1v11a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V3a1 1 0 0 0-1-1H2z"/>
			   <path d="M2.5 4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5H3a.5.5 0 0 1-.5-.5V4z"/>
			 </svg>
         </div>
         <span>업무관리</span>
        </a>
        <ul id="b-nav" class="nav-content collapse show" data-bs-parent="#sidebar-nav">
          <li>
            <a href="/calendar/list" >
              <span>캘린더</span>
            </a>
          </li>
          <li>
            <a href="/calendar/mycalendar" class="nav-link active">
              <span>나의 업무</span>
            </a>
          </li>
        </ul>
      </li><!-- End 업무관리 Nav -->
      
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#c-nav" data-bs-toggle="collapse" href="#">
         <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-clock" viewBox="0 0 16 16">
			   <path d="M8 3.5a.5.5 0 0 0-1 0V9a.5.5 0 0 0 .252.434l3.5 2a.5.5 0 0 0 .496-.868L8 8.71V3.5z"/>
			   <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm7-8A7 7 0 1 1 1 8a7 7 0 0 1 14 0z"/>
			 </svg>
         </div>
         <span>근태관리</span>
        </a>
        <ul id="c-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="/attendance?mno=${dto.mno }">
              <span>근태관리</span>
            </a>
          </li>
          <li>
             <a href="/vacation">
              <span>휴가관리</span>
            </a>
          </li>
        </ul>
      </li><!-- End 근태관리 Nav -->
      
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#d-nav" data-bs-toggle="collapse" href="#">
         <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-credit-card-2-back" viewBox="0 0 16 16">
  				<path d="M11 5.5a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1-.5-.5v-1z"/>
  				<path d="M2 2a2 2 0 0 0-2 2v8a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V4a2 2 0 0 0-2-2H2zm13 2v5H1V4a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1zm-1 9H2a1 1 0 0 1-1-1v-1h14v1a1 1 0 0 1-1 1z"/>
			 </svg>
         </div>
         <span>전자결재</span>
        </a>
        <ul id="d-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="/apvHome"> 
            <span>전자결재홈</span>
            </a>
          </li>
          <li>
             <a href="/apvWrite?form=연차신청서"> 
             <span>기안작성</span>
			</a>
          </li>
          <li>
             <a href="/personalFile?apvP=전체문서">
             <span>개인문서함</span>
			</a>
          </li>
          <li>
             <a href="/apvProgress">
             <span>결재처리함</span>
			</a>
          </li>
          <li>
             <a href="/oldFile">
             <span>오래된문서함</span>
			</a>
          </li>
        </ul>
      </li><!-- End 근태관리 Nav -->
      
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#e-nav" data-bs-toggle="collapse" href="#">
         <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
			 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pass" viewBox="0 0 16 16">
  				<path d="M5.5 5a.5.5 0 0 0 0 1h5a.5.5 0 0 0 0-1h-5Zm0 2a.5.5 0 0 0 0 1h3a.5.5 0 0 0 0-1h-3Z"/>
  				<path d="M8 2a2 2 0 0 0 2-2h2.5A1.5 1.5 0 0 1 14 1.5v13a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 14.5v-13A1.5 1.5 0 0 1 3.5 0H6a2 2 0 0 0 2 2Zm0 1a3.001 3.001 0 0 1-2.83-2H3.5a.5.5 0 0 0-.5.5v13a.5.5 0 0 0 .5.5h9a.5.5 0 0 0 .5-.5v-13a.5.5 0 0 0-.5-.5h-1.67A3.001 3.001 0 0 1 8 3Z"/>
			 </svg>
         </div>
         <span>게시판</span>
        </a>
        <ul id="e-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
          <li>
            <a href="/board/list">
              <span>공지사항</span>
            </a>
          </li>
        </ul>
      </li><!-- End 게시판 Nav -->
      
      <sec:authorize access="hasRole('ROLE_ADMIN')">
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#f-nav" data-bs-toggle="collapse" href="#">
          <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-lock" viewBox="0 0 16 16">
 			 	<path d="M11 5a3 3 0 1 1-6 0 3 3 0 0 1 6 0ZM8 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4Zm0 5.996V14H3s-1 0-1-1 1-4 6-4c.564 0 1.077.038 1.544.107a4.524 4.524 0 0 0-.803.918A10.46 10.46 0 0 0 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h5ZM9 13a1 1 0 0 1 1-1v-1a2 2 0 1 1 4 0v1a1 1 0 0 1 1 1v2a1 1 0 0 1-1 1h-4a1 1 0 0 1-1-1v-2Zm3-3a1 1 0 0 0-1 1v1h2v-1a1 1 0 0 0-1-1Z"/>
			 </svg>
          </div>
         <span>인사관리</span>
        </a>
        <ul id="f-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="/admin/sign">
              <span>사원정보등록</span>
            </a>
          </li>
          <li>
            <a href="/admin/admin2" >
              <span>사원조회</span>
            </a>
          </li>
          <li>
            <a href="/admin/admin3" >
              <span>급여관리</span>
            </a>
          </li>
          <li>
            <a href="/admin/page" >
              <span>근태관리</span>
            </a>
          </li>
        </ul>
      </li><!-- End 인사관리자 Nav -->
      </sec:authorize>
      
    </ul>
  	</aside><!-- End Sidebar-->

	<main class="main-content position-relative border-radius-lg ">
		<!-- Navbar -->
		<nav
			class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl "
			id="navbarBlur" data-scroll="false">
			<div class="container-fluid py-1 px-3">
				<nav aria-label="breadcrumb">
					<ol
						class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">
						<li class="breadcrumb-item text-sm"><a
							class="opacity-5 text-white" href="javascript:;">Pages</a></li>
						<li class="breadcrumb-item text-sm text-white active"
							aria-current="page">PeopleCrew</li>
					</ol>
					<h6 class="font-weight-bolder text-white mb-0">나의 업무</h6>
				</nav>

				<!-- 로그인 헤더  -->
				<%@ include file="../include/header.jsp"%>

			</div>
		</nav>
		<!-- End Navbar -->
	

<!-- ajax -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
		<script>
			$(function() {  //완료일정 현재부터 일주일 전 날짜까지 보여주기
				var d = new Date();
				const day = d.getDate() - 7;

				var a = new Date().setDate(day);
				var b = new Date(a);
				console.log("b : " + b);
				var weekday = b.toLocaleDateString(); //일주일 전 날짜
				var today = d.toLocaleDateString(); //오늘날짜 
				document.getElementById('weekday').innerText = weekday + " - "
						+ today;
				
				var number = $('.ingmywork').length;
				var number2 = $('.ingcompanywork').length;
				var finished = $('.finishedwork').length;
				console.log(number+","+number2+","+finished);
				document.getElementById('ingmywork').innerText = number;
				document.getElementById('ingcompanywork').innerText = number2;
				document.getElementById('finishedwork').innerText = finished;
				
				if(number==0){
					var message = '<span class="text-secondary text-sm "><span class="alert-icon"><i class="ni ni-like-2"></i></span> 진행중인 나의 업무가 없습니다.</span>';
					document.getElementById('ingmessage').innerHTML = message;
				}
				if(number2==0){
					var ingcompanymessage = '<span class="text-secondary text-sm "><span class="alert-icon"><i class="ni ni-like-2"></i></span> 진행중인 회사 업무가 없습니다.</span>';
					document.getElementById('ingcompanymessage').innerHTML = ingcompanymessage;
				}
				if(finished==0){
					var finishedmessage = '<span class="text-secondary text-sm "><span class="alert-icon"><i class="ni ni-like-2"></i></span> 지난 일주일간 완료된 업무가 없습니다.</span>';
					document.getElementById('finishedmessage').innerHTML = finishedmessage;
				}
			})
			
			function showDetail(calno){  //완료일정 클릭시 상세내용 보기
				var popupWidth = 480;
				var popupHeight = 550;
				var popupX = Math.ceil((window.screen.width - popupWidth) / 2);
				var popupY = Math
						.ceil((window.screen.height - popupHeight) / 2);
				window.open("/calendar/detail?calno="+calno, "popOpen", 'status=no, height='
						+ popupHeight + ', width=' + popupWidth + ', left='
						+ popupX + ', top=' + popupY);
			}
			
			function modifyOk(calno){ //수정 
				var popupWidth = 480;
				var popupHeight = 550;
				var popupX = Math.ceil((window.screen.width - popupWidth) / 2);
				var popupY = Math
						.ceil((window.screen.height - popupHeight) / 2);
				window.open("/calendar/modify?calno="+calno, "popOpen", 'status=no, height='
						+ popupHeight + ', width=' + popupWidth + ', left='
						+ popupX + ', top=' + popupY);
			}
			
			function deleteOk(calno) {  //삭제 
				if (confirm("일정을 삭제하시겠습니까?") == true){    //확인
					$.ajax({
						url : '/calendar/delete',
						type : 'post',
						data : {
							'calno' : calno
						},
						success : function() {
							location.reload(); //페이지 리로드
						},
						error : function() {
							alert("일정 삭제 실패");
						},
					});
			}else{   //취소
			      return;
			  }
			}
		
			function insertOpen() {
				var popupWidth = 480;
				var popupHeight = 550;
				var popupX = Math.ceil((window.screen.width - popupWidth) / 2);
				var popupY = Math
						.ceil((window.screen.height - popupHeight) / 2);
				window.open("/calendar/write", "popOpen", 'status=no, height='
						+ popupHeight + ', width=' + popupWidth + ', left='
						+ popupX + ', top=' + popupY);
			}

			
		</script>
		<style>
.color0 {
	color: #2142B2
}

.color10 {
	color: #039BE5
}

.color20 {
	color: #AF6AB0
}

.color30 {
	color: #F691B3
}

.color40 {
	color: #33B679
}

.color50 {
	color: #6937a1
}

.color1 {
	color: #D86C77
}

.ingmyworkbody {
	margin-top: 0 !important;
	padding-top: 0 !important;
}
</style>

		<c:set var="now" value="<%=new Date()%>" />
		<fmt:formatDate value="${now}" pattern="yyyyMMddHHmmss" var="nowDate" />
		<c:set var="sevenago" value="<%=new Date(new Date().getTime() - 60 * 60 * 24 * 1000 * 7)%>" />
		<fmt:formatDate value="${sevenago}" pattern="yyyyMMddHHmmss" var="weekago" />


		<div class="container-fluid py-4">
			<div class="row">

				<div class="col-md-6 mt-3">
				
				
					<div class="card">
						<div class="card-header pb-0 px-3">
							<h6 class="mb-0">
								진행중인 나의 업무(<span id="ingmywork"></span>건)<span class="float-end"> <input type="button" class="btn" value="(+)일정추가하기" onclick="insertOpen()"></span>
							</h6>
						</div>

						<div class="card-body pt-4 p-3 ingmyworkbody">
							<div id="ingmessage"></div>
							<ul class="list-group">
								<c:forEach var="caldto" items="${mylist}">
									<c:if test="${caldto.calend >= nowDate }">

										<fmt:parseDate value="${caldto.calend}" var="dateValue" pattern="yyyyMMddHHmmss" />
										<fmt:formatDate value="${dateValue}" pattern="yyyy-MM-dd HH:mm:ss" var="calend" />

										<div class="ingmywork">

											<li class="list-group-item border-0 d-flex p-4 mb-2 mt-3 bg-gray-100 border-radius-lg">
												<div class="d-flex flex-column">
													<h6 class="mb-3 text-sm">
														<span class="color${caldto.uno}">●</span> ${caldto.caltitle }
													</h6>
													<span class="mb-2 text-xs">시작일 : <span class="text-dark font-weight-bold ms-sm-2">${caldto.calstart } </span></span> <span class="mb-2 text-xs">종료일 : <span class="text-dark ms-sm-2 font-weight-bold">${calend} </span></span> <span class="text-xs">내용 : <span class="text-dark ms-sm-2 font-weight-bold">${caldto.calcontents }</span></span>
												</div>
												<div class="ms-auto text-end">
													<a class="btn btn-link text-danger text-gradient px-3 mb-0" onclick="deleteOk(${caldto.calno})"><i class="far fa-trash-alt me-2"></i>Delete</a> <a class="btn btn-link text-dark px-3 mb-0" onclick="modifyOk(${caldto.calno})"><i class="fas fa-pencil-alt text-dark me-2" aria-hidden="true"></i>Edit</a>
												</div>
											</li>

										</div>
									</c:if>

								</c:forEach>
							</ul>
						</div>
					</div>
					
					<br>
					<div class="card">
						<div class="card-header pb-0 p-3">
							<i class="far fa-calendar-alt me-2"></i> <small><span id="weekday"></span></small>

							<h6 class="mb-0">
								완료(<span id="finishedwork"></span>건)
							</h6>
						</div>

						<div class="card-body p-3">
						<div id="finishedmessage"></div>
							<ul class="list-group">

								<c:forEach var="caldto" items="${myall}">
									<c:if test="${ caldto.calend >= weekago && caldto.calend < nowDate}">

										<fmt:parseDate value="${caldto.calend}" var="dateValue" pattern="yyyyMMddHHmmss" />
										<fmt:formatDate value="${dateValue}" pattern="yyyy년 MM월 dd일" var="calend" />

										<div class="finishedwork">
											<li class="list-group-item border-0 d-flex justify-content-between ps-0 mb-2 border-radius-lg">
												<div class="d-flex align-items-center">
													<div class="icon icon-shape icon-sm me-3 bg-gradient-dark shadow text-center">
														<i class="ni ni-tag text-white opacity-10"></i>
													</div>
													<div class="d-flex flex-column">
														<h6 class="mb-1 text-dark text-sm">
															<span class="color${caldto.uno}">● </span>${caldto.caltitle }</h6>
														<span class="text-xs"> 완료일 : <span class="font-weight-bold">${calend}</span></span>
													</div>
												</div>
												<div class="d-flex">
													<button class="btn btn-link btn-icon-only btn-rounded btn-sm text-dark icon-move-right my-auto" onclick="showDetail(${caldto.calno})">
														<i class="ni ni-bold-right" aria-hidden="true"></i>
													</button>
												</div>
											</li>
										</div>

									</c:if>
								</c:forEach>

							</ul>
						</div>


					</div>
					
				</div>
				
				

				<div class="col-md-6 mt-3">
					<div class="card">
						<div class="card-header pb-0 px-3">
							<h6 class="mb-0">
								진행중인 회사 업무(<span id="ingcompanywork"></span>건)
							</h6>
						</div>
						<div class="card-body pt-4 p-3">
								<div id="ingcompanymessage"></div>
							<ul class="list-group">
								<c:forEach var="caldto" items="${unolist}">
									<c:if test="${caldto.calend >= nowDate }">

										<fmt:parseDate value="${caldto.calend}" var="dateValue" pattern="yyyyMMddHHmmss" />
										<fmt:formatDate value="${dateValue}" pattern="yyyy-MM-dd HH:mm:ss" var="calend" />


										<div class="ingcompanywork">
											<li class="list-group-item border-0 d-flex p-4 mb-2 mt-3 bg-gray-100 border-radius-lg">
												<div class="d-flex flex-column">
													<h6 class="mb-3 text-sm">
														<span class="color${caldto.uno}">● </span>${caldto.caltitle }</h6>
													<span class="mb-2 text-xs">시작일 : <span class="text-dark font-weight-bold ms-sm-2">${caldto.calstart } </span></span> <span class="mb-2 text-xs">종료일 : <span class="text-dark ms-sm-2 font-weight-bold">${calend } </span></span> <span class="text-xs">내용 : <span class="text-dark ms-sm-2 font-weight-bold">${caldto.calcontents }</span></span>
												</div>
												
												<c:choose>
													<c:when test="${dto.mrank ne '사원'}">
												<div class="ms-auto text-end">
													<a class="btn btn-link text-danger text-gradient px-3 mb-0" onclick="deleteOk(${caldto.calno})"><i class="far fa-trash-alt me-2"></i>Delete</a> <a class="btn btn-link text-dark px-3 mb-0" onclick="modifyOk(${caldto.calno})"><i class="fas fa-pencil-alt text-dark me-2" aria-hidden="true"></i>Edit</a>
												</div>
												</c:when>
												<c:otherwise>
												<div class="ms-auto text-end">
													<a class="btn btn-link text-dark px-3 mb-0" onclick="showDetail(${caldto.calno})"><i class="fas fa-pencil-alt text-dark me-2" aria-hidden="true"></i>상세보기</a>
												</div>
												</c:otherwise>
												</c:choose>
												
												
											</li>
										</div>
									</c:if>
								</c:forEach>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-6 mt-3">
				</div>
			</div>
		</div>

	<%@ include file="../include/footer.jsp" %>
	</main>
</body>
</html>