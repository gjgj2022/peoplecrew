<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!--
=========================================================
* Argon Dashboard 2 - v2.0.4
=========================================================

* Product Page: https://www.creative-tim.com/product/argon-dashboard
* Copyright 2022 Creative Tim (https://www.creative-tim.com)
* Licensed under MIT (https://www.creative-tim.com/license)
* Coded by Creative Tim

=========================================================

* The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
-->
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="apple-touch-icon" sizes="76x76" href="./assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="./assets/img/favicon.png">
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
	
	<!-- Datatable library CDN -->
		<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs5/jq-3.6.0/dt-1.13.1/sb-1.4.0/datatables.min.css" />
		<script type="text/javascript" src="https://cdn.datatables.net/v/bs5/jq-3.6.0/dt-1.13.1/sb-1.4.0/datatables.min.js"></script>
	
	<script>
			/* 데이터테이블 라이브러리 */
			$(document).ready(function() {
				$('#dataTable').DataTable({
					"columnDefs" : [ {
						"defaultContent" : "-",
						"targets" : "_all"
					} ],
					//pageLength : 10,
					bPaginate : false,
					bLengthChange : true,
					//lengthMenu : [ 10, 20, 30, 40 ],
					bAutoWidth : false,
					processing : true,
					order : [ [ 0, 'desc' ] ], /* 글번호 기준 */
					ordering : false,
					serverSide : false,
					searching : true,
					bInfo : false,
				});
			});
		</script>
	
	<style>
			/*
service*/


.search_service td{
	text-align: right;
	padding: 3px;
}

.service_list{
	margin-left:5%;
	width: 98%;
	
	vertical-align: middle;
	font-size: 13px;
	
	margin-top: 50px;
}

.pagenationdiv {
	display: flex !important;
	justify-content: center !important;
	margin-top: 50px;
}

.tfoot {
	border-bottom: white;
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
        <a class="nav-link" data-bs-target="#a-nav" data-bs-toggle="collapse" href="#">
         <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
         	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-people" viewBox="0 0 16 16">
  				<path d="M15 14s1 0 1-1-1-4-5-4-5 3-5 4 1 1 1 1h8Zm-7.978-1A.261.261 0 0 1 7 12.996c.001-.264.167-1.03.76-1.72C8.312 10.629 9.282 10 11 10c1.717 0 2.687.63 3.24 1.276.593.69.758 1.457.76 1.72l-.008.002a.274.274 0 0 1-.014.002H7.022ZM11 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4Zm3-2a3 3 0 1 1-6 0 3 3 0 0 1 6 0ZM6.936 9.28a5.88 5.88 0 0 0-1.23-.247A7.35 7.35 0 0 0 5 9c-4 0-5 3-5 4 0 .667.333 1 1 1h4.216A2.238 2.238 0 0 1 5 13c0-1.01.377-2.042 1.09-2.904.243-.294.526-.569.846-.816ZM4.92 10A5.493 5.493 0 0 0 4 13H1c0-.26.164-1.03.76-1.724.545-.636 1.492-1.256 3.16-1.275ZM1.5 5.5a3 3 0 1 1 6 0 3 3 0 0 1-6 0Zm3-2a2 2 0 1 0 0 4 2 2 0 0 0 0-4Z"/>
			 </svg>
         </div>
         <span>인사정보</span>
        </a>
        <ul id="a-nav" class="nav-content collapse show" data-bs-parent="#sidebar-nav">
          <li>
            <a href="/personnel_info/mypage?mno=${dto.mno }">
              <i class="bi bi-circle"></i>
              <span>마이페이지</span>
            </a>
          </li>
          <li>
            <a href="/personnel_info/cs" class="nav-link active">
              <i class="bi bi-circle"></i>
              <span>문의사항</span>
            </a>
          </li>
          <li>
            <a href="/personnel_info/stafflist">
              <i class="bi bi-circle"></i>
              <span>직원 현황</span>
            </a>
          </li>
          <li>
             <a href="/personnel_info/organization2">
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
             <a href="/personalFile?apvP=전체문서">
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
					<h6 class="font-weight-bolder text-white mb-0">문의사항</h6>
				</nav>

				<!-- 로그인 헤더  -->
				<%@ include file="../include/header.jsp"%>

			</div>
		</nav>
		<!-- End Navbar -->
		
		
		
		<div class="container-fluid py-4">
			<div class="row"  style="margin: 0 3%">
				<div class="col-12">
					<div class="card mb-4">
						<div class="card-header pb-0">
							<h4>문의사항</h4>
						</div>
						<div class="col-11">

							<div class="mypage_profile">
								
								<table id="dataTable" class="table service_list">
									<thead class="thead-light">
									<tr>
										<th class="text-center">No</th>
										<th class="text-center">제목</th>
										<th class="text-center">작성자</th>
										<th class="text-center">작성일</th>
										<th class="text-center">상태</th>
									</tr>
									</thead>
									<tbody>
										<c:forEach var="dto" items="${list }">
											<tr>
												
												<td class="align-middle text-center"><span class="text-secondary text-xs font-weight-bold">${dto.bono }</span></td>
												<td class="text-sm font-weight-normal">
													<div class="d-flex px-2 py-1">
														<div class="d-flex flex-column justify-content-center">
															<h6 class="mb-0 text-xs">

																<c:if test="${dto.bostatus eq 1 || dto.bostatus eq 2}">
																<a href='detail?bono=${dto.bono }'>${dto.botitle }
																
																	<!--<c:choose>
																		<c:when test="${user.role eq 'ROLE_ADMIN'}">

																			<a href='detail?bono=${dto.bono }'>${dto.botitle }<script>
															if(${dto.recnt}==0){
																$('.replyCount'+${dto.bono}).hide();
															}
															</script>
																			</a>
																		</c:when>
																		<c:otherwise>
																			<img width="13px"
																				src="https://cdn-icons-png.flaticon.com/512/891/891399.png"/>
																				${dto.botitle }</c:otherwise>
																	</c:choose>-->
																</c:if>

															<!-- - -->	
															</h6>
														</div>
													</div>
												</td>
												<td class="align-middle text-center">
													<p class="text-xs font-weight-bold mb-0">${dto.mname }</p>
												</td>
												<td class="align-middle text-center"><span class="text-secondary text-xs font-weight-bold"> ${dto.bodate }</span></td>
												<td class="align-middle text-center">
												
												<c:choose>
												
												<c:when test="${dto.bostatus eq 1}">
												
												<span class="text-secondary text-xs font-weight-bold ">문의 중 </span>
												</c:when>
												
												<c:otherwise>
												<span class="text-secondary text-xs font-weight-bold ">답변 완료 </span>
												</c:otherwise>
												</c:choose>
											
												
												</td>
											</tr>
										</c:forEach>
									</tbody>
									<tfoot>
										<tr>
											<td class="tfoot">
											<!-- 글쓰기  -->
											
											<c:if test="${not empty user}"></c:if>
													<a href="write"><input type="button" id="write_btn" name="write_btn" class="btn" value="글쓰기" style="display: inline-block" /></a>
												</td>
											<td class="tfoot" colspan="4">
												<!-- 페이징처리  -->

												<div class="justify-content-center mb-3 pagenationdiv">
													<nav aria-label="Page navigation example ">
														<ul class="pagination">
															<c:if test="${map.isPre }">
																<!-- 값이 있으면 보여주기 -->
																<li class="page-item"><c:choose>
																		<c:when test="${map.stratPage-10 <= 0}">
																			<a class="page-link" href="cs?cp=1"><b>&laquo;</b></a></li>
																</c:when>
																<c:otherwise>
																	<a class="page-link" href="cs?cp=${map.startPage-10 }"><b>&laquo;</b></a>
																	</li>
																</c:otherwise>
																</c:choose>
															</c:if>

															<c:forEach var="i" begin="${map.startPage }" end="${map.endPage }">
																<li class="page-item"><c:choose>
																		<c:when test="${i==map.currentPage}">
																			<a class="page-link" style="color: red" href="cs?cp=${ i}">${ i}</a>
																		</c:when>
																		<c:otherwise>
																			<a class="page-link" href="cs?cp=${ i}">${ i}</a>
																		</c:otherwise>
																	</c:choose></li>
															</c:forEach>

															<c:if test="${map.isNext }">
																<li class="page-item"><a class="page-link" href="cs?cp=${map.endPage+1 }"><b>&raquo;</b></a></li>
															</c:if>
														</ul>
													</nav>
												</div>
											</td>
										</tr>
									</tfoot>
								</table>


							</div>



						</div>
						<div class="card-body px-0 pt-0 pb-2">
							<div class="table-responsive p-0"></div>
						</div>
					</div>
				</div>
			</div>
			<div class="row"></div>
			<footer class="footer pt-3  ">
				<div class="container-fluid">
					<div class="row align-items-center justify-content-lg-between">
						<div class="col-lg-6 mb-lg-0 mb-4">
							<div
								class="copyright text-center text-sm text-muted text-lg-start">
								©
								<script>
									document.write(new Date().getFullYear())
								</script>
								, made with <i class="fa fa-heart"></i> by <a
									href="https://www.creative-tim.com" class="font-weight-bold"
									target="_blank">People Crew</a> for a better web.
							</div>
						</div>
						<div class="col-lg-6">
							<ul
								class="nav nav-footer justify-content-center justify-content-lg-end">
								<li class="nav-item"><a href="https://www.creative-tim.com"
									class="nav-link text-muted" target="_blank">Creative Tim</a></li>
								<li class="nav-item"><a
									href="https://www.creative-tim.com/presentation"
									class="nav-link text-muted" target="_blank">About Us</a></li>
								<li class="nav-item"><a
									href="https://www.creative-tim.com/blog"
									class="nav-link text-muted" target="_blank">Blog</a></li>
								<li class="nav-item"><a
									href="https://www.creative-tim.com/license"
									class="nav-link pe-0 text-muted" target="_blank">License</a></li>
							</ul>
						</div>
					</div>
				</div>
			</footer>
		</div>
	</main>
	<div class="fixed-plugin">
		<a class="fixed-plugin-button text-dark position-fixed px-3 py-2">
			<i class="fa fa-cog py-2"> </i>
		</a>
		<div class="card shadow-lg">
			<div class="card-header pb-0 pt-3 ">
				<div class="float-start">
					<h5 class="mt-3 mb-0">Argon Configurator</h5>
					<p>See our dashboard options.</p>
				</div>
				<div class="float-end mt-4">
					<button
						class="btn btn-link text-dark p-0 fixed-plugin-close-button">
						<i class="fa fa-close"></i>
					</button>
				</div>
				<!-- End Toggle Button -->
			</div>
			<hr class="horizontal dark my-1">
			<div class="card-body pt-sm-3 pt-0 overflow-auto">
				<!-- Sidebar Backgrounds -->
				<div>
					<h6 class="mb-0">Sidebar Colors</h6>
				</div>
				<a href="javascript:void(0)" class="switch-trigger background-color">
					<div class="badge-colors my-2 text-start">
						<span class="badge filter bg-gradient-primary active"
							data-color="primary" onclick="sidebarColor(this)"></span> <span
							class="badge filter bg-gradient-dark" data-color="dark"
							onclick="sidebarColor(this)"></span> <span
							class="badge filter bg-gradient-info" data-color="info"
							onclick="sidebarColor(this)"></span> <span
							class="badge filter bg-gradient-success" data-color="success"
							onclick="sidebarColor(this)"></span> <span
							class="badge filter bg-gradient-warning" data-color="warning"
							onclick="sidebarColor(this)"></span> <span
							class="badge filter bg-gradient-danger" data-color="danger"
							onclick="sidebarColor(this)"></span>
					</div>
				</a>
				<!-- Sidenav Type -->
				<div class="mt-3">
					<h6 class="mb-0">Sidenav Type</h6>
					<p class="text-sm">Choose between 2 different sidenav types.</p>
				</div>
				<div class="d-flex">
					<button class="btn bg-gradient-primary w-100 px-3 mb-2 active me-2"
						data-class="bg-white" onclick="sidebarType(this)">White</button>
					<button class="btn bg-gradient-primary w-100 px-3 mb-2"
						data-class="bg-default" onclick="sidebarType(this)">Dark</button>
				</div>
				<p class="text-sm d-xl-none d-block mt-2">You can change the
					sidenav type just on desktop view.</p>
				<!-- Navbar Fixed -->
				<div class="d-flex my-3">
					<h6 class="mb-0">Navbar Fixed</h6>
					<div class="form-check form-switch ps-0 ms-auto my-auto">
						<input class="form-check-input mt-1 ms-auto" type="checkbox"
							id="navbarFixed" onclick="navbarFixed(this)">
					</div>
				</div>
				<hr class="horizontal dark my-sm-4">
				<div class="mt-2 mb-5 d-flex">
					<h6 class="mb-0">Light / Dark</h6>
					<div class="form-check form-switch ps-0 ms-auto my-auto">
						<input class="form-check-input mt-1 ms-auto" type="checkbox"
							id="dark-version" onclick="darkMode(this)">
					</div>
				</div>
				<a class="btn bg-gradient-dark w-100"
					href="https://www.creative-tim.com/product/argon-dashboard">Free
					Download</a> <a class="btn btn-outline-dark w-100"
					href="https://www.creative-tim.com/learning-lab/bootstrap/license/argon-dashboard">View
					documentation</a>
				<div class="w-100 text-center">
					<a class="github-button"
						href="https://github.com/creativetimofficial/argon-dashboard"
						data-icon="octicon-star" data-size="large" data-show-count="true"
						aria-label="Star creativetimofficial/argon-dashboard on GitHub">Star</a>
					<h6 class="mt-3">Thank you for sharing!</h6>
					<a
						href="https://twitter.com/intent/tweet?text=Check%20Argon%20Dashboard%20made%20by%20%40CreativeTim%20%23webdesign%20%23dashboard%20%23bootstrap5&amp;url=https%3A%2F%2Fwww.creative-tim.com%2Fproduct%2Fargon-dashboard"
						class="btn btn-dark mb-0 me-2" target="_blank"> <i
						class="fab fa-twitter me-1" aria-hidden="true"></i> Tweet
					</a> <a
						href="https://www.facebook.com/sharer/sharer.php?u=https://www.creative-tim.com/product/argon-dashboard"
						class="btn btn-dark mb-0 me-2" target="_blank"> <i
						class="fab fa-facebook-square me-1" aria-hidden="true"></i> Share
					</a>
				</div>
			</div>
		</div>
	</div>

</body>

</html>