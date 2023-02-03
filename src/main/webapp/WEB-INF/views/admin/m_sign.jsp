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

		<form action="sign" method="post" onsubmit="return Check()">
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
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="example-text-input" class="form-control-label">이름</label>
											<input class="form-control" name="mname" id="mname" type="text">
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label for="example-text-input" class="form-control-label">전화번호</label>
											<input class="form-control" name="mphone" id="mphone" type="text" oninput="phone(this)" placeholder="숫자만 입력하세요">
										</div>
									</div>
									<div class="col-md-2">
										<div class="form-group">
											<label for="example-text-input" class="form-control-label">생년</label>
											<input class="form-control" id="mbirth1" name="mbirth1" type="text" placeholder="년(4자)">
										</div>
									</div>
									<div class="col-md-2">
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
									<div class="col-md-2">
										<div class="form-group">
											<label for="example-text-input" class="form-control-label">일</label>
											<input class="form-control" id="mbirth3" name="mbirth3" type="text" placeholder="일">
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label for="example-text-input" class="form-control-label">이메일</label>
											<input class="form-control" name="memail" id="memail" type="email" placeholder="">
										</div>
									</div>
								</div>
								<hr class="horizontal dark">
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
									<div class="col-md-3">
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
									<div class="col-md-3">
										<div class="form-group">
											<label for="example-text-input" class="form-control-label">급여</label>
											<input class="form-control" name="msal" id="msal" type="text">
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label for="example-text-input" class="form-control-label">비밀번호</label>
											<input class="form-control" name="password" id="password" type="password">
											<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
										</div>
									</div>
									<div class="col-md-4">
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
									<div class="col-md-4">
										<div class="form-group">
											<label for="example-text-input" class="form-control-label">부서번호</label>
											<input class="form-control" name="ophone" id="ophone" type="text" value="">
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
								</div>
								<hr class="horizontal dark">

							</div>
						</div>
					</div>
		</form>

		<!-- 푸터  -->
		<%@ include file="../include/footer.jsp"%>

		</div>
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