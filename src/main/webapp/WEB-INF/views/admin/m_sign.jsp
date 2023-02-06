<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="apple-touch-icon" sizes="76x76"
	href="./assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="./assets/img/favicon.png">
<title>PeopleCrew</title>
<!--     Fonts and icons     -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700"
	rel="stylesheet" />
<!-- Nucleo Icons -->
<link href="../resources/assets/css/nucleo-icons.css" rel="stylesheet" />
<link href="../resources/assets/css/nucleo-svg.css" rel="stylesheet" />
<!-- Font Awesome Icons -->
<script src="https://kit.fontawesome.com/42d5adcbca.js"
	crossorigin="anonymous"></script>
<link href="../resources/assets/css/nucleo-svg.css" rel="stylesheet" />
<!-- CSS Files -->
<link id="pagestyle"
	href="../resources/assets/css/argon-dashboard.css?v=2.0.4"
	rel="stylesheet" />
	
<!-- daum address  -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
	
<!--input value 체크 -->
<script type="text/javascript">
	function Check(){
		if(mname.value == ""){
			mname.focus();
			alert('이름을 입력하세요');
			return false
		}else if (mphone.value == ""){
			mphone.focus();
			alert('전화번호를 입력하세요');
			return false
		}else if (mbirth1.value == ""){
			mbirth1.focus();
			alert('생년월일 입력하세요');
			return false
		}else if (mbirth2.value == ""){
			mbirth2.focus();
			alert('월 선택하세요');
			return false
		}else if (mbirth3.value == ""){
			mbirth3.focus();
			alert('일 입력하세요');
			return false
		}else if (memail.value == ""){
			memail.focus();
			alert('이메일을 입력하세요');
			return false
		}else if (zipcode.value == "" || maddress.value == "" || maddress2.value == ""){
			btn.focus();
			alert('주소찾기를 눌러 주소를 검색하세요');
			return false
		}else if (mrank.value == ""){
			mrank.focus();
			alert('직급을 선택하세요');
			return false
		}else if (msal.value == ""){
			msal.focus();
			alert('급여를 입력하세요');
			return false
		}else if (password.value == ""){
			password.focus();
			alert('비밀번호를 입력하세요');
			return false
		}else if (ono.value == ""){
			ono.focus();
			alert('부서를 선택하세요');
			return false
		}else if (ophone.value == ""){
			ophone.focus();
			alert('부서번호를 입력하세요');
			return false
		}else if (role.value == ""){
			role.focus();
			alert('권한을 선택해주세요');
			return false
		}
	} 
</script>

<!-- 폰번호 -하이픈 자동입력 -->
  <script type="text/javascript">
  	function phone(target) {
	    target.value = target.value
	        .replace(/[^0-9]/g, '')
	        .replace(/(^02.{0}|^01.{1}|[0-9]{3,4})([0-9]{3,4})([0-9]{4})/g, "$1-$2-$3");
	}
  </script> 
	
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
        <ul id="b-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="/calendar/list">
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
        <ul id="e-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="/board/list">
              <i class="bi bi-circle"></i>
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
         <span>인사관리 (관리자)</span>
        </a>
        <ul id="f-nav" class="nav-content collapse show" data-bs-parent="#sidebar-nav">
          <li>
            <a href="/admin/sign" class="nav-link active">
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
					<h6 class="font-weight-bolder text-white mb-0">사원조회</h6>
				</nav>

				<!-- 로그인 헤더  -->
				<%@ include file="../include/header.jsp"%>

			</div>
		</nav>
		<!-- End Navbar -->

		<form action="sign" method="post" onsubmit="return Check()" >
			<div class="container-fluid py-4">
				<div class="row justify-content-center">

					<div class="col-md-8">
						<div class="card">
							<div class="card-header pb-0">
								<div class="d-flex align-items-center">
									<p class="mb-0">사원등록</p>
									<button type="submit" class="btn btn-info btn-sm ms-auto">등록</button>
									&nbsp; <a href="admin2" class="btn btn-danger btn-sm">취소</a>
								</div>
							</div>
							<div class="card-body">
								<p class="text-uppercase text-sm">사원정보</p>
								<div class="row" style="margin-top: 20px">
									<div class="col-md-6">
										<div class="form-group">
											<label for="example-text-input" class="form-control-label">이름</label>
											<input class="form-control" name="mname" id="mname" type="text">
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label for="example-text-input" class="form-control-label">이메일</label>
											<input class="form-control" name="memail" id="memail" type="email" placeholder="">
										</div>
									</div>
									<div class="col-md-6" style="margin-top: 25px">
										<div class="form-group">
											<label for="example-text-input" class="form-control-label">전화번호</label>
											<input class="form-control" name="mphone" id="mphone" type="text" oninput="phone(this)" placeholder="숫자만 입력하세요">
										</div>
									</div>
									<div class="col-md-6" style="margin-top: 25px">
										<div class="form-group">
											<label for="example-text-input" class="form-control-label">비밀번호</label>
											<input class="form-control" name="password" id="password" type="password">
											<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
										</div>
									</div>
									<div class="col-md-4" style="margin-top: 25px">
										<div class="form-group">
											<label for="example-text-input" class="form-control-label">생년</label>
											<input class="form-control" id="mbirth1" name="mbirth1" type="text" placeholder="년(4자)">
										</div>
									</div>
									<div class="col-md-4" style="margin-top: 25px">
										<div class="form-group">
											<label for="example-text-input" class="form-select-label">월</label>
											<select class="form-select" id="mbirth2" name="mbirth2" size="1">
												<option value="">월</option>
												<option value=01>1월</option>
												<option value=02>2월</option>
												<option value=03>3월</option>
												<option value=04>4월</option>
												<option value=05>5월</option>
												<option value=06>6월</option>
												<option value=07>7월</option>
												<option value=08>8월</option>
												<option value=09>9월</option>
												<option value=10>10월</option>
												<option value=11>11월</option>
												<option value=12>12월</option>
											</select>
										</div>
									</div>
									<div class="col-md-4" style="margin-top: 25px">
										<div class="form-group">
											<label for="example-text-input" class="form-control-label">일</label>
											<input class="form-control" id="mbirth3" name="mbirth3" type="text" placeholder="일">
										</div>
									</div>
								</div>
								
								<hr class="horizontal dark">
								
								<div>
								<div class="col-md-2">
									<div class="form-group"
										style="text-align: left;; margin-top: 28px; margin-bottom: 4px;">
										<button type="button" class="btn btn-primary" id="btn">주소찾기</button>
									</div>
								</div>
								<div class="row">
									<div class="col-md-2">
										<div class="form-group">
											<label for="example-text-input" class="form-control-label">우편번호</label>
											<input class="form-control" name="zipcode" id="zipcode" type="text">
										</div>
									</div>
									<div class="col-md-10">
										<div class="form-group">
											<label for="example-text-input" class="form-control-label">주소</label>
											<input class="form-control" name="maddress" id="maddress" type="text">
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group">
											<label for="example-text-input" class="form-control-label">상세주소</label>
											<input class="form-control" name="maddress2" id="maddress2" type="text">
										</div>
									</div>
								</div>
								
								<hr class="horizontal dark">
								
								<div class="row">
									<div class="col-md-4">
										<div class="form-group">
											<label for="example-text-input" class="form-select-label">직급</label>
											<select class="form-select" id="mrank" name="mrank" size="1">
												<option value="">직급</option>
												<option value="사원">사원</option>
												<option value="주임">주임</option>
												<option value="대리">대리</option>
												<option value="과장">과장</option>
												<option value="부장">부장</option>
											</select>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group">
											<label for="example-text-input" class="form-control-label">급여</label>
											<input class="form-control" name="msal" id="msal" type="text">
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group">
											<label for="example-text-input" class="form-select-label">권한</label>
											<select class="form-select" id="role" name="role" size="1">
												<option value="">권한</option>
												<option value="ROLE_USER">ROLE_USER</option>
												<option value="ROLE_ADMIN">ROLE_ADMIN</option>
											</select>
										</div>
									</div>
									
									<div class="col-md-6">
										<div class="form-group">
											<label for="example-text-input" class="form-select-label">부서명</label>
											<select class="form-select" id="ono" name="ono" size="1">
												<option value="">부서</option>
												<option value=1001>총무부</option>
												<option value=1002>경리부</option>
												<option value=2001>품질관리부</option>
												<option value=3011>생산1팀</option>
												<option value=3012>생산2팀</option>
												<option value=3021>상품관리부</option>
												<option value=3031>기술생산1팀</option>
												<option value=3032>기술생산2팀</option>
												<option value=4001>해외영업부</option>
												<option value=4002>국내영업부</option>
												<option value=4003>고객관리부</option>
												<option value=5011>개발1팀</option>
												<option value=5012>개발2팀</option>
												<option value=5021>유지보수팀</option>
												<option value=5031>부설연구소</option>
											</select>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label for="example-text-input" class="form-control-label">부서번호</label>
											<input class="form-control" name="ophone" id="ophone" type="text" value="">
										</div>
									</div>
								</div>
								<hr class="horizontal dark">

							</div>
						</div>
					</div>
				</div>
			</div>
			</div>
		</form>

		<!-- 푸터  -->
		<%@ include file="../include/footer.jsp"%>

	</main>
	<!-- End main  -->

	

	<!-- 주소가져오기 -->
	<script type="text/javascript">
		/* daum 주소 가져오기 */
		window.onload = function() {
			var btn = document.getElementById("btn");
			btn.onclick = openKakaoPostcode;
		}
		function openKakaoPostcode() {
			new daum.Postcode(
					{
						oncomplete : function(data) {

							document.getElementById("zipcode").value = data.zonecode;
							document.getElementById("maddress").value = data.roadAddress;
						}
					}).open();
		}
	</script>

	<!-- 부서 선택시 전화번호  -->
	<script type="text/javascript">
		$("#ono").change(function() {
			if ($(this).val() == "1001") {
				$("#ophone").val("02-8387-1001");
			} else if ($(this).val() == "1002") {
				$("#ophone").val("02-8387-1002");
			} else if ($(this).val() == "2001") {
				$("#ophone").val("02-6063-2001");
			} else if ($(this).val() == "3011") {
				$("#ophone").val("02-6063-3011");
			} else if ($(this).val() == "3012") {
				$("#ophone").val("02-6063-3012");
			} else if ($(this).val() == "3021") {
				$("#ophone").val("02-6715-3021");
			} else if ($(this).val() == "3031") {
				$("#ophone").val("02-6715-3031");
			} else if ($(this).val() == "3032") {
				$("#ophone").val("02-6715-3032");
			} else if ($(this).val() == "4001") {
				$("#ophone").val("02-4773-4001");
			} else if ($(this).val() == "4002") {
				$("#ophone").val("02-4773-4002");
			} else if ($(this).val() == "4003") {
				$("#ophone").val("02-4773-4003");
			} else if ($(this).val() == "5011") {
				$("#ophone").val("02-9982-5011");
			} else if ($(this).val() == "5012") {
				$("#ophone").val("02-9982-5012");
			} else if ($(this).val() == "5021") {
				$("#ophone").val("02-9982-5021");
			} else if ($(this).val() == "5031") {
				$("#ophone").val("02-9982-5031");

			}
		});
	</script>

	<!-- 직급 선택시 급여(임금) -->
	<script type="text/javascript">
		$("#mrank").change(function() {
			if ($(this).val() == "사원") {
				$("#msal").val("2200000");
				$("#role").val("ROLE_USER");

			} else if ($(this).val() == "주임") {
				$("#msal").val("2500000");
				$("#role").val("ROLE_USER");
				
			} else if ($(this).val() == "대리") {
				$("#msal").val("2800000");
				$("#role").val("ROLE_USER");

			} else if ($(this).val() == "과장") {
				$("#msal").val("3900000");
				$("#role").val("ROLE_USER");

			} else if ($(this).val() == "부장") {
				$("#msal").val("5500000");
				$("#role").val("ROLE_USER");
				
			} 
		});
	</script>


	<!--   Core JS Files   -->
	<script src="../resources/assets/js/core/popper.min.js"></script>
	<script src="../resources/assets/js/core/bootstrap.min.js"></script>
	<script src="../resources/assets/js/plugins/perfect-scrollbar.min.js"></script>
	<script src="../resources/assets/js/plugins/smooth-scrollbar.min.js"></script>
	<script src="../resources/assets/js/plugins/chartjs.min.js"></script>
	<script>
		var ctx1 = document.getElementById("chart-line").getContext("2d");

		var gradientStroke1 = ctx1.createLinearGradient(0, 230, 0, 50);

		gradientStroke1.addColorStop(1, 'rgba(94, 114, 228, 0.2)');
		gradientStroke1.addColorStop(0.2, 'rgba(94, 114, 228, 0.0)');
		gradientStroke1.addColorStop(0, 'rgba(94, 114, 228, 0)');
		new Chart(ctx1, {
			type : "line",
			data : {
				labels : [ "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct",
						"Nov", "Dec" ],
				datasets : [ {
					label : "Mobile apps",
					tension : 0.4,
					borderWidth : 0,
					pointRadius : 0,
					borderColor : "#5e72e4",
					backgroundColor : gradientStroke1,
					borderWidth : 3,
					fill : true,
					data : [ 50, 40, 300, 220, 500, 250, 400, 230, 500 ],
					maxBarThickness : 6

				} ],
			},
			options : {
				responsive : true,
				maintainAspectRatio : false,
				plugins : {
					legend : {
						display : false,
					}
				},
				interaction : {
					intersect : false,
					mode : 'index',
				},
				scales : {
					y : {
						grid : {
							drawBorder : false,
							display : true,
							drawOnChartArea : true,
							drawTicks : false,
							borderDash : [ 5, 5 ]
						},
						ticks : {
							display : true,
							padding : 10,
							color : '#fbfbfb',
							font : {
								size : 11,
								family : "Open Sans",
								style : 'normal',
								lineHeight : 2
							},
						}
					},
					x : {
						grid : {
							drawBorder : false,
							display : false,
							drawOnChartArea : false,
							drawTicks : false,
							borderDash : [ 5, 5 ]
						},
						ticks : {
							display : true,
							color : '#ccc',
							padding : 20,
							font : {
								size : 11,
								family : "Open Sans",
								style : 'normal',
								lineHeight : 2
							},
						}
					},
				},
			},
		});
	</script>
	<script>
		var win = navigator.platform.indexOf('Win') > -1;
		if (win && document.querySelector('#sidenav-scrollbar')) {
			var options = {
				damping : '0.5'
			}
			Scrollbar.init(document.querySelector('#sidenav-scrollbar'),
					options);
		}
	</script>
	<!-- Github buttons -->
	<script async defer src="https://buttons.github.io/buttons.js"></script>
	<!-- Control Center for Soft Dashboard: parallax effects, scripts for the example pages etc -->
	<script src="../resources/assets/js/argon-dashboard.min.js?v=2.0.4"></script>
</body>

</html>