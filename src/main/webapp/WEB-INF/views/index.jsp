<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>PeopleCrew</title>
  
  <!-- Nucleo Icons -->
  <link href="../resources/assets/css/nucleo-svg.css" rel="stylesheet" />
  <!-- Font Awesome Icons -->
  <link href="../resources/assets/css/nucleo-svg.css" rel="stylesheet" />
  <!-- CSS Files -->
  <link id="pagestyle" href="../resources/assets/css/argon-dashboard.css?v=2.0.4" rel="stylesheet" />
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
  
  
  <!-- 개인,결재함 차트 style  -->
  <style>
	#chart-container {
	  position: relative;
	  height: 200px;
	  margin: 0px;
	  overflow: hidden;
	}
	#chart-container2 {
	  position: relative;
	  height: 200px;
	  margin: 0px;
	  overflow: hidden;
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
        <ul id="b-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="/calendar/list">
              <span>캘린더</span>
            </a>
          </li>
          <li>
            <a href="/calendar/mycalendar">
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
      </li><!-- End 전자결재 Nav -->
      
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
        <ul id="e-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
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
            <a href="/admin/admin3">
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
    </div>
  	</aside><!-- End Sidebar-->
  
   
  <main class="main-content position-relative border-radius-lg ">
 
  
    <!-- Navbar -->
    <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl " id="navbarBlur" data-scroll="false">
      <div class="container-fluid py-1 px-3">
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">
            <li class="breadcrumb-item text-sm"><a class="opacity-5 text-white" href="javascript:;">Pages</a></li>
            <li class="breadcrumb-item text-sm text-white active" aria-current="page">PeopleCrew</li>
          </ol>
          <h6 class="font-weight-bolder text-white mb-0">Dashboard</h6>
        </nav>
       
       <!-- 로그인헤더  -->
       <%@ include file="include/header.jsp" %>
		       
      </div>
    </nav>
    <!-- End Navbar -->
    
    <div class="container-fluid py-3">
      <div class="row">
      	<!-- 공지사항  -->
        <div class="col-lg-7">
          <div class="card h-100">
            <div class="card-header pb-0 p-2">
              <div class="row">
                <div class="col-6 d-flex align-items-center">
                  <h6 class="mb-0">공지사항</h6>
                </div>
                <div class="col-6 text-end">
                  <a href="/board/list"><button class="btn btn-outline-primary btn-xs mb-0">목록보기</button></a>
                </div>
              </div>
            </div>
            
            <div class="table-responsive p-0">
            <table class="table align-items-center justify-content-center mb-0" >
	            <thead>
		            <tr>
		                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-4" >번호</th>
		                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-4" >제목</th>
		                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-4" >작성자</th>
		                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-4" >작성일</th>
		                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-4" >조회수</th>
		            </tr>
	            </thead>
            	<tbody>
	            	<c:forEach var="bdto" items="${blist }">
	                    <tr>
	                      <td class="ps-4">
	                        <span class="text-secondary text-s font-weight-bolder" ">${bdto.bono }</span> <!-- 번호 -->
	                      </td>
	                      <td class="ps-4" id='replyCount'>
		            		<c:if test="${bdto.bostatus eq 10}">
		            			<c:choose>
		            				<c:when test="${bdto.mno eq dto.mno || dto.role eq 'ROLE_ADMIN'}">
				                        <span class="text-secondary text-s font-weight-bolder"  >${bdto.botitle }</span> <!-- 제목 -->
				                    <script>
									if(${bdto.recnt}==0){
										$('.replyCount'+${bdto.bono}).hide();
									}
									</script>
				                    </c:when>
										<c:otherwise>
											<img width="13px" src="https://cdn-icons-png.flaticon.com/512/891/891399.png" />
												비밀글은 작성자와 관리자만 볼 수 있습니다.
										</c:otherwise>
									</c:choose>
								</c:if>
				
							<c:if test="${bdto.bostatus eq 0}">
			                        <span class="text-secondary text-s font-weight-bolder" >${bdto.botitle }</span> <!-- 제목 -->
								<script>
								if(${bdto.recnt}==0){
									$('.replyCount'+${bdto.bono}).hide();
								}
								</script>
							</c:if>
					      </td>
	                      <td class="ps-4">
	                        <span class="text-secondary text-s font-weight-bolder">${bdto.mname }</span> <!-- 작성자 -->
	                      </td>
	                      <td class="ps-4">
	                        <span class="text-secondary text-s font-weight-bolder">${fn:substring(bdto.bodate,0,10) }</span> <!-- 작성일 -->
	                      </td>
	                      <td class="ps-4">
	                        <span class="text-secondary text-s font-weight-bolder">${bdto.bohits }</span> <!-- 조회수 -->
	                      </td>
	                    </tr>
	           		 </c:forEach>
                 </tbody>
            </table>
            </div>
          </div>
        </div>
        <!-- 출퇴근  -->
      	<div class="col-lg-5">
          <div class="row">
            <div class="col-md-12 mb-lg-0 mb-4">
              <div class="card h-100">
                <div class="card-header pb-0 p-3"  style="float: left;">
                  <div class="row">
                    <div class="col-6 d-flex">
                      <h6 class="mb-0">근무상태</h6>
                    </div>
                  </div>
                  	<br />
                </div>

				<input type="hidden" name="mno" value="${dto.mno }">	
				<input type="hidden" name="ono" value="${dto.ono }">	
				<input type="hidden" name="mno" value="${workdto.mno }">	
				<input type="hidden" name="ono" value="${workdto.ono }">	
				<input type="hidden" name="state" value="${workdto.state }">	
				<input type="hidden" name="mno" value="${outwdto.mno }">	
				<input type="hidden" name="ono" value="${outwdto.ono }">	
				<input type="hidden" name="state" value="${outwdto.state }">	
                <div class="card" align="center">
					<div id="clockbtn" style="width: 100%; margin: 20px 0">
						<a href="attin?mno=${dto.mno}" class="btn btn-light waves-effect" id="inwork" onclick="return startWork()">출근하기</a>&nbsp;&nbsp;&nbsp;
		           		<a href="attout?mno=${dto.mno}"  class="btn btn-light waves-effect" onclick="return outWork()">퇴근하기</a>
					</div>
				</div>
				<span id="liveclock"></span>
                <div id="clockstatus" style="width: 100%">
					<table class="table" style="width: 100%; text-align: center">
						<tr>
							<th colspan="2" width="100%" style="text-align: center" id="today_kor"></th>
						</tr>
						<tr>
							<td width="30%">
							<p>출근 : ${endDto.start_time }</p></td>
							
							<td id="gtw" width="90%"></td>
						</tr>
						<tr>
							<td>퇴근 : ${endDto.end_time }</td>
							<td id="ofw"></td>
						</tr>
					</table>
				</div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
      
      
	<!-- 결제 진행사항 -->
	<div class="container-fluid py-4">
	  <div class="row mt-1">
        <div class="col-3">
          <div class="card" id="table1">
			<div class="card-header pb-0 p-3">
				<div class="d-flex justify-content-between">
					<h6 class="mb-2"><a href="/personalFile">개인문서함</a></h6>
				</div>
			</div>
			<div class="table-responsive">
				<table class="table align-items-center ">
					<tbody>
						<tr>
							<td class="w-30">
								<div class="d-flex px-2 py-1 align-items-center">
									<div class="ms-4">
										<h6 class="text-sm mb-0">결재대기</h6>
									</div>
								</div>
							</td>
							<td class="align-middle text-sm" style="width:50px;">
								<div class="col text-center">
									<h6 class="text-sm mb-0" style="width:50px;"><a href="/personalFile?apvP=결재대기">${wait }</a></h6>
								</div>
							</td>
							<td class="border border-white" rowspan="4"><div id="chart-container"></div></td>
						</tr>
						<tr>
							<td class="w-30">
								<div class="d-flex px-2 py-1 align-items-center">
									<div class="ms-4">
										<h6 class="text-sm mb-0">진행중</h6>
									</div>
								</div>
							</td>
							<td class="align-middle text-sm" style="width:50px;">
								<div class="col text-center">
									<h6 class="text-sm mb-0" style="width:50px;"><a href="/personalFile?apvP=진행중">${ing }</a></h6>
								</div>
							</td>

						</tr>
						<tr>
							<td class="w-30">
								<div class="d-flex px-2 py-1 align-items-center">
									<div class="ms-4">
										<h6 class="text-sm mb-0">결재완료</h6>
									</div>
								</div>
							</td>
							<td class="align-middle text-sm" style="width:50px;">
								<div class="col text-center">
									<h6 class="text-sm mb-0" style="width:50px;"><a href="/personalFile?apvP=결재완료">${success }</a></h6>
								</div>
							</td>

						</tr>
						<tr>
							<td class="w-30">
								<div class="d-flex px-2 py-1 align-items-center">
									<div class="ms-4">
										<h6 class="text-sm mb-0">반려</h6>
									</div>
								</div>
							</td>
							<td class="align-middle text-sm" style="width:50px;">
								<div class="col text-center">
									<h6 class="text-sm mb-0" style="width:50px;"><a href="/personalFile?apvP=반려">${reject }</a></h6>
								</div>
							</td>

						</tr>
					</tbody>
				</table>
			</div>
		</div>
        </div>
        
       		 <div class="col-3" id="table2">
					<div class="card ">
						<div class="card-header pb-0 p-3">
							<div class="d-flex justify-content-between">
								<h6 class="mb-2"><a href="/apvProgress">결재처리함</a></h6>
							</div>
						</div>
						<div class="table-responsive">
							<table class="table align-items-center ">
								<tbody>
									<tr>
										<td class="w-30">
											<div class="d-flex px-2 py-1 align-items-center">
												<div class="ms-4">
													<h6 class="text-sm mb-0">결재대기</h6>
												</div>
											</div>
										</td>
										<td class="align-middle text-sm" style="width:50px;">
											<div class="col text-center">
												<h6 class="text-sm mb-0" style="width:50px;"><a href="/apvProgress?apvP=결재대기">${AllWait }</a></h6>
											</div>
										</td>
										<td class="border border-white" rowspan="4"><div id="chart-container2"></div></td>
									</tr>
									<tr>
										<td class="w-30">
											<div class="d-flex px-2 py-1 align-items-center">
												<div class="ms-4">
													<h6 class="text-sm mb-0">진행중</h6>
												</div>
											</div>
										</td>
										<td class="align-middle text-sm" style="width:50px;">
											<div class="col text-center">
												<h6 class="text-sm mb-0" style="width:50px;"><a href="/apvProgress?apvP=진행중">${AllIng }</a></h6>
											</div>
										</td>

									</tr>
									<tr>
										<td class="w-30">
											<div class="d-flex px-2 py-1 align-items-center">
												<div class="ms-4">
													<h6 class="text-sm mb-0">결재완료</h6>
												</div>
											</div>
										</td>
										<td class="align-middle text-sm" style="width:50px;">
											<div class="col text-center">
												<h6 class="text-sm mb-0" style="width:50px;"><a href="/apvProgress?apvP=결재완료">${AllSuccess }</a></h6>
											</div>
										</td>

									</tr>
									<tr>
										<td class="w-30">
											<div class="d-flex px-2 py-1 align-items-center">
												<div class="ms-4">
													<h6 class="text-sm mb-0">반려</h6>
												</div>
											</div>
										</td>
										<td class="align-middle text-sm" style="width:50px;">
											<div class="col text-center">
												<h6 class="text-sm mb-0" style="width:50px;"><a href="/apvProgress?apvP=반려">${AllReject }</a></h6>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
        
        <!-- 근태 현황 -->
        <div class="col-3">
          <div class="card h-100 ">
            <div class="card-header pb-0 p-3">
              <div class="d-flex justify-content-between">
                <h6 class="mb-2">근태현황</h6>
              </div>
            </div>
            <div class="table-responsive">
              <table class="table align-items-center ">
                <tbody>
                  <tr>
                    <td class="w-30">
                      <div class="d-flex px-2 py-1 align-items-center">
                        <div class="ms-4">
                          <h6 class="text-sm mb-0">정상</h6>
                        </div>
                      </div>
                    </td>
                    <td>
                      <div class="text-center">
                        <h6 class="text-sm mb-0">${fn:length(list2) }</h6>
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <td class="w-30">
                      <div class="d-flex px-2 py-1 align-items-center">
                        <div class="ms-4">
                          <h6 class="text-sm mb-0">지각</h6>
                        </div>
                      </div>
                    </td>
                    <td>
                      <div class="text-center">
                        <h6 class="text-sm mb-0">${fn:length(list3) }</h6>
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <td class="w-30">
                      <div class="d-flex px-2 py-1 align-items-center">
                        <div class="ms-4">
                          <h6 class="text-sm mb-0">조퇴</h6>
                        </div>
                      </div>
                    </td>
                    <td>
                      <div class="text-center">
                        <h6 class="text-sm mb-0">${fn:length(list4) }</h6>
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <td class="w-30">
                      <div class="d-flex px-2 py-1 align-items-center">
                        <div>
                        </div>
                        <div class="ms-4">
                          <h6 class="text-sm mb-0">결근</h6>
                        </div>
                      </div>
                    </td>
                    <td>
                      <div class="text-center">
                        <h6 class="text-sm mb-0">${fn:length(list5) }</h6>
                      </div>
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
        <div class="col-3">
          <div class="card h-100">
            <div class="card-header pb-0 p-3">
              <div class="d-flex justify-content-between">
                <h6 class="mb-2">연차현황</h6>
              </div>
            </div>
            <div class="table-responsive">
              <table class="table align-items-center ">
                <tbody class="table align-items-center">
                  <tr>
                    <td class="w-30">
                      <div class="d-flex px-2 py-1 align-items-center">
                        <div class="ms-4">
                          <h6 class="text-sm mb-0">총 연차</h6>
                        </div>
                      </div>
                    </td>
                    <td>
                      <div class="text-center">
                        <h6 class="text-sm mb-0">${mannual }</h6>
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <td class="w-30">
                      <div class="d-flex px-2 py-1 align-items-center">
                        <div class="ms-4">
                          <h6 class="text-sm mb-0">사용연차</h6>
                        </div>
                      </div>
                    </td>
                    <td>
                      <div class="text-center">
                        <h6 class="text-sm mb-0">${usemannual }</h6>
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <td class="w-30">
                      <div class="d-flex px-2 py-1 align-items-center">
                        <div class="ms-4">
                          <h6 class="text-sm mb-0">남은연차</h6>
                        </div>
                      </div>
                    </td>
                    <td>
                      <div class="text-center">
                        <h6 class="text-sm mb-0">${mannual-usemannual }</h6>
                      </div>
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>

      <%@ include file="include/footer.jsp" %>
     </div>
    
  </main>


<!-- 출근 유효성검사  -->
<script>
	function startWork() {
		
		var endDto = '<c:out value="${endDto }"/>';
		
		if (confirm("출근 하시겠습니까?")){
			if(endDto == ""){
				alert("출근 하셨습니다.");
			}else {
				alert("이미출근 하셨습니다.");
				return false;
			}
			
		}else {
			alert("취소 하셨습니다.");
			return false;
		}
		
	}
</script>

<!-- 퇴근 유효성검사  -->
<script>
	function outWork() {
		
		var startTime = '<c:out value="${endDto.start_time }"/>';
		var endTime = '<c:out value="${endDto.end_time }"/>';
		
		if (confirm("퇴근 하시겠습니까?")){
			if(endTime == "" && startTime == ""){
				alert("출근후 눌러주세요.");
				return false
			}else if(endTime == "") {
				alert("퇴근 하셨습니다.");
			}else {
				alert("이미퇴근 하셨습니다.");
				return false
			}
		}else {
			alert("취소 하셨습니다.");
			return false
		}
		
	}
</script>
  
  <script src="https://fastly.jsdelivr.net/npm/echarts@5.4.1/dist/echarts.min.js"></script>
  <script type="text/javascript"> //개인문서함
    var dom = document.getElementById('chart-container');
    var myChart = echarts.init(dom, null, {
      renderer: 'canvas',
      useDirtyRect: false
    });
    var app = {};

    var option;

    option = {
      tooltip: {
        trigger: 'item'
      },

      series: [
        {
          name: '개인문서함',
          type: 'pie',
          radius: ['40%', '70%'],
          avoidLabelOverlap: true,
          label: {
            show: false,
            position: 'center'
          },
          emphasis: {
            label: {
              show: false,
              fontSize: 40,
              fontWeight: 'bold'
            }
          },
          labelLine: {
            show: false
          },
          data: [
            { value: ${ing}, name: '진행중'},
            { value: ${success}, name: '결재완료' },
            { value: ${wait}, name: '결재대기' },
            { value: ${reject}, name: '반려' }
          ]
        }
      ]
    };

    if (option && typeof option === 'object') {
      myChart.setOption(option);
    }

    window.addEventListener('resize', myChart.resize);
    </script>
    
  <script type="text/javascript"> //결제처리함
    var dom = document.getElementById('chart-container2');
    var myChart2 = echarts.init(dom, null, {
      renderer: 'canvas2',
      useDirtyRect: false
    });
    var app = {};

    var option;

    option = {
      tooltip: {
        trigger: 'item'
      },

      series: [
        {
          name: '결재처리함',
          type: 'pie',
          radius: ['40%', '70%'],
          avoidLabelOverlap: true,
          label: {
            show: false,
            position: 'center'
          },
          emphasis: {
            label: {
              show: false,
              fontSize: 40,
              fontWeight: 'bold'
            }
          },
          labelLine: {
            show: false
          },
          data: [
            { value: ${AllIng}, name: '진행중'},
            { value: ${AllSuccess}, name: '결재완료' },
            { value: ${AllWait}, name: '결재대기' },
            { value: ${AllReject}, name: '반려' }
          ]
        }
      ]
    };

    if (option && typeof option === 'object') {
      myChart2.setOption(option);
    }

    window.addEventListener('resize', myChart2.resize);
    </script>
  
  	<!--   
  <script type="text/javascript">
function times() {
	var clock = document.getElementById("clock");
	var now = new Date();
	var weekday = new Array(7);
	weekday[0] = "일요일";
	weekday[1] = "월요일";
	weekday[2] = "화요일";
	weekday[3] = "수요일";
	weekday[4] = "목요일";
	weekday[5] = "금요일";
	weekday[6] = "토요일";
	var week = weekday[now.getDay()];
	clock.innerHTML = now.getFullYear() + "년 " +
					 (now.getMonth()+1) + "월 " +
					  now.getDate() + "일 " +
					  now.getHours() + "시 " +
					  now.getMinutes() + "분 " +
					  now.getSeconds() + "초 " + 
					  week;

	setTimeout("times()", 1000);
	}

	window.onload = function() {
	times();
	};
	
});
</script>
 -->
</body>

</html>