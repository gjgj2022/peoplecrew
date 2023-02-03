<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
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
    
      <ul class="navbar-nav" data-widget="treeview" role="menu" data-accordion="false">
        <li class="nav-item dropdown">
          <a class="nav-link active collapsed" data-bs-target="#tables-nav1" data-bs-toggle="collapse" href="#">
            <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
              <i class="ni ni-tv-2 text-primary text-sm opacity-10"></i>
            </div>
            <span class="nav-link-text ms-1">인사정보</span>
          </a>
          
          <ul id="tables-nav1" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                              <li>
            <a href="#">
              <i class="bi bi-circle"></i>
              <span>Green Tables</span>
            </a>
          </li>
          <li>
            <a href="#">
              <i class="bi bi-circle"></i>
              <span>Data Tables</span>
            </a>
          </li>
        </ul>
        </li>
        
        <li class="nav-item dropdown">
          <a class="nav-link active collapsed" data-bs-target="#tables-nav2" data-bs-toggle="collapse" href="#">
            <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
              <i class="ni ni-tv-2 text-primary text-sm opacity-10"></i>
            </div>
            <span class="nav-link-text ms-1">업무관리</span>
          </a>
          
          <ul id="tables-nav2" class="nav-content collapse " data-bs-parent="#sidebar-nav">
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
        </li>
        
        <li class="nav-item dropdown">
          <a class="nav-link active collapsed" data-bs-target="#tables-nav3" data-bs-toggle="collapse" href="#">
            <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
              <i class="ni ni-tv-2 text-primary text-sm opacity-10"></i>
            </div>
            <span class="nav-link-text ms-1">근태관리</span>
          </a>
          
          <ul id="tables-nav3" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="#">
              <i class="bi bi-circle"></i>
              <span>General Tables</span>
            </a>
          </li>
          <li>
            <a href="#">
              <i class="bi bi-circle"></i>
              <span>Data Tables</span>
            </a>
          </li>
        </ul>
        </li>
        
        <li class="nav-item dropdown">
          <a class="nav-link active collapsed" data-bs-target="#tables-nav6" data-bs-toggle="collapse" href="#">
            <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
              <i class="ni ni-tv-2 text-primary text-sm opacity-10"></i>
            </div>
            <span class="nav-link-text ms-1">게시판</span>
          </a>
          <ul id="tables-nav6" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="/board/list">
              <i class="bi bi-circle"></i>
              <span>공지사항</span>
            </a>
          </li>
          <li>
            <a href="#">
              <i class="bi bi-circle"></i>
              <span>Data Tables</span>
            </a>
          </li>
        </ul>
        </li>
        
        <li class="nav-item dropdown">
          <a class="nav-link active collapsed" data-bs-target="#tables-nav4" data-bs-toggle="collapse" href="#">
            <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
              <i class="ni ni-tv-2 text-primary text-sm opacity-10"></i>
            </div>
            <span class="nav-link-text ms-1">인사관리 (관리자)</span>
          </a>
          
          <ul id="tables-nav4" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="/admin/sign">
              <i class="bi bi-circle"></i>
              <span>사원정보등록</span>
            </a>
          </li>
          <li>
            <a href="/admin/admin2">
              <i class="bi bi-circle"></i>
              <span>사원조회</span>
            </a>
          </li>
          <li>
            <a href="/admin/admin3">
              <i class="bi bi-circle"></i>
              <span>급여관리</span>
            </a>
          </li>
          <li>
            <a href="/admin/admin4">
              <i class="bi bi-circle"></i>
              <span>근태관리</span>
            </a>
          </li>
        </ul>
        </li>
        
      </ul>
    </div>
    
  </aside>


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
		<%@ include file="../include/header.jsp" %>
		    
      </div>
    </nav>
    <!-- End Navbar -->
<!-- ajax -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
		 
		
		<jsp:include page="calendarAjax.jsp" />

		<script>
			function insertOpen() {
				var popupWidth = 500;
				var popupHeight = 570;
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
</style>
		<div class="container-fluid py-4">
			<div class="row">

				<div class="col-lg-3">
					<div class="card">
						<div class="card mb-3">
							<div class="card-header pb-0 px-3">
								<div class="card-body pt-4 p-3">


									<div><input type="button" class="btn bg-gradient-info" value="일정등록" onclick="insertOpen()"></div>

									<!-- 체크박스 -->
									<label><i class="ni ni-tag"></i> 부서별 조회</label>
									<div class="form-check">
										<input class="form-check-input" type="checkbox" name="onocheck" value="2" id="checkAll" onchange="checkBox(this)" checked> <label class="form-check-label" for="flexCheckDefault"> 모두보기</label>
									</div>
									<div class="form-check">
										<input class="form-check-input" type="checkbox" name="onocheck" value="0" id="flexCheckDefault" onchange="checkBox(this)"> <label class="form-check-label" for="flexCheckDefault">일반 <span class="color0">●</span></label>
									</div>
									<div class="form-check">
										<input class="form-check-input" type="checkbox" name="onocheck" value="10" onchange="checkBox(this)"> <label class="form-check-label" for="flexCheckChecked">관리<span class="color10"> ●</span></label>
									</div>
									<div class="form-check">
										<input class="form-check-input" type="checkbox" name="onocheck" value="20" onchange="checkBox(this)"> <label class="form-check-label" for="flexCheckChecked">기술<span class="color20"> ●</span></label>
									</div>
									<div class="form-check">
										<input class="form-check-input" type="checkbox" name="onocheck" value="30" onchange="checkBox(this)"> <label class="form-check-label" for="flexCheckChecked">생산<span class="color30"> ●</span></label>
									</div>
									<div class="form-check">
										<input class="form-check-input" type="checkbox" name="onocheck" value="40" onchange="checkBox(this)"> <label class="form-check-label" for="flexCheckChecked">영업<span class="color40"> ●</span></label>
									</div>
									<div class="form-check">
										<input class="form-check-input" type="checkbox" name="onocheck" value="50" onchange="checkBox(this)"> <label class="form-check-label" for="flexCheckChecked">개발<span class="color50"> ●</span></label>
									</div>

									
									<!-- 체크박스  -->
									<label><i class="ni ni-tag"></i> 부서별 상세조회</label>
									<form name='form'>
										<select class="form-select" name='Step1' onchange='changes1Step(this.value)'>
											<option value="">상위부서</option>
											<option value="10">관리</option>
											<option value="20">기술</option>
											<option value="30">생산</option>
											<option value="40">영업</option>
											<option value="50">개발</option>
										</select> <select class="form-select" name='Step2' onchange='changes2Step(this.value)'>
											<option value="">하위부서</option>
										</select>
									</form>
									<br>
									<label><i class="ni ni-tag"></i> 내 일정보기</label>
									<div class="form-check">
										<input class="form-check-input" type="checkbox" name="onocheck" value="1" onchange="checkBox(this)"> <label class="form-check-label" for="flexCheckChecked">개인<span class="color1"> ●</span></label>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>



				<div class="col-lg-9 mb-lg-0 mb-4">
					<div class="card">
						<div class="card mb-4">
							<div class="card-header pb-0 px-3">
								<div class="card-body pt-4 p-3">

									<div class="card card-calendar">
										<!-- fullcalendar -->
										<div class="calendar" data-bs-toggle="calendar" id="calendar"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>

				<!--   Core JS Files   -->
	<script src="../assets/js/core/popper.min.js"></script>
	<script src="../assets/js/core/bootstrap.min.js"></script>
	<script src="../assets/js/plugins/perfect-scrollbar.min.js"></script>
	<script src="../assets/js/plugins/smooth-scrollbar.min.js"></script>
	<script src="../resources/assets/js/plugins/chartjs.min.js"></script>
	<%@ include file="../include/footer.jsp" %>
	</main>
</body>

</html>