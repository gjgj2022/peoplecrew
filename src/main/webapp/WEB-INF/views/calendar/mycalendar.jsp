<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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