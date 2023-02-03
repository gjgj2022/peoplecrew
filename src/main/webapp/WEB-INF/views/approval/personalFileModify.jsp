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
<link id="pagestyle" href="./assets/css/argon-dashboardApv.css?v=2.0.4"
	rel="stylesheet" />
</head>

<body class="g-sidenav-show   bg-gray-100">
	<div class="min-height-300 position-absolute w-100" style="background-color:#5e72e4;"></div>

	<!-- 사이드바  -->
	<%@ include file="../include/sidebar.jsp" %>

	<main class="main-content position-relative border-radius-lg ">
		<!-- Navbar -->
		<nav
			class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl "
			id="navbarBlur" data-scroll="false">
			<div class="container-fluid py-1 px-3">
				<nav aria-label="breadcrumb">
					<h6 class="font-weight-bolder text-white mb-0"></h6>
				</nav>

       <!-- 로그인헤더  -->
		<%@ include file="../include/header.jsp" %>
			</div>
		</nav>
		<!-- End Navbar -->









<!-- ==========================================================내작업======================  -->
	<div class="container bg-white p-2 rounded" style="min-width:1400px;">
	<div class="border border-secondary border-opacity-25 border-2 rounded" style="margin-top:100px;width:1000px;align:center;min-height:1200px;margin-left:140px;margin-right:auto;">
	<div style="height:200px;">
		<table class="table table-borderless">
			<tr class="align-bottom" style="height:100px;">
				<th style="width:900px;font-size:25px;" colspan="6"></th>
			</tr>
			<tr style="height:50px;">
				<td>
				</td>
				<c:if test="${ddto.doprogress eq '결재대기' ||ddto.doprogress eq '반려' }">
				<form action="/personalFileModifyOk" method="post">
					<td style="width:50px;"><input class="btn btn-success" type="submit" style="" value="확인" /></td>
					<td style="width:50px;"><a href="/personalFile"><input class="btn btn-light" type="button" value="취소" /></a></td>
				</c:if>
					<input type="hidden" name="dono" value="${ddto.dono }" />
				
			</tr>
			<tr>
			<td colspan="4" style="text-align:center;"><h2>${ddto.dotype }</h2></td>
			</tr>
		</table>
	</div>
	<div style="width:1000px;">
		

	</div>
	
	<c:choose>
		<c:when test="${form eq '연차신청서' }">
			<jsp:include page="form/vacation.jsp" />
		</c:when>
		<c:when test="${form eq '업무보고서' }">
			<jsp:include page="form/businessReport.jsp" />
		</c:when>
	</c:choose>
	
	<div>
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