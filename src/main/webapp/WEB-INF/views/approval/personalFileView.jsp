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
<link id="pagestyle" href="./assets/css/argon-dashboard.css?v=2.0.4"
	rel="stylesheet" />
</head>

<body class="g-sidenav-show   bg-gray-100">
	<div class="min-height-300 position-absolute w-100" style="background-color:#5e72e4;"></div>
	<aside
		class="sidenav bg-white navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-4 "
		id="sidenav-main">
		<div class="sidenav-header">
			<i
				class="fas fa-times p-3 cursor-pointer text-secondary opacity-5 position-absolute end-0 top-0 d-none d-xl-none"
				aria-hidden="true" id="iconSidenav"></i> <a class="navbar-brand m-0"
				href=" https://demos.creative-tim.com/argon-dashboard/pages/dashboard.html "
				target="_blank"> <img src="./assets/img/logo-ct-dark.png"
				class="navbar-brand-img h-100" alt="main_logo"> <span
				class="ms-1 font-weight-bold">PeopleCrew</span>
			</a>
		</div>
		<hr class="horizontal dark mt-0">

		<div class="collapse navbar-collapse  w-auto "
			id="sidenav-collapse-main">

			<ul class="navbar-nav" data-widget="treeview" role="menu"
				data-accordion="false">


				<li class="nav-item dropdown"><a
					class="nav-link active collapsed" data-bs-target="#tables-nav2"
					data-bs-toggle="collapse" href="#">
						<div
							class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
							<i class="ni ni-tv-2 text-primary text-sm opacity-10"></i>
						</div> <span class="nav-link-text ms-1">전자결재</span>
				</a>

					<ul id="tables-nav2" class="nav-content collapse "
						data-bs-parent="#sidebar-nav">
						<li><a href="/apvHome"> <i class="bi bi-circle"></i> <span>전자결재홈</span>
						</a></li>
						<li><a href="/apvWrite?form=연차신청서"> <i class="bi bi-circle"></i> <span>기안작성</span>
						</a></li>
						<li><a href="/personalFile?apvP=전체문서"> <i class="bi bi-circle"></i>
								<span>개인문서함</span>
						</a></li>
						<li><a href="/apvProgress"> <i class="bi bi-circle"></i>
								<span>결재처리함</span>
						</a></li>
						<li><a href="/formBox"> <i class="bi bi-circle"></i> <span>서식보관함</span>
						</a></li>
					</ul></li>



				<li class="nav-item"><a class="nav-link active " href="#">
						<div
							class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
							<i class="ni ni-calendar-grid-58 text-warning text-sm opacity-10"></i>
						</div> <span class="nav-link-text ms-1">최종플젝</span>
				</a></li>
			</ul>

		</div>

	</aside>
	<main class="main-content position-relative border-radius-lg ">
		<!-- Navbar -->
		<nav
			class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl "
			id="navbarBlur" data-scroll="false">
			<div class="container-fluid py-1 px-3">
				<nav aria-label="breadcrumb">
					<h6 class="font-weight-bolder text-white mb-0"></h6>
				</nav>

				<div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4"
					id="navbar">
					<div class="ms-md-auto pe-md-3 d-flex align-items-center"></div>
					<ul class="navbar-nav  justify-content-end">
						<li class="nav-item d-flex align-items-center"><a
							href="javascript:;"
							class="nav-link text-white font-weight-bold px-0"> <i
								class="fa fa-user me-sm-1"></i> <span class="d-sm-inline d-none">Sign
									In</span>
						</a></li>
						<li class="nav-item d-xl-none ps-3 d-flex align-items-center">
							<a href="javascript:;" class="nav-link text-white p-0"
							id="iconNavbarSidenav">
								<div class="sidenav-toggler-inner">
									<i class="sidenav-toggler-line bg-white"></i> <i
										class="sidenav-toggler-line bg-white"></i> <i
										class="sidenav-toggler-line bg-white"></i>
								</div>
						</a>
						</li>
						<li class="nav-item px-3 d-flex align-items-center"><a
							href="javascript:;" class="nav-link text-white p-0"> <i
								class="fa fa-cog fixed-plugin-button-nav cursor-pointer"></i>
						</a></li>
						<li class="nav-item dropdown pe-2 d-flex align-items-center">
							<a href="javascript:;" class="nav-link text-white p-0"
							id="dropdownMenuButton" data-bs-toggle="dropdown"
							aria-expanded="false"> <i class="fa fa-bell cursor-pointer"></i>
						</a>
							<ul class="dropdown-menu  dropdown-menu-end  px-2 py-3 me-sm-n4"
								aria-labelledby="dropdownMenuButton">
								<li class="mb-2"><a class="dropdown-item border-radius-md"
									href="javascript:;">
										<div class="d-flex py-1">
											<div class="my-auto">
												<img src="./assets/img/team-2.jpg"
													class="avatar avatar-sm  me-3 ">
											</div>
											<div class="d-flex flex-column justify-content-center">
												<h6 class="text-sm font-weight-normal mb-1">
													<span class="font-weight-bold">New message</span> from Laur
												</h6>
												<p class="text-xs text-secondary mb-0">
													<i class="fa fa-clock me-1"></i> 13 minutes ago
												</p>
											</div>
										</div>
								</a></li>
								<li><a class="dropdown-item border-radius-md"
									href="javascript:;">
										<div class="d-flex py-1">
											<div
												class="avatar avatar-sm bg-gradient-secondary  me-3  my-auto">
												<svg width="12px" height="12px" viewBox="0 0 43 36"
													version="1.1" xmlns="http://www.w3.org/2000/svg"
													xmlns:xlink="http://www.w3.org/1999/xlink">
                          <title>credit-card</title>
                          <g stroke="none" stroke-width="1" fill="none"
														fill-rule="evenodd">
                            <g
														transform="translate(-2169.000000, -745.000000)"
														fill="#FFFFFF" fill-rule="nonzero">
                              <g
														transform="translate(1716.000000, 291.000000)">
                                <g
														transform="translate(453.000000, 454.000000)">
                                  <path class="color-background"
														d="M43,10.7482083 L43,3.58333333 C43,1.60354167 41.3964583,0 39.4166667,0 L3.58333333,0 C1.60354167,0 0,1.60354167 0,3.58333333 L0,10.7482083 L43,10.7482083 Z"
														opacity="0.593633743"></path>
                                  <path class="color-background"
														d="M0,16.125 L0,32.25 C0,34.2297917 1.60354167,35.8333333 3.58333333,35.8333333 L39.4166667,35.8333333 C41.3964583,35.8333333 43,34.2297917 43,32.25 L43,16.125 L0,16.125 Z M19.7083333,26.875 L7.16666667,26.875 L7.16666667,23.2916667 L19.7083333,23.2916667 L19.7083333,26.875 Z M35.8333333,26.875 L28.6666667,26.875 L28.6666667,23.2916667 L35.8333333,23.2916667 L35.8333333,26.875 Z"></path>
                                </g>
                              </g>
                            </g>
                          </g>
                        </svg>
											</div>
											<div class="d-flex flex-column justify-content-center">
												<h6 class="text-sm font-weight-normal mb-1">Payment
													successfully completed</h6>
												<p class="text-xs text-secondary mb-0">
													<i class="fa fa-clock me-1"></i> 2 days
												</p>
											</div>
										</div>
								</a></li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</nav>
		<!-- End Navbar -->









<!-- ==========================================================내작업======================  -->
	<div class="container bg-white p-2 rounded" style="min-width:1400px;">
	<div style="position:relative;left:192px;top:100px;"><a href="/personalFile"><input class="btn btn-primary" type="button" value="목록으로" /></a></div>
	<div class="border border-secondary border-opacity-25 border-2 rounded" style="margin-top:100px;width:1000px;align:center;min-height:1000px;margin-left:auto;margin-right:auto;">
	<div style="height:200px;">
		<table class="table table-borderless">
			<tr style="height:50px;">
				<td>
					<input type="hidden" name="dono" value="${dto.dono }" />
				</td>
				<c:if test="${dto.doprogress eq '결재대기' ||dto.doprogress eq '반려' }">
				<form action="/personalFileModify" method="post">
					<td style="width:50px;"><input class="btn btn-success" type="submit" style="" value="수정" /></td>
					<td style="width:50px;"><a href="/personalFileDelete?dono=${dto.dono }"><input class="btn btn-danger" type="button" style="" value="삭제" /></a></td>
					<td style="width:50px;"><a href="/personalFile"><input class="btn btn-light" type="button" value="취소" /></a></td>
				</c:if>
				
			</tr>
			<tr>
			<td colspan="4" style="text-align:center;"><h2>${dto.dotype }</h2></td>
			</tr>
		</table>
		<table class="table table-bordered align-middle" style="width:25%;float:right;text-align:center;margin-right:50px;">
			<tr class="bg-secondary p-2 text-dark bg-opacity-10 w-25">
				<th style="width:100px;">결재자</th>
				<th style="width:100px;">팀장</th>
			</tr>
			<tr>
				<td class="border" style="height:70px;"><c:if test="${dto.doprogress eq '진행중' ||dto.doprogress eq '결재완료' }"><img src="${dto11.fpath }" alt="" style="height:50px;"/></c:if></td>
				<td class="border" style="height:70px;"><c:if test="${dto.doprogress eq '결재완료' }"><img src="${dto12.fpath }" alt="" style="height:50px;"/></c:if></td>
			</tr>
		</table>
	</div>
	<div style="width:1000px;">
		

	</div>
	
	<c:choose>
		<c:when test="${form eq '연차신청서' }">
			<jsp:include page="form/vacationView.jsp" />
		</c:when>
		<c:when test="${form eq '업무보고서' }">
			<jsp:include page="form/businessReportView.jsp" />
		</c:when>
	</c:choose>
	
	<div style="width:1000px;">
	<table class="table table-borderless align-middle" style="width:25%;text-align:center;margin-left:auto;margin-right:auto;margin-bottom:50px;">
		<tr>
			<td style="padding-top:50px;">상기 명 본인은 위와같은 사유로 제출합니다.</td>
		</tr>
		<tr>
			<td style="padding-top:50px;">PeopleCrew</td>
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