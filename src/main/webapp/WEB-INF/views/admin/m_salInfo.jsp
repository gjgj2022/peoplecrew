<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
  
  <style type="text/css">
  	#salstyle th {
  		text-align: center;
  	}
  	#salstyle td {
  		text-align: center;
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
        <ul id="e-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="/board/list">
              <span>공지사항</span>
            </a>
          </li>
        </ul>
      </li><!-- End 게시판 Nav -->
      
      <li class="nav-item">
        <a class="nav-link" data-bs-target="#f-nav" data-bs-toggle="collapse" href="#">
          <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-lock" viewBox="0 0 16 16">
 			 	<path d="M11 5a3 3 0 1 1-6 0 3 3 0 0 1 6 0ZM8 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4Zm0 5.996V14H3s-1 0-1-1 1-4 6-4c.564 0 1.077.038 1.544.107a4.524 4.524 0 0 0-.803.918A10.46 10.46 0 0 0 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h5ZM9 13a1 1 0 0 1 1-1v-1a2 2 0 1 1 4 0v1a1 1 0 0 1 1 1v2a1 1 0 0 1-1 1h-4a1 1 0 0 1-1-1v-2Zm3-3a1 1 0 0 0-1 1v1h2v-1a1 1 0 0 0-1-1Z"/>
			 </svg>
          </div>
         <span>인사관리</span>
        </a>
        <ul id="f-nav" class="nav-content collapse show" data-bs-parent="#sidebar-nav">
          <li>
            <a href="/admin/sign" >
              <span>사원정보등록</span>
            </a>
          </li>
          <li>
            <a href="/admin/admin2" >
              <span>사원조회</span>
            </a>
          </li>
          <li>
            <a href="/admin/admin3" class="nav-link active">
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
      
    </ul>
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
          <h6 class="font-weight-bolder text-white mb-0">인사관리 - 관리자</h6>
        </nav>
       
       <!-- 로그인 헤더  -->
		<%@ include file="../include/header.jsp" %>
		       
      </div>
    </nav>
    <!-- End Navbar -->
    &emsp;


     <!-- 급여차트 -->
     <div class="container-fluid row flex-nowrap" style="margin-left: 0px;">
       <div class="card w-65" style="margin-right: 10px;">
         <div class="card-header border-0">
           <div class="d-flex justify-content-between">
             <h3 class="card-title">부서별 최고 급여 / 평균 급여</h3>
           </div>
         </div>
         <div class="card-body">

           <div class="position-relative mb-4">
             <canvas id="sales-chart" height="400"></canvas>
           </div>

           <div class="d-flex flex-row justify-content-end">
             <span class="mr-2">
               <i class="fas fa-square text-danger"></i> 부서 최고 급여 &nbsp;&nbsp;
             </span>
             <span>
               <i class="fas fa-square text-info" style=""></i>  부서 평균 급여
             </span>
           </div>
           
         </div>
       </div>
       <!-- /.card -->
       
       <div class="card w-35">
         <div class="card-header border-0">
           <div class="d-flex justify-content-between">
             <h3 class="card-title">직급별 평균 급여</h3>
           </div>
         </div>
         <div class="card-body">

           <div class="position-relative mb-4">
             <canvas id="sales-chart2" height="400"></canvas>
           </div>

           <div class="d-flex flex-row justify-content-end">
             <span class="mr-2">
               <i class="fas fa-square text-primary"></i> 직급 최고 급여 &nbsp;&nbsp;
             </span>
             <span>
               <i class="fas fa-square text-success"></i>  직급 평균 급여
             </span>
           </div>
           
         </div>
       </div>
       <!-- /.card -->
     </div>
     <!-- /급여차트end -->
     
    
    <div class="container-fluid py-4">
      <div class="row">
        <div class="col-12">
          <div class="card mb-4">
            <div class="card-header pb-0">
              <span style="font-size: 18px; font-weight: bolder;">급여정보</span>
              <form action="/admin/search2" method="get" name="search-form" id="sform">
              <div class="input-group " style="width: 20%; float: right;">
	              <span class="input-group-text text-body">
              	  <a href="#" onclick="document.getElementById('sform').submit();"><i class="fas fa-search" aria-hidden="true"></i></a>
              	  </span>
	              <input type="text" class="form-control" name="keyword" id="keyword" value="" placeholder="검색어를 입력해주세요.">
           	  </div>
              </form>
            </div>
            
			<br>
			
            <div class="card-body px-0 pt-0 pb-2">
              <div class="table-responsive p-0">
                <table class="table align-items-center mb-0">
                  <thead>
                    <tr>
                      <th class="text-uppercase text-secondary text-s font-weight-bolder opacity-7 ps-6">지급일자</th>
                      <th class="text-uppercase text-secondary text-s font-weight-bolder opacity-7 ps-2">사번</th>
                      <th class="text-uppercase text-secondary text-s font-weight-bolder opacity-7 ps-4">이름</th>
                      <th class="text-uppercase text-secondary text-s font-weight-bolder opacity-7 ps-4">부서</th>
                      <th class="text-uppercase text-secondary text-s font-weight-bolder opacity-7 ps-4">지급총액</th>
                      <th class="text-uppercase text-secondary text-s font-weight-bolder opacity-7 ps-4">공제총액</th>
                	  <th class="text-uppercase text-secondary text-s font-weight-bolder opacity-7 ps-4">실수령액</th>
                      <th class="text-uppercase text-secondary text-s font-weight-bolder opacity-7 ps-1">급여상세</th>
                    </tr>
                  </thead>
                  
                  <tbody>
                  <c:forEach var="dto" items="${list }" varStatus="vs">
                    <tr>
                      <td class="ps-6">
                        <span class="text-secondary text-s font-weight-bolder">2023.01.25</span> <!--지급일자-->
                      </td>
                      <td class="ps-2">
                        <span class="text-secondary text-s font-weight-bolder">${dto.mno }</span> <!--사번-->
                      </td>
                      <td class="ps-4">
                        <span class="text-secondary text-s font-weight-bolder">${dto.mname }</span> <!--이름-->
                      </td>
                      <td class="ps-4">
                        <span class="text-secondary text-s font-weight-bolder">${dto.oname }</span> <!--부서-->
                      </td>
                      <td class="ps-4"> 
                        <span class="text-secondary text-s font-weight-bolder"> <!--지급총액-->
                        	<fmt:formatNumber value="${dto.msal}" pattern="###,###,###" />원
                        </span> 
                      </td>
                      <td class="ps-4">
                        <span class="text-secondary text-s font-weight-bolder"> <!--공제총액-->	
							                        		<%-- 국민연금료 --%>
							                        		<%-- 건강보험료 --%>
							                        		<%-- 장기요양보험료 --%>
							                        		<%-- 고용보험료 --%>
							                        		<%-- 근로소득세 --%>
							                        		<%-- 지방소득세 --%>
                        	<fmt:formatNumber value="
                        	${dto.msal * 0.045 + 
                        	dto.msal * 0.03545 +
                        	(dto.msal * 0.03545) * 0.1281 +
                        	dto.msal * 0.09 +
                        	dto.msal * 0.025 +
                        	(dto.msal * 0.025) * 0.1 }" pattern="###,###,###" />원
                        </span> 
                      </td>
                      <td class="ps-4">
                        <span class="text-secondary text-s font-weight-bolder"> <!--실수령액-->
                        	<fmt:formatNumber value="
                        	${dto.msal -
                        	(dto.msal * 0.045 + 	
                        	dto.msal * 0.03545 +
                        	(dto.msal * 0.03545) * 0.1281 +
                        	dto.msal * 0.09 +
                        	dto.msal * 0.025 +
                        	(dto.msal * 0.025) * 0.1) }" pattern="###,###,###" />원
                        </span> 
                      </td>
                      
                      <!--sal?mno=${dto.mno }  -->
                      <td class="ps-1">
                      
                        <a 	data-mno="${dto.mno }" data-msal="${dto.msal }" data-mname="${dto.mname }" 
                        	data-oname="${dto.oname }" data-mrank="${dto.mrank}" data-mdate="${dto.mdate}"
                        	data-bs-target="#msal" data-bs-toggle="modal"
                        	class="btn bg-gradient-success" style="margin-bottom: 0;"> 보기
                    	</a>
                      </td>
                    </tr>
                    
                  </c:forEach>

                	<tr>
						<td colspan="8">
							<nav aria-label="Page navigation example">
							  <ul class="pagination justify-content-center" style="margin-bottom: 0; margin-top: 10px;" >
							 
							  	<c:choose>
								  	<c:when test="${map.isPre }">
								  		<c:choose>
								  			<c:when test="${empty keyword}">
								  			 	<li class="page-item"><a class="page-link" href="admin3?cp=${map.currentPage-5 }">이전</a></li>
								  			</c:when>
								  			<c:otherwise>
											    <li class="page-item"><a class="page-link" href="search2?keyword=${keyword}&cp=${map.currentPage-5 }">이전</a></li>
								  			</c:otherwise>
								  		</c:choose>
								  	</c:when>
							 	</c:choose>
								  	
								  	<c:forEach var="i" begin="${map.startPage }" end="${map.endPage }">
								  		<c:choose>
								  			<c:when test="${empty keyword}">
											    <li class="page-item"><a class="page-link" href="admin3?cp=${i}">${i }</a></li>
								  			</c:when>
								  			<c:otherwise>
											    <li class="page-item"><a class="page-link" href="search2?keyword=${keyword}&cp=${i}">${i }</a></li>
								  			</c:otherwise>
								  		</c:choose> 
								  	</c:forEach>
								  	
								<c:choose>
								    <c:when test="${map.isNext }">
								    	<c:choose>
								  			<c:when test="${empty keyword}">
											    <li class="page-item"><a class="page-link" href="admin3?cp=${map.currentPage+5 }">다음</a></li>
								  			</c:when>
								  			<c:otherwise>
											    <li class="page-item"><a class="page-link" href="search2?keyword=${keyword}&cp=${map.currentPage+5 }">다음</a></li>
								  			</c:otherwise>
								  		</c:choose>
								    </c:when>
							    </c:choose>
							    
							  </ul>
							</nav>
						</td>
					</tr>
					
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>
      
      
        <!--modal -->
		<div class="modal fade" id="msal" tabindex="-1" 
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<h1 class="modal-title fs-5" id="exampleModalLabel">급여명세서</h1>
					</div>
					
					<div class="modal-body">
						<div id="salstyle">
						<table class="table table-info">
						  <thead>
						    <tr>
						      <th scope="col">부서</th>
						      <th scope="col">직급</th>
						      <th scope="col">성명</th>
						      <th scope="col">입사일</th>
						    </tr>
						  </thead>
						  <tbody>
						    <tr>
						      <th id="oname"></th>
						      <th id="mrank"></th>
						      <th id="mname"></th>
						      <th id="mdate"></th>
						    </tr>
						  </tbody>
						  </table>
						  <br>
						  
						  <table class="table table-hover table-bordered">
						  <h6>1. 실 지급액</h6>
						  <thead>
						    <tr>
						      <th scope="col">지급 합계</th>
						      <th scope="col">공제 합계</th>
						      <th scope="col">실 수령액</th>
						    </tr>
						  </thead>
						  <tbody>
						    <tr>
						      <th id="msal1"></th>
						      <th id="msal2"></th>
						      <th id="msal3"></th>
						    </tr>
						  </tbody>
						  </table>
						  
						  <br>
						  <table class="table table-hover table-bordered">
						  <h6>2. 지급 내역</h6>
						  <thead>
						    <tr>
						      <th colspan="2">지급항목</th>
						      <th colspan="2">공제항목</th>
						    </tr>
						  </thead>
						  <tbody>
						    <tr>
						      <th>기본급여</th>
						      <td id="msal4"></td>
						      <th>국민연금료</th>
						      <td id="msala"></td>
						    </tr>
						    <tr>
						      <th>시간외수당</th>
						      <td>100,000원</td>
						      <th>건강보험료</th>
						      <td id="msalb"></td>
						    </tr>
						    <tr>
						      <th>식 대</th>
						      <td>100,000원</td>
						      <th>장기요양보험료</th>
						      <td id="msalc"></td>
						    </tr>
						    <tr>
						      <th>상여금</th>
						      <td>0원</td>
						      <th>고용보험료</th>
						      <td id="msald"></td>
						    </tr>
						    <tr>
						      <th>직책수당</th>
						      <td>0원</td>
						      <th>근로소득세</th>
						      <td id="msale"></td>
						    </tr>
						    <tr>
						      <th>교육지원</th>
						      <td>0원</td>
						      <th>지방소득세</th>
						      <td id="msalf"></td>
						    </tr>
						  </tbody>
						  </table>
						  <br>
						  </div>
					</div>
														
					<div class="modal-footer">
						<button type="button" class="btn btn-primary"  data-bs-dismiss="modal" >닫기</button>
					</div>
					
				</div>
			</div>
		</div>
     
   
    <!-- 푸터  -->
    <%@ include file="../include/footer.jsp" %>
     
     </div>
  </main>
   <!-- End main  -->  
   
  
  
  <!--급여 관련-->
  <script type="text/javascript">
    $(document).ready(function() {
        $("#msal").on("show.bs.modal", function(e) {
            var mno = $(e.relatedTarget).data('mno');
            var m = $(e.relatedTarget).data('msal');
            var mname = $(e.relatedTarget).data('mname');
            var oname = $(e.relatedTarget).data('oname');
            var mrank = $(e.relatedTarget).data('mrank');
            var mdate = $(e.relatedTarget).data('mdate');
			
            let msal = Math.round(m-200000)											// 기본급여
			let msala = Math.round(m*0.045)  										// 국민연금료
			let msalb = Math.round(m*0.03545)  										// 건강보험료
			let msalc = Math.round((m * 0.03545) * 0.1281) 					 		// 장기요양보험료
			let msald = Math.round(m*0.09) 											// 고용보험료
			let msale = Math.round(m*0.025)  										// 근로소득세
			let msalf = Math.round((m*0.025) * 0.1) 								// 지방소득세
			let msaltd = Math.round(msala+msalb+msalc+msald+msale+msalf) 			// 공제총액
			let msalSum = Math.round(m -(msala+msalb+msalc+msald+msale+msalf)) 		// 실지급액
																     				
																           	
            //console.log(mno,msal,mname,mrank);
            
            $("#mname").text(mname);
            $("#oname").text(oname);
            $("#mrank").text(mrank);
            $("#mdate").text(mdate);
            
            $("#msal1").text(m.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',')+"원"); // 급여
            $("#msal2").text(msaltd.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',')+"원"); 	// 공제총액
            $("#msal3").text(msalSum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',')+"원");	// 실지급액
            
            $("#msal4").text(msal.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',')+"원");	// 기본금
            $("#msala").text(msala.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',')+"원");	// 국민연금료
            $("#msalb").text(msalb.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',')+"원");	// 건강보험료
            $("#msalc").text(msalc.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',')+"원");	// 장기요양보험료
            $("#msald").text(msald.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',')+"원");	// 고용보험료
            $("#msale").text(msale.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',')+"원");	// 근로소득세
            $("#msalf").text(msalf.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',')+"원");	// 지방소득세
            
            
        });
    });
	</script>
  
  
  <!--부서별 임금 차트-->
  <script type="text/javascript">
  $(function () {
	  'use strict'

	  var ticksStyle = {
	    fontColor: '#495057',
	    fontStyle: 'bold'
	  }

	  var mode = 'index'
	  var intersect = true
	  
	  var $salesChart = $('#sales-chart')
	  
	  // eslint-disable-next-line no-unused-vars
	  var salesChart = new Chart($salesChart, {
	    type: 'bar',
	    data: {
	      labels: ['총무부', '경리부', '품질관리부', '생산1팀', '생산2팀', '상품관리부', '기술생산1팀', '기술생산2팀', '헤외영업부', '국내영업부', '고객관리부', '개발1팀', '개발2팀', '유지보수팀', '부설연구소'],
	      
	      datasets: [
	        {
	          backgroundColor: '#E53A40',
	          borderColor: '#E53A40',
	          label:'부서 최고 급여',
	          data: [${avg[0].mmsal},${avg[1].mmsal}, ${avg[2].mmsal}, ${avg[3].mmsal}, ${avg[4].mmsal},${avg[5].mmsal}, 
	        	  ${avg[6].mmsal}, ${avg[7].mmsal}, ${avg[8].mmsal}, ${avg[9].mmsal},${avg[10].mmsal}, ${avg[11].mmsal}, 
	        	  ${avg[12].mmsal}, ${avg[13].mmsal}, ${avg[14].mmsal}]
	        },
	        {
	          backgroundColor: '#11CDEF',
	          borderColor: '#11CDEF',
	          label:'부서 평균 급여',
	          data: [${avg[0].amsal},${avg[1].amsal}, ${avg[2].amsal}, ${avg[3].amsal}, ${avg[4].amsal},${avg[5].amsal}, 
	        	  ${avg[6].amsal}, ${avg[7].amsal}, ${avg[8].amsal}, ${avg[9].amsal},${avg[10].amsal}, ${avg[11].amsal}, 
	        	  ${avg[12].amsal}, ${avg[13].amsal}, ${avg[14].amsal}]
	        }
	      ]
	  
	    },
     
	    options: {
	      maintainAspectRatio: false,
	      tooltips: {
	        mode: mode,
	        intersect: intersect
	      },
	      hover: {
	        mode: mode,
	        intersect: intersect
	      },
	      legend: {
	        display: false
	      },
	      scales: {
	        yAxes: [{
	          // display: false,
	          gridLines: {
	            display: true,
	            lineWidth: '4px',
	            color: 'rgba(0, 0, 0, .2)',
	            zeroLineColor: 'transparent'
	          },
	          ticks: $.extend({
	            beginAtZero: true,

	            // Include a dollar sign in the ticks
	            callback: function (value) {
	              if (value >= 10000) {
	                value /= 10000
	                value += '만'
	              }

	              return value + '원'
	            }
	          }, ticksStyle)
	        }],
	        xAxes: [{
	          display: true,
	          gridLines: {
	            display: false
	          },
	          ticks: ticksStyle
	        }]
	      }
	    }
	  })
	})
  </script>
  
  <!--직급별 임금 차트 -->
  <script type="text/javascript">
  $(function () {
	  'use strict'

	  var ticksStyle = {
	    fontColor: '#495057',
	    fontStyle: 'bold'
	  }

	  var mode = 'index'
	  var intersect = true
	  
	  var $salesChart = $('#sales-chart2')
	  
	  // eslint-disable-next-line no-unused-vars
	  var salesChart = new Chart($salesChart, {
	    type: 'bar',
	    data: {
	      labels: ['사원','주임','대리','팀장','부장'],
	      
	      datasets: [
	        {
	          backgroundColor: '#5E72E4',
	          borderColor: '#5E72E4',
	          label:'직급 최고 급여',
	          data: [${avg2[0].mmsal},${avg2[1].mmsal},${avg2[2].mmsal},${avg2[3].mmsal},${avg2[4].mmsal}]
	        },
	        {
	          backgroundColor: '#2DCE89',
	          borderColor: '#2DCE89',
	          label:'직급 평균 급여',
	          data: [${avg2[0].amsal},${avg2[1].amsal},${avg2[2].amsal},${avg2[3].amsal},${avg2[4].mmsal}]
	        }
	      ]
	  
	    },
     
	    options: {
	      maintainAspectRatio: false,
	      tooltips: {
	        mode: mode,
	        intersect: intersect
	      },
	      hover: {
	        mode: mode,
	        intersect: intersect
	      },
	      legend: {
	        display: false
	      },
	      scales: {
	        yAxes: [{
	          // display: false,
	          gridLines: {
	            display: true,
	            lineWidth: '4px',
	            color: 'rgba(0, 0, 0, .2)',
	            zeroLineColor: 'transparent'
	          },
	          ticks: $.extend({
	            beginAtZero: true,

	            // Include a dollar sign in the ticks
	            callback: function (value) {
	              if (value >= 10000) {
	                value /= 10000
	                value += '만'
	              }

	              return value + '원'
	            }
	          }, ticksStyle)
	        }],
	        xAxes: [{
	          display: true,
	          gridLines: {
	            display: false
	          },
	          ticks: ticksStyle
	        }]
	      }
	    }
	  })
	})
  </script>
  
</body>

</html>