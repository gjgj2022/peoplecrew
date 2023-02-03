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
<title>결재처리함</title>
<!--     Fonts and icons     -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700"
	rel="stylesheet" />
<!-- Nucleo Icons -->
<link href="./assets/css/nucleo-icons.css" rel="stylesheet" />
<link href="./assets/css/nucleo-svg.css" rel="stylesheet" />
<!-- Font Awesome Icons -->
<script src="https://kit.fontawesome.com/42d5adcbca.js"
	crossorigin="anonymous"></script>
<link href="./assets/css/nucleo-svg.css" rel="stylesheet" />
<!-- CSS Files -->
<link id="pagestyle" href="./assets/css/argon-dashboard.css?v=2.0.4"
	rel="stylesheet" />
</head>

<body class="g-sidenav-show   bg-gray-100">
	<div class="min-height-300 bg-primary position-absolute w-100"></div>

	<!-- 사이드바  -->
	<%@ include file="../include/sidebar.jsp" %>
	
	<main class="main-content position-relative border-radius-lg ">
		<!-- Navbar -->
		<nav
			class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl "
			id="navbarBlur" data-scroll="false">
			<div class="container-fluid py-1 px-3">
				<nav aria-label="breadcrumb">
					<h6 class="font-weight-bolder text-white mb-0">결재처리함</h6>
				</nav>

			       <!-- 로그인헤더  -->
		<%@ include file="../include/header.jsp" %>
			</div>
		</nav>
		<!-- End Navbar -->















		<!-- ===============================================================내작업=========================================================== -->
		<div class="container-fluid py-4">
			<div class="row">
				
				
				<div class="col-lg-7 mb-lg-0 mb-4" id="table5">
					<div class="card ">
						<div class="card-header pb-0 p-3">
							<div class="d-flex justify-content-between">
								<h5 class="mb-2">결재처리함</h5>
							</div>
						</div>
						<div class="table-responsive">
							<table class="table align-items-center ">
								<tbody>
									<%
										String apvP = request.getParameter("apvP");
									
										String btn1 = "light";
										String btn2 = "light";
										String btn3 = "light";
										String btn4 = "light";
										String btn5 = "light";
									
										if(apvP == null||apvP.equals("전체문서")){
											btn1 = "primary";
										}else if(apvP.equals("결재대기")){
											btn2 = "primary";
										}else if(apvP.equals("진행중")){
											btn3 = "primary";
										}else if(apvP.equals("결재완료")){
											btn4 = "primary";
										}else if(apvP.equals("반려")){
											btn5 = "primary";
										}
									%>
									
									<tr>
										<td colspan="6">
											<a href="/apvProgress?apvP=전체문서"><input type="button" class="btn btn-<%=btn1 %> btn-sm" style="--bs-btn-padding-x: .6rem;" value="전체문서"/></a>
											<a href="/apvProgress?apvP=결재대기"><input type="button" class="btn btn-<%=btn2 %> btn-sm" style="--bs-btn-padding-x: .6rem;" value="결재대기" /></a>
											<a href="/apvProgress?apvP=진행중"><input type="button" class="btn btn-<%=btn3 %> btn-sm" style="--bs-btn-padding-x: .6rem;" value="진행중" /></a>
											<a href="/apvProgress?apvP=결재완료"><input type="button" class="btn btn-<%=btn4 %> btn-sm" style="--bs-btn-padding-x: .6rem;" value="결재완료" /></a>
											<a href="/apvProgress?apvP=반려"><input type="button" class="btn btn-<%=btn5 %> btn-sm" style="--bs-btn-padding-x: .6rem;" value="반려" /></a>
										</td>
									</tr>

									<tr class="text-sm mb-0" style="text-align:center;">
										<th style="width:20%;">문서번호</th>
										<th style="width:10%;">분류</th>
										<th style="width:35%;">제목</th>
										<th style="width:12%;">기안자</th>
										<th style="width:11%;">기안일</th>
										<th style="width:12%;">진행상태</th>
									</tr>
									<%
										if(apvP == null||apvP.equals("전체문서")){
									
									%>
									<c:forEach var="list2" items="${list2 }" varStatus="status">
										<tr class="text-sm mb-0" style="text-align:center;">
											<td>${list2.dono }</td>
											<td>${list2.dotype }</td>
											<td><a href="/apvProgressView?dono=${list2.dono }&dotype=${list2.dotype }&mno=${list2.mno}">${list2.dotitle }</a></td>
											<td>${mlist2[status.index].mname }</td>
											<td>${list2.dodate }</td>
											<td>${list2.doprogress }</td>
										</tr>
									</c:forEach>
									<%
										}else if(!apvP.equals("전체문서")){
									%>
									<c:forEach var="list1" items="${list1 }" varStatus="status">
										<tr class="text-sm mb-0" style="text-align:center;">
											<td>${list1.dono }</td>
											<td>${list1.dotype }</td>
											<td><a href="/apvProgressView?dono=${list1.dono }&dotype=${list1.dotype }&mno=${list1.mno}">${list1.dotitle }</a></td>
											<td>${mlist1[status.index].mname }</td>
											<td>${list1.dodate }</td>
											<td>${list1.doprogress }</td>
										</tr>
									</c:forEach>
									<%
										}
									%>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				
				

			</div>
		</div>











		<!-- ===============================================================내작업=========================================================== -->











	</main>

	<!--   Core JS Files   -->
	<script src="./assets/js/core/popper.min.js"></script>
	<script src="./assets/js/core/bootstrap.min.js"></script>
	<script src="./assets/js/plugins/perfect-scrollbar.min.js"></script>
	<script src="./assets/js/plugins/smooth-scrollbar.min.js"></script>
	<script src="./assets/js/plugins/chartjs.min.js"></script>

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
	<script src="./assets/js/argon-dashboard.min.js?v=2.0.4"></script>
</body>

</html>