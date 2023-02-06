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
<style>
#box {
  size:210mm 297mm; /*A4*/
  margin:0mm
}
* {
    -webkit-print-color-adjust: exact !important;   /* Chrome, Safari, Edge */
    color-adjust: exact !important;                 /*Firefox*/
}
@media print {
   	.noPrint {
       display: none;
    }
}

</style>
</head>

<body class="g-sidenav-show   bg-gray-100">
	
	<div class="min-height-300 position-absolute w-100" style="background-color:#03A9F4;"></div>

	<!-- 사이드바  -->
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
             <a href="/attendance?mno=${dto.mno }">
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
        </li>
        
        <!-- ----------------------------- 전자결재 --------------------------------- -->
        <li class="nav-item dropdown"><a
					class="nav-link active collapsed" data-bs-target="#tables-nav2"
					data-bs-toggle="collapse" href="#">
						<div
class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
							<i class="ni ni-tv-2 text-primary text-sm opacity-10"></i>
						</div> <span class="nav-link-text ms-1">전자결재</span>
				</a>
        
        <ul id="tables-nav2" class="nav-content collapse "data-bs-parent="#sidebar-nav">
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
						<li><a href="/oldFile"> <i class="bi bi-circle"></i>
								<span>오래된문서함</span>
						</a></li>
		</ul></li>
        
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
             <a href="/admin/page">
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
          <h6 class="font-weight-bolder text-white mb-0"></h6>
        </nav>

       <!-- 로그인헤더  -->
		<%@ include file="../include/header.jsp" %>
			</div>
		</nav>
		<!-- End Navbar -->









<!-- ==========================================================내작업======================  -->
	<div class="container bg-white p-1 rounded" style="min-width:1400px;">
	<div style="position:relative;left:72%;top:100px;"><input class="btn text-white" type="button" style="background:#607e19;margin-right:10px" onClick="Print()" value="출력"/><a href="/apvProgress"><input class="btn btn-primary" type="button" value="목록으로" /></a></div> 

	<div id="box" class="border border-secondary border-opacity-25 border-2 rounded" style="margin-top:100px;width:1000px;align:center;min-height:1200px;margin-left:180px;margin-right:auto;">
	<div style="height:200px;">
		<table class="table table-borderless">
			<tr class="align-bottom" style="height:100px;">
				<th style="width:900px;font-size:25px;text-align:center;" colspan="6">
					<h3>${ddto.dotype }</h3>
				</th>
			</tr>
			<tr class="noPrint" style="height:50px;">
				<td>
					<input class="btn btn-primary" type="hidden" value="선택" />
				</td>
				<c:choose>
					<c:when test="${adto.approgress == 0 }">
						<c:if test="${ddto.doprogress eq '결재대기' }">
							<form action="/apvProgressOk1" method="post">
							<td style="width:50px;"><input class="btn btn-success" type="submit" style="" value="승인" onclick="return confirm('승인하시겠습니까?');"/></td>
							<td style="width:50px;"><a href="/apvProgressNo?dono=${ddto.dono }"><input class="btn btn-danger" type="button" style="margin:auto;" value="반려" onclick="return confirm('반려하시겠습니까?');"/></a></td>
						</c:if>
						<c:if test="${ddto.doprogress eq '진행중' }">
							<form action="/apvProgressOk2" method="post">
							<td style="width:50px;"><input class="btn btn-success" type="submit" style="" value="승인" onclick="return confirm('승인하시겠습니까?');"/></td>
							<td style="width:50px;"><a href="/apvProgressNo2?dono=${ddto.dono }"><input class="btn btn-danger" type="button" style="margin:auto;" value="반려" onclick="return confirm('반려하시겠습니까?');"/></a></td>
						</c:if>
					</c:when>
				</c:choose>
			</tr>
		</table>
	</div>
	<div style="width:1000px;margin-left:auto;margin-right:auto;">
		<table class="table table-bordered align-middle" style="margin-left:4%;width:61%;float:left;">
			<tr class="bg-secondary p-2 text-dark bg-opacity-10 w-25 border border-1" style="text-align:center;">
				<th>이름</th>
				<th>직책</th>
				<th>부서</th>
				<th>사번</th>
				<th>작성일자</th>
			</tr>
			<tr style="text-align:center;">
				<td class="border border-1" style="height:70px;">${mdto.mname }</td>
				<td class="border border-1" style="height:70px;">${mdto.mrank }</td>
				<td class="border border-1" style="height:70px;">${mdto.oname }</td>
				<td class="border border-1" style="height:70px;">${mdto.mno }</td>
				<td class="border border-1" style="height:70px;">${ddto.dodate }</td>
				<input type="hidden" name="mno" value="${mdto.mno }" />
			</tr>
		</table>
		<table class="table table-bordered align-middle" style="width:25%;float:right;text-align:center;margin-right:50px;margin-bottom:50px;">
			<tr class="bg-secondary p-2 text-dark bg-opacity-10 w-25 border border-1">
				<th style="width:100px;">팀장</th>
				<th style="width:100px;">부장</th>
			</tr>
			<tr>
				<td class="border border-1" style="height:70px;"><c:if test="${ddto.doprogress eq '진행중' ||ddto.doprogress eq '결재완료' }"><img src="${dto11.fpath }" alt="" style="height:50px;"/></c:if></td>
				<td class="border border-1" style="height:70px;"><c:if test="${ddto.doprogress eq '결재완료' }"><img src="${dto12.fpath }" alt="" style="height:50px;"/></c:if></td>
			</tr>
		</table>
	</div>

	<c:choose>
		<c:when test="${form eq '연차신청서' }">
			<jsp:include page="form/vacationView.jsp" />
		</c:when>
		<c:when test="${form eq '업무보고서' }">
			<jsp:include page="form/businessReportView.jsp" />
		</c:when>
	</c:choose>
	
	<div style="width:1000px;text-align:center;margin-left:auto;margin-right:auto;">
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

<!-- 프린터 출력 스크립트 -->	
  <script type="text/javascript">

  var initBody
  window.onafterprint = afterPrint;
  
  function Print(){
    initBody = document.body.innerHTML;
    document.body.innerHTML = box.innerHTML;

    setTimeout(function(){
	    window.print();
    	
    },100)
    
  }

  function afterPrint(){
    document.body.innerHTML = initBody;
  }
  </script>
	
	
	
	
	
	
	
	
	
	</main>

	<!--   Core JS Files   -->
	<script src="./assets/js/core/popper.min.js"></script>
	<script src="./assets/js/core/bootstrap.min.js"></script>
	<script src="./assets/js/plugins/perfect-scrollbar.min.js"></script>
	<script src="./assets/js/plugins/smooth-scrollbar.min.js"></script>
	<script src="./assets/js/plugins/chartjs.min.js"></script>
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
	<script src="./assets/js/argon-dashboard.min.js?v=2.0.4"></script>
</body>

</html>