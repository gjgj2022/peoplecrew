<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="apple-touch-icon" sizes="76x76"
	href="./assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="./assets/img/favicon.png">
<title>개인문서함</title>
<!--     Fonts and icons     -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
<!-- Nucleo Icons -->
<link href="../resources/assets/css/nucleo-icons.css" rel="stylesheet" />
<link href="../resources/assets/css/nucleo-svg.css" rel="stylesheet" />
<!-- Font Awesome Icons -->
<script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
<!-- CSS Files -->
<link id="pagestyle" href="../resources/assets/css/argon-dashboard.css?v=2.0.4" rel="stylesheet" />
<style>
#box {
  size:210mm 297mm; /*A4*/
  margin:0mm
}
* {
    -webkit-print-color-adjust: exact !important;   /* Chrome, Safari, Edge */
    color-adjust: exact !important;                 /*Firefox*/
}
@media print {
   	.noPrint {
       display: none;
    }
}


</style>
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
            <a href="personnel_info/mypage?mno=${dto.mno }">
              <i class="bi bi-circle"></i>
              <span>마이페이지</span>
            </a>
          </li>
          <li>
            <a href="personnel_info/cs">
              <i class="bi bi-circle"></i>
              <span>문의사항</span>
            </a>
          </li>
          <li>
            <a href="personnel_info/stafflist">
              <i class="bi bi-circle"></i>
              <span>직원 현황</span>
            </a>
          </li>
          <li>
             <a href="personnel_info/organization2">
              <i class="bi bi-circle"></i>
              <span>조직도</span>
            </a>
          </li>
        </ul>
      </li><!-- End 인사정보 Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#b-nav" data-bs-toggle="collapse" href="#">
         <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
         	 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-calendar2-check" viewBox="0 0 16 16">
			   <path d="M10.854 8.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 0 1 .708-.708L7.5 10.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
			   <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM2 2a1 1 0 0 0-1 1v11a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V3a1 1 0 0 0-1-1H2z"/>
			   <path d="M2.5 4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5H3a.5.5 0 0 1-.5-.5V4z"/>
			 </svg>
         </div>
         <span>업무관리</span>
        </a>
        <ul id="b-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
          <li>
            <a href="/calendar/list" >
              <i class="bi bi-circle"></i>
              <span>캘린더</span>
            </a>
          </li>
          <li>
            <a href="/calendar/mycalendar">
              <i class="bi bi-circle"></i>
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
              <i class="bi bi-circle"></i>
              <span>근태관리</span>
            </a>
          </li>
          <li>
             <a href="/vacation">
              <i class="bi bi-circle"></i>
              <span>휴가관리</span>
            </a>
          </li>
        </ul>
      </li><!-- End 근태관리 Nav -->
      
      <li class="nav-item">
        <a class="nav-link" data-bs-target="#d-nav" data-bs-toggle="collapse" href="#">
         <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-credit-card-2-back" viewBox="0 0 16 16">
  				<path d="M11 5.5a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1-.5-.5v-1z"/>
  				<path d="M2 2a2 2 0 0 0-2 2v8a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V4a2 2 0 0 0-2-2H2zm13 2v5H1V4a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1zm-1 9H2a1 1 0 0 1-1-1v-1h14v1a1 1 0 0 1-1 1z"/>
			 </svg>
         </div>
         <span>전자결재</span>
        </a>
        <ul id="d-nav" class="nav-content collapse show " data-bs-parent="#sidebar-nav">
          <li>
            <a href="/apvHome"> 
            <i class="bi bi-circle"></i> 
            <span>전자결재홈</span>
            </a>
          </li>
          <li>
             <a href="/apvWrite?form=연차신청서"> 
             <i class="bi bi-circle"></i> 
             <span>기안작성</span>
			</a>
          </li>
          <li>
             <a href="/personalFile?apvP=전체문서" class="nav-link active">
             <i class="bi bi-circle"></i> 
             <span>개인문서함</span>
			</a>
          </li>
          <li>
             <a href="/apvProgress">
             <i class="bi bi-circle"></i> 
             <span>결재처리함</span>
			</a>
          </li>
          <li>
             <a href="/oldFile">
             <i class="bi bi-circle"></i> 
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
              <i class="bi bi-circle"></i>
              <span>공지사항</span>
            </a>
          </li>
        </ul>
      </li><!-- End 게시판 Nav -->
      
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
              <i class="bi bi-circle"></i>
              <span>사원정보등록</span>
            </a>
          </li>
          <li>
            <a href="/admin/admin2" >
              <i class="bi bi-circle"></i>
              <span>사원조회</span>
            </a>
          </li>
          <li>
            <a href="/admin/admin3" >
              <i class="bi bi-circle"></i>
              <span>급여관리</span>
            </a>
          </li>
          <li>
            <a href="/admin/page" >
              <i class="bi bi-circle"></i>
              <span>근태관리</span>
            </a>
          </li>
        </ul>
      </li><!-- End 인사관리자 Nav -->
      
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
					<h6 class="font-weight-bolder text-white mb-0">개인문서함</h6>
				</nav>

				<!-- 로그인 헤더  -->
				<%@ include file="../include/header.jsp"%>

			</div>
		</nav>
		<!-- End Navbar -->









<!-- ==========================================================내작업======================  -->
	<div class="container bg-white p-1 rounded" style="min-width:1400px;">
	<div style="position:relative;left:72%;top:100px;"><input class="btn text-white" type="button" style="background:#607e19;margin-right:10px" onClick="Print()" value="출력"/><a href="/personalFile"><input class="btn btn-primary" type="button" value="목록으로" /></a></div>
	
	<div id="box" class="border border-secondary border-opacity-25 border-2 rounded" style="margin-top:100px;width:1000px;align:center;min-height:1200px;margin-left:180px;margin-right:auto;">
	<div style="height:200px;">
		<table class="table table-borderless">
			<tr class="noPrint" style="height:50px;">
				<td>
					<input type="hidden" name="dono" value="${ddto.dono }" />
				</td>
				<c:if test="${ddto.doprogress eq '결재대기' ||ddto.doprogress eq '반려' }">
				<form action="/personalFileModify" method="post">
					<td style="width:50px;"><input class="btn btn-success" type="submit" style="" value="수정" /></td>
					<td style="width:50px;"><a href="/personalFileDelete?dono=${ddto.dono }"><input class="btn btn-danger" type="button" style="" value="삭제" onclick="return confirm('삭제하시겠습니까?');"/></a></td>
				</c:if>				
			</tr>
			<tr class="align-bottom" style="height:100px;">
				<td colspan="4" style="text-align:center;"><h3>${ddto.dotype }</h3></td>
			</tr>
		</table>
	</div>
	<div style="width:1000px;margin-left:auto;margin-right:auto;">
		<table class="table table-bordered align-middle" style="margin-left:4%;width:61%;float:left;">
			<tr class="p-2 text-dark bg-opacity-10 w-25 border border-1" style="text-align:center;background-color:#F0F1F2;">
				<th>이름</th>
				<th>직책</th>
				<th>부서</th>
				<th>사번</th>
				<th>작성일자</th>
			</tr>
			<tr style="text-align:center;">
				<td class="border border-1" style="height:70px;">${mdto.mname }</td>
				<td class="border border-1" style="height:70px;">${mdto.mrank }</td>
				<td class="border border-1" style="height:70px;">${mdto.oname }</td>
				<td class="border border-1" style="height:70px;">${mdto.mno }</td>
				<td class="border border-1" style="height:70px;">${ddto.dodate }</td>
				<input type="hidden" name="mno" value="${mdto.mno }" />
			</tr>
		</table>

		<table class="table table-bordered align-middle" style="width:25%;float:right;text-align:center;margin-right:50px;margin-bottom:50px;">
			<tr class="p-2 text-dark bg-opacity-10 w-25 border border-1" style="background-color:#F0F1F2;">
				<th style="width:100px;">팀장</th>
				<th style="width:100px;">부장</th>
			</tr>
			<tr>
				<td class="border border-1" style="height:70px;"><c:if test="${ddto.doprogress eq '진행중' ||ddto.doprogress eq '결재완료' }"><img src="${dto11.fpath }" alt="" style="height:50px;"/></c:if></td>
				<td class="border border-1" style="height:70px;"><c:if test="${ddto.doprogress eq '결재완료' }"><img src="${dto12.fpath }" alt="" style="height:50px;"/></c:if></td>
			</tr>
		</table>
	</div>
	
	<c:choose>
		<c:when test="${form eq '연차신청서' }">
			<jsp:include page="form/vacationView.jsp" />
		</c:when>
		<c:when test="${form eq '업무보고서' }">
			<jsp:include page="form/businessReportView.jsp" />
		</c:when>
	</c:choose>
	
	<div style="width:1000px;text-align:center;margin-left:auto;margin-right:auto;">
	<table class="table table-borderless align-middle" style="width:25%;text-align:center;margin-left:auto;margin-right:auto;margin-bottom:50px;">
		<tr>
			<td style="padding-top:50px;">상기 명 본인은 위와같은 사유로 제출합니다.</td>
		</tr>
		<tr>
			<td style="padding-top:50px;">PeopleCrew <img src="./assets/img/logo-ct-dark.png" alt="" style="width:30px;"/></td>
		</tr>
	</table>
	</div>
	
	</div>
	</div>
	</form>
<!-- ===================================================================================  -->
<!-- 프린터 출력 스크립트 -->	
  <script type="text/javascript">

  var initBody
  window.onafterprint = afterPrint;
  
  function Print(){
    initBody = document.body.innerHTML;
    document.body.innerHTML = box.innerHTML;

    setTimeout(function(){
	    window.print();
    	
    },100)
    
  }

  function afterPrint(){
    document.body.innerHTML = initBody;
  }
  </script>
	
	
	
	
	
	
	
	
	
	
	
	</main>

</body>

</html>