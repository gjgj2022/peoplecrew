<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="../assets/img/favicon.png">
<title>Argon Dashboard 2 by Creative Tim</title>
<!--     Fonts and icons     -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
<!-- Nucleo Icons -->
<link href="../assets/css/nucleo-icons.css" rel="stylesheet" />
<link href="../assets/css/nucleo-svg.css" rel="stylesheet" />
<!-- Font Awesome Icons -->
<script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
<link href="../assets/css/nucleo-svg.css" rel="stylesheet" />
<!-- CSS Files -->
<link id="pagestyle" href="../assets/css/argon-dashboard.css?v=2.0.4" rel="stylesheet" />

<!-- ajax -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
</head>

<body class="g-sidenav-show   bg-gray-100">
	<div class="min-height-300 bg-primary position-absolute w-100"></div>
	<aside class="sidenav bg-white navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-4 " id="sidenav-main">
		<div class="sidenav-header">
			<i class="fas fa-times p-3 cursor-pointer text-secondary opacity-5 position-absolute end-0 top-0 d-none d-xl-none" aria-hidden="true" id="iconSidenav"></i> <a class="navbar-brand m-0" href=" https://demos.creative-tim.com/argon-dashboard/pages/dashboard.html " target="_blank"> <img src="../assets/img/logo-ct-dark.png" class="navbar-brand-img h-100" alt="main_logo"> <span class="ms-1 font-weight-bold">PeopleCrew</span>
			</a>
		</div>
		<hr class="horizontal dark mt-0">

		<div class="collapse navbar-collapse  w-auto " id="sidenav-collapse-main">

			<ul class="navbar-nav" data-widget="treeview" role="menu" data-accordion="false">
				<li class="nav-item dropdown"><a class="nav-link active collapsed" data-bs-target="#tables-nav6" data-bs-toggle="collapse" href="#">
						<div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
							<i class="ni ni-tv-2 text-primary text-sm opacity-10"></i>
						</div> <span class="nav-link-text ms-1">게시판</span>
				</a>
					<ul id="tables-nav6" class="nav-content collapse " data-bs-parent="#sidebar-nav">
						<li><a href="/board/list"> <i class="bi bi-circle"></i> <span>공지사항</span>
						</a></li>
					</ul></li>


				<li class="nav-item dropdown"><a class="nav-link active collapsed" data-bs-target="#tables-nav2" data-bs-toggle="collapse" href="#">
						<div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
							<i class="ni ni-tv-2 text-primary text-sm opacity-10"></i>
						</div> <span class="nav-link-text ms-1">업무관리</span>
				</a>

					<ul id="tables-nav2" class="nav-content collapse " data-bs-parent="#sidebar-nav">
						<li><a href="/calendar/list"> <i class="bi bi-circle"></i> <span>calendar</span>
						</a></li>
						<li><a href="/calendar/mycalendar"> <i class="bi bi-circle"></i> <span>오늘의 일정</span>
						</a></li>
					</ul></li>
			</ul>

		</div>
	</aside>
	<main class="main-content position-relative border-radius-lg ">
		<jsp:include page="../navbar.jsp"></jsp:include>
		<jsp:include page="calendarAjax.jsp" />

		<script>
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
</style>
		<div class="container-fluid py-4">
			<div class="row">

				<div class="col-lg-2">
					<div class="card">
						<div class="card mb-4">
							<div class="card-header pb-0 px-3">
								<div class="card-body pt-4 p-3">


									<input type="button" class="btn bg-gradient-primary" value="일정등록" onclick="insertOpen()">


									<!-- 체크박스 -->
									<label>부서별 조회</label>
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
								
									<label>내 일정보기</label>
									<div class="form-check">
										<input class="form-check-input" type="checkbox" name="onocheck" value="1" onchange="checkBox(this)"> <label class="form-check-label" for="flexCheckChecked">개인<span class="color1"> ●</span></label>
									</div>
									<!-- 체크박스  -->

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

		<jsp:include page="../footer.jsp" />
	</main>
</body>

</html>