<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="apple-touch-icon" sizes="76x76" href="./assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="./assets/img/favicon.png">
<title>attendance admin</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.1.0/Chart.bundle.min.js"></script>
<!--Fonts and icons     -->
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

            <a href="personnel_info/mypage?mno=${dto.mno }">

              <i class="bi bi-circle"></i>
              <span>마이페이지</span>
            </a>
          </li>
          <li>
            <a href="personnel_info/mypage_modi?mno=${dto.mno }">
              <i class="bi bi-circle"></i>
              <span>마이페이지 수정</span>
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
          <h6 class="font-weight-bolder text-white mb-0">Dashboard</h6>
        </nav>
       
       <!-- 로그인헤더  -->
		<%@ include file="../include/header.jsp" %>
		
      </div>
    </nav>
    <!-- End Navbar -->
    
     <form action="attmodify_admin" method="post">
      <div class="container-fluid py-4">
      <div class="row justify-content-center">
      
      <input type="hidden" name="mno" value="${dto.mno }">
       
        <div class="col-md-8">
          <div class="card">
            <div class="card-header pb-0">
              <div class="d-flex align-items-center">
                <p class="mb-0"><strong>근태수정</strong></p>
                <button type="submit" class="btn btn-info btn-sm ms-auto">수정</button>
                &nbsp;
                <a href="admin/page" class="btn btn-danger btn-sm">취소</a>
              </div>
            </div>
            <div class="card-body">
              <p class="text-uppercase text-sm">사원정보</p>
              <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="example-text-input" class="form-control-label">이름</label>
                    <input class="form-control" name="mname" type="text" value="${dto.mname }" readonly>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="example-text-input" class="form-control-label">전화번호</label>
                    <input class="form-control" name="mphone" id="mphone" type="text" oninput="phone(this)" value="${dto.mphone }" readonly>
                  </div>
                </div>
                <div class="col-md-2">
                  <div class="form-group">
                    <label for="example-text-input" class="form-control-label">생년(4자)</label>
                    <input class="form-control" id="mbirth1" name="mbirth1" type="text" value="${fn:substring(dto.mbirth,8,10)}" readonly>
                  </div>
                </div>
                <div class="col-md-2">
                  <div class="form-group">
                    <label for="example-text-input" class="form-select-label">월</label>
                    <input class="form-control" id="mbirth1" name="mbirth1" type="text" value="${fn:substring(dto.mbirth,5,7)}" readonly>
                  </div>
                </div>
                <div class="col-md-2">
                  <div class="form-group">
                    <label for="example-text-input" class="form-control-label">일</label>
                    <input class="form-control" id="mbirth3" name="mbirth3" type="text" value="${fn:substring(dto.mbirth,8,10)}" readonly>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="example-text-input" class="form-control-label">이메일</label>
                    <input class="form-control" name="memail" type="email" value="${dto.memail }" readonly>
                  </div>
                </div>
              </div>
              <hr class="horizontal dark">
              <div class="row">
                <div class="col-md-2">
                  <div class="form-group">
                    <label for="example-text-input" class="form-control-label">우편번호</label>
                    <input class="form-control" name="zipcode" id="zipcode" type="text" value="${dto.zipcode }" readonly>
                  </div>
                </div>
                <div class="col-md-10">
                  <div class="form-group">
                    <label for="example-text-input" class="form-control-label">주소</label>
                    <input class="form-control" name="maddress" id="maddress" type="text" value="${dto.maddress }" readonly>
                  </div>
                </div>
                <div class="col-md-12">
                  <div class="form-group">
                    <label for="example-text-input" class="form-control-label">상세주소</label>
                    <input class="form-control" name="maddress2" type="text" value="${dto.maddress2 }" readonly>
                  </div>
                </div>
              </div>
             <hr class="horizontal dark">
             <div class="row">
                <div class="col-md-4">
                  <div class="form-group">
                    <label for="example-text-input" class="form-select-label">직급</label>
                    <input class="form-control" name="mrank" type="text" value="${dto.mrank }" readonly>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="form-group">
                    <label for="example-text-input" class="form-control-label">ID</label>
                    <input class="form-control" name="mid" type="text" value="${dto.mid }" readonly>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="form-group">
                    <label for="example-text-input" class="form-control-label">비밀번호</label>
                    <input class="form-control" name="password" id="password" type="text" value="${dto.password }" readonly>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="form-group">
                    <label for="example-text-input" class="form-select-label">출근시간</label>
                    <input class="form-control" name="start_time" id="start_time" type="text" value="${admindto.start_time }">
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="form-group">
                    <label for="example-text-input" class="form-control-label">퇴근시간</label>
                    <input class="form-control" name="msal" id="msal" type="text" value="${admindto.end_time }">
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="form-group">
                    <label for="example-text-input" class="form-select-label">상태</label>
                    <select class="form-select" id="state" name="state" size="1">
						<option value="${admindto.state }">${admindto.state }</option>
						<option value="출근">출근</option>
						<option value="지각">지각</option>
						<option value="퇴근">퇴근</option>
						<option value="결근">결근</option>
						<option value="휴가">휴가</option>
					</select>
                    <%--<input class="form-control" name="mrank" type="text" value="${dto2.mrank }"> --%>
                  </div>
                </div>
            </div>
          </div>
        </div>
        </div>
        </div>
        </div>
        
      </form>
    
	<%@ include file="../include/footer.jsp" %>
  </main>
  <!--   Core JS Files   -->
  <script src="../resources/assets/js/core/popper.min.js"></script>
  <script src="../resources/assets/js/core/bootstrap.min.js"></script>
  <script src="../resources/assets/js/plugins/perfect-scrollbar.min.js"></script>
  <script src="../resources/assets/js/plugins/smooth-scrollbar.min.js"></script>
  <script src="../resources/assets/js/plugins/chartjs.min.js"></script>
  
  <!-- 막대차트 -->
  <script>
  chart = new Chart(document.getElementById('myChart1').getContext('2d'), {
	    type: 'line',
	    data: {
	        labels: [" ","지각", "조퇴", "결근", "연차"],
	        datasets: [{
	                label: '개발팀',
	                data: [0, 0, 110, 120,100],
	                backgroundColor: 'green',
	            },
	            {
	                label: '인사팀',
	                data: [0, 0, 20, 10, 120],
	                backgroundColor: 'pink',
	            },
	            {
	                label: '운영팀',
	                data: [0,0, 20, 10, 130],
	                backgroundColor: 'yellow',
	            },
	            {
	                label: '회계팀',
	                data: [0, 0, 20, 10, 140],
	                backgroundColor: 'blue',
	            },
	        ]
	    },
	    options: {
	        plugins: {
	            title: {
	                display: true,
	                text: 'Example',
	                font: {
	                    size: 14
	                }
	            },
	        },
	        responsive: true,
	        maintainAspectRatio: true,
	        scales: {
	            x: {
	                stacked: true,
	            },
	            y: {
	                stacked: true
	            }
	        }
	    }
	});
	</script>
  <script>
    var win = navigator.platform.indexOf('Win') > -1;
    if (win && document.querySelector('#sidenav-scrollbar')) {
      var options = {
        damping: '0.5'
      }
      Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
    }
  </script>
  <!-- Github buttons -->
  <script async defer src="https://buttons.github.io/buttons.js"></script>
  <!-- Control Center for Soft Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="../resources/assets/js/argon-dashboard.min.js?v=2.0.4"></script>
</body>
</html>
