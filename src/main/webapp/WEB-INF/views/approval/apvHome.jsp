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
<title>전자결재홈</title>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>

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

	<!-- 사이드바  -->
	<%@ include file="../include/sidebar.jsp" %>

	<main class="main-content position-relative border-radius-lg ">
		<!-- Navbar -->
		<nav
			class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl "
			id="navbarBlur" data-scroll="false">
			<div class="container-fluid py-1 px-3">
				<nav aria-label="breadcrumb">
					<h6 class="font-weight-bolder text-white mb-0">전자결재홈</h6>
				</nav>

       <!-- 로그인헤더  -->
		<%@ include file="../include/header.jsp" %>

				</div>

		</nav>
		<!-- End Navbar -->















		<!-- ===============================================================내작업=========================================================== -->
		<div class="container-fluid py-4" style="width:1300px;padding-left:0px;">
			<div class="row">

				<div class="col-lg-7 mb-lg-0 mb-4" id="table1">
					<div class="card ">
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
												<div>
													<img src="">
												</div>
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
												<div>
													<img src="">
												</div>
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
												<div>
													<img src="">
												</div>
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
												<div>
													<img src="">
												</div>
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

			<c:if test="${sum != 0 }">
				<div class="col-lg-7 mb-lg-0 mb-4" id="table2">
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
												<div>
													<img src="">
												</div>
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
												<div>
													<img src="">
												</div>
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
												<div>
													<img src="">
												</div>
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
												<div>
													<img src="">
												</div>
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
			</c:if>
				
				<div class="col-lg-7 mb-lg-0 mb-4" id="table3">
					<div class="card ">
						<div class="card-header pb-0 p-3">
							<div class="d-flex justify-content-between">
								<h6 class="mb-2">내가 최근 올린 결재</h6>
							</div>
						</div>
						<div class="table-responsive" style="min-height:200px;">
							<table class="table align-items-center ">
								<tbody style="text-align:center;">
									<tr class="text-sm mb-0">
										<th style="width:20%;">문서번호</th>
										<th style="width:10%;">분류</th>
										<th style="width:35%;">제목</th>
										<th style="width:12%;">기안자</th>
										<th style="width:11%;">기안일</th>
										<th style="width:12%;">진행상태</th>
									</tr>
									<c:forEach var="list" items="${ingList }" varStatus="status">
									<tr class="text-sm mb-0">
										<td>${list.dono }</td>
										<td>${list.dotype }</td>
										<td><a href="#">${list.dotitle }</a></td>
										<td>${mlist1[status.index].mname }</td>
										<td>${list.dodate }</td>
										<td>${list.doprogress }</td>
									</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				
				
				<div class="col-lg-7 mb-lg-0 mb-4" id="table3" >
					<div class="card ">
						<div class="card-header pb-0 p-3">
							<div class="d-flex justify-content-between">
								<h6 class="mb-2">내가 최근 받은 결재</h6>
							</div>
						</div>
						<div class="table-responsive" style="min-height:200px;">
							<table class="table align-items-center " >
								<tbody style="text-align:center;">
									<tr class="text-sm mb-0">
										<th style="width:20%;">문서번호</th>
										<th style="width:10%;">분류</th>
										<th style="width:35%;">제목</th>
										<th style="width:12%;">기안자</th>
										<th style="width:11%;">기안일</th>
										<th style="width:12%;">진행상태</th>
									</tr>
									<c:forEach var="list2" items="${endList }" varStatus="status">
									<tr class="text-sm mb-0">
										<td>${list2.dono }</td>
										<td>${list2.dotype }</td>
										<td><a href="#">${list2.dotitle }</a></td>
										<td>${mlist2[status.index].mname }</td>
										<td>${list2.dodate }</td>
										<td>${list2.doprogress }</td>
									</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			
			
			</div>

		</div>











		<!-- ===============================================================내작업=========================================================== -->
		<!-- 푸터  -->
		<%@ include file="../include/footer.jsp"%>


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
	  <script src="https://fastly.jsdelivr.net/npm/echarts@5.4.1/dist/echarts.min.js"></script>
    <script type="text/javascript">
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
    <script type="text/javascript">
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
	<!-- Github buttons -->
	<script async defer src="https://buttons.github.io/buttons.js"></script>
	<!-- Control Center for Soft Dashboard: parallax effects, scripts for the example pages etc -->
	<script src="./assets/js/argon-dashboard.min.js?v=2.0.4"></script>
</body>

</html>