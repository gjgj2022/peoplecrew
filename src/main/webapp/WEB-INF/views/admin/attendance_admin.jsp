<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="apple-touch-icon" sizes="76x76" href="./assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="./assets/img/favicon.png">

<title>attendance admin</title>

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
    
    <div class="container-fluid py-4">
      <div class="row">
        <div class="col-12">
          <div class="card mb-4">
            <div class="card-header pb-0">
              <h6>근태관리 - 관리자</h6>
            </div>
            
            <div class="card-body px-0 pt-0 pb-2">
              <div class="table-responsive p-0">
                <table class="table align-items-center mb-0">
                  <thead>
                    <tr align="center">
                      <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">날짜</th>
                      <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">사번</th>
                      <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">이름</th>
                      <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">부서</th>
                      <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">출근시간</th>
                      <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">퇴근시간</th>
                      <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">상태</th>
                      <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">수정</th>
                    </tr>
                  </thead>
                  <c:forEach var="dto" items="${list2 }">
                  <tbody>
                    <tr align="center">
                      <td>
                        <p class="text-xs font-weight-bold mb-0">${dto.work_day }</p>
                      </td>
                      <td>
                        <p class="text-xs font-weight-bold mb-0">${dto.mno }</p>
                      </td>
                      <td class="align-middle text-center text-sm">
                        <h6 class="mb-0 text-sm">${dto.mname }</h6>
                        <p class="text-xs text-secondary mb-0">${dto.memail }</p>
                      </td>
                      <td>
                        <p class="text-xs font-weight-bold mb-0">${dto.oname }</p>
                      </td>
                      <td class="align-middle text-center">
                        <span class="text-secondary text-xs font-weight-bold">${dto.start_time }</span>
                      </td>
                      <td class="align-middle text-center">
                        <span class="text-secondary text-xs font-weight-bold">${dto.end_time }</span>
                      </td>
                      <td>
                        <p class="text-xs font-weight-bold mb-0">${dto.state }</p>
                      </td>
                      <td class="align-middle">
                        <a href="/attmodify_admin?mno=${dto.mno }" class="btn btn-info m-2" onclick="return confirm('수정 하시겠습니까?');" style="margin-bottom: 0;" >
                        	수정
                        </a>
                      </td>
                    </tr>
                    </c:forEach>
                     <tr>
						<td colspan="8">
							<nav aria-label="Page navigation example">
								<ul class="pagination justify-content-center">
								<!-- 이전버튼 -->
							  	<c:choose>
								  	<c:when test="${map.isPre }">
								  		<c:choose>
								  			<c:when test="${empty mno}">
								  			 	<li class="page-item"><a class="page-link" href="page?mno=${dto.mno }&cp=${map.currentPage-5 }">이전</a></li>
								  			</c:when>
								  		</c:choose>
								  	</c:when>
							 	</c:choose>
								  	<!-- 페이지번호 -->
								  	<c:forEach var="i" begin="${map.startPage }" end="${map.endPage }">
								  		<c:choose>
								  			<c:when test="${empty mno}">
											    <li class="page-item"><a class="page-link" href="page?mno=${dto.mno }&cp=${i }">${i }</a></li>
								  			</c:when>
								  		</c:choose> 
								  	</c:forEach>
								  	<!-- 다음버튼 -->
								<c:choose>
								    <c:when test="${map.isNext }">
								    	<c:choose>
								  			<c:when test="${empty mno}">
											    <li class="page-item"><a class="page-link" href="page?mno=${dto.mno }&cp=${map.currentPage+5 }">다음</a></li>
								  			</c:when>
								  		</c:choose>
								    </c:when>
							    </c:choose>
							</ul>
							</nav>
						</td>
					</tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>
      </div>
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