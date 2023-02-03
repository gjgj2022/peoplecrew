<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="apple-touch-icon" sizes="76x76" href="./assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="./assets/img/favicon.png">
<title>attendance</title>
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
<style>
      #attendance_table{
            width: 100%;
            background-color: white;
            padding-top: 50%;
            padding-left: 5%;
            padding-right: 5%;
        }
</style>
<body>
<body class="g-sidenav-show   bg-gray-100">
  <div class="min-height-300 bg-primary position-absolute w-100"></div>
  <aside class="sidenav bg-white navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-4 " id="sidenav-main">
    <div class="sidenav-header">
      <i class="fas fa-times p-3 cursor-pointer text-secondary opacity-5 position-absolute end-0 top-0 d-none d-xl-none" aria-hidden="true" id="iconSidenav"></i>
      <a class="navbar-brand m-0" href="/" target="_blank">
        <span class="ms-1 font-weight-bold">PeopleCrew</span>
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
          <a class="nav-link active collapsed" data-bs-target="#tables-nav3" data-bs-toggle="collapse" href="#">
            <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
              <i class="ni ni-tv-2 text-primary text-sm opacity-10"></i>
            </div>
            <span class="nav-link-text ms-1">근태관리</span>
          </a>
          
          <ul id="tables-nav3" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="/attendance">
              <i class="bi bi-circle"></i>
              <span>근태관리</span>
            </a>
          </li>
          <li>
            <a href="/adminpage">
              <i class="bi bi-circle"></i>
              <span>근태관리(관리자)</span>
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
        
        
        <li class="nav-item dropdown">
          <a class="nav-link active collapsed" data-bs-target="#tables-nav5" data-bs-toggle="collapse" href="#">
            <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
              <i class="ni ni-tv-2 text-primary text-sm opacity-10"></i>
            </div>
            <span class="nav-link-text ms-1">업무관리</span>
          </a>
          
          <ul id="tables-nav5" class="nav-content collapse " data-bs-parent="#sidebar-nav">
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
            <a href="/board/tables">
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
            <li class="breadcrumb-item text-sm text-white active" aria-current="page">attendance</li>
          </ol>
          <h6 class="font-weight-bolder text-white mb-0">attendance</h6>
        </nav>
       
         <!-- 로그인헤더  -->
		<%@ include file="../include/header.jsp" %>
      </div>
    </nav>
    <!-- End Navbar -->
    
    <!-- 차트 -->
    <div class="container-fluid py-4">
    <div class="row mt-4">
        <div class="col-lg-7 mb-lg-0 mb-4">
          <div class="card z-index-2 h-100">
            <div class="card-header pb-0 pt-3 bg-transparent">
              <h6 class="text-capitalize">Sales overview</h6>
            </div>
            <div class="card-body p-3">
              <div class="chart" align="center" >
                <canvas id="myChart1" class="chart-canvas"  width="350vw" height="100vh"></canvas>
              </div>
            </div>
          </div>
        </div>
        <!-- 도넛 -->
        <div class="col-lg-5">
          <div class="card card-carousel overflow-hidden h-100 p-0">
            <div id="carouselExampleCaptions" class="carousel slide h-100" data-bs-ride="carousel">
              <div class="carousel-inner border-radius-lg h-100">
                <div class="carousel-item h-100 active">
                    <div class="card-body" align="center">
                        <canvas id="myChart2" width="350vw" height="400vh"></canvas>
                    </div>
                     <div class="card card-body text-center">
                      <p>근무시간 : 30시간 / 연장근무 : 2시간 / 총 근무시간 : 32시간</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        </div>

        
      <div class="container-fluid py-4">
      <div class="row">
        <div class="col-12">
          <div class="card mb-4">
            <div class="card-header pb-0">
              <h6>근태관리</h6>
            </div>
            <div class="card-body px-0 pt-0 pb-2">
              <div class="table-responsive p-0">
                <table class="table align-items-center justify-content-center mb-0">
                  <thead>
                    <tr>
                      <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7" style="text-align: center;">날짜</th>
                      <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7" style="text-align: center;">사번</th>
                      <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7" style="text-align: center;">이름</th>
                      <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7" style="text-align: center;">부서</th>
                      <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7" style="text-align: center;">출근시간</th>
                      <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7" style="text-align: center;">퇴근시간</th>
                      <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7" style="text-align: center;">상태정보</th>
                    </tr>
                  </thead>
                  <tbody>
                  
                  
                    <tr>
                      <td>
                        <p class="text-sm font-weight-bold mb-0" style="text-align: center;">${attdto.work_day }</p> <!-- 날짜 -->
                      </td>
                      <td>
                        <p class="text-sm font-weight-bold mb-0" style="text-align: center;">${dto.mno }</p> <!-- 사원번호 -->
                      </td>
                      <td>
                        <p class="text-sm font-weight-bold mb-0" style="text-align: center;">${dto.mname }</p> <!-- 이름 -->
                      </td>
                      <td>
                        <p class="text-sm font-weight-bold mb-0" style="text-align: center;">${attdto.oname }</p> <!-- 부서 -->
                      </td>
                      <td>
                        <p class="text-sm font-weight-bold mb-0" style="text-align: center;">${attdto.start_time }</p> <!-- 출근시간 -->
                      </td>
                      <td>
                        <p class="text-sm font-weight-bold mb-0" style="text-align: center;">${attdto.end_time }</p> <!-- 퇴근시간 -->
                      </td>
                      <td>
                        <p class="text-sm font-weight-bold mb-0" style="text-align: center;">${attdto.state }</p> <!-- 상태정보 -->
                      </td>
                    </tr>
                    
                    <tr>
						<td colspan="4">
							<nav aria-label="Page navigation example" >
								<ul class="pagination justify-content-center">
								<c:if test="${map.isPre }">
									<li class="page-item"><a class="page-link" href="attendance?cp=${map.currentPage-5 }">Previous</a></li>
								</c:if>
								<c:forEach var="i" begin="${map.startPage }" end="${map.endPage }">
									<li class="page-item"><a class="page-link" href="attendance?cp=${i }">${i }</a></li>
								</c:forEach>
								<c:if test="${map.isNext }">
									<li class="page-item"><a class="page-link" href="attendance?cp=${map.currentPage+5 }">Next</a></li>
								</c:if>
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
      <footer class="footer pt-3  ">
        <div class="container-fluid">
          <div class="row align-items-center justify-content-lg-between">
            <div class="col-lg-6 mb-lg-0 mb-4">
              <div class="copyright text-center text-sm text-muted text-lg-start">
                © <script>
                  document.write(new Date().getFullYear())
                </script>,
                made with <i class="fa fa-heart"></i> by
                <a href="https://www.creative-tim.com" class="font-weight-bold" target="_blank">Creative Tim</a>
                for a better web.
              </div>
            </div>
            <div class="col-lg-6">
              <ul class="nav nav-footer justify-content-center justify-content-lg-end">
                <li class="nav-item">
                  <a href="https://www.creative-tim.com" class="nav-link text-muted" target="_blank">Creative Tim</a>
                </li>
                <li class="nav-item">
                  <a href="https://www.creative-tim.com/presentation" class="nav-link text-muted" target="_blank">About Us</a>
                </li>
                <li class="nav-item">
                  <a href="https://www.creative-tim.com/blog" class="nav-link text-muted" target="_blank">Blog</a>
                </li>
                <li class="nav-item">
                  <a href="https://www.creative-tim.com/license" class="nav-link pe-0 text-muted" target="_blank">License</a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </footer>
    </div>
  </main>
  <div class="fixed-plugin">
    <a class="fixed-plugin-button text-dark position-fixed px-3 py-2">
      <i class="fa fa-cog py-2"> </i>
    </a>
    <div class="card shadow-lg">
      <div class="card-header pb-0 pt-3 ">
        <div class="float-start">
          <h5 class="mt-3 mb-0">Argon Configurator</h5>
          <p>See our dashboard options.</p>
        </div>
        <div class="float-end mt-4">
          <button class="btn btn-link text-dark p-0 fixed-plugin-close-button">
            <i class="fa fa-close"></i>
          </button>
        </div>
        <!-- End Toggle Button -->
      </div>
      <hr class="horizontal dark my-1">
      <div class="card-body pt-sm-3 pt-0 overflow-auto">
        <!-- Sidebar Backgrounds -->
        <div>
          <h6 class="mb-0">Sidebar Colors</h6>
        </div>
        <a href="javascript:void(0)" class="switch-trigger background-color">
          <div class="badge-colors my-2 text-start">
            <span class="badge filter bg-gradient-primary active" data-color="primary" onclick="sidebarColor(this)"></span>
            <span class="badge filter bg-gradient-dark" data-color="dark" onclick="sidebarColor(this)"></span>
            <span class="badge filter bg-gradient-info" data-color="info" onclick="sidebarColor(this)"></span>
            <span class="badge filter bg-gradient-success" data-color="success" onclick="sidebarColor(this)"></span>
            <span class="badge filter bg-gradient-warning" data-color="warning" onclick="sidebarColor(this)"></span>
            <span class="badge filter bg-gradient-danger" data-color="danger" onclick="sidebarColor(this)"></span>
          </div>
        </a>
        <!-- Sidenav Type -->
        <div class="mt-3">
          <h6 class="mb-0">Sidenav Type</h6>
          <p class="text-sm">Choose between 2 different sidenav types.</p>
        </div>
        <div class="d-flex">
          <button class="btn bg-gradient-primary w-100 px-3 mb-2 active me-2" data-class="bg-white" onclick="sidebarType(this)">White</button>
          <button class="btn bg-gradient-primary w-100 px-3 mb-2" data-class="bg-default" onclick="sidebarType(this)">Dark</button>
        </div>
        <p class="text-sm d-xl-none d-block mt-2">You can change the sidenav type just on desktop view.</p>
        <!-- Navbar Fixed -->
        <div class="d-flex my-3">
          <h6 class="mb-0">Navbar Fixed</h6>
          <div class="form-check form-switch ps-0 ms-auto my-auto">
            <input class="form-check-input mt-1 ms-auto" type="checkbox" id="navbarFixed" onclick="navbarFixed(this)">
          </div>
        </div>
        <hr class="horizontal dark my-sm-4">
        <div class="mt-2 mb-5 d-flex">
          <h6 class="mb-0">Light / Dark</h6>
          <div class="form-check form-switch ps-0 ms-auto my-auto">
            <input class="form-check-input mt-1 ms-auto" type="checkbox" id="dark-version" onclick="darkMode(this)">
          </div>
        </div>
        <a class="btn bg-gradient-dark w-100" href="https://www.creative-tim.com/product/argon-dashboard">Free Download</a>
        <a class="btn btn-outline-dark w-100" href="https://www.creative-tim.com/learning-lab/bootstrap/license/argon-dashboard">View documentation</a>
        <div class="w-100 text-center">
          <a class="github-button" href="https://github.com/creativetimofficial/argon-dashboard" data-icon="octicon-star" data-size="large" data-show-count="true" aria-label="Star creativetimofficial/argon-dashboard on GitHub">Star</a>
          <h6 class="mt-3">Thank you for sharing!</h6>
          <a href="https://twitter.com/intent/tweet?text=Check%20Argon%20Dashboard%20made%20by%20%40CreativeTim%20%23webdesign%20%23dashboard%20%23bootstrap5&amp;url=https%3A%2F%2Fwww.creative-tim.com%2Fproduct%2Fargon-dashboard" class="btn btn-dark mb-0 me-2" target="_blank">
            <i class="fab fa-twitter me-1" aria-hidden="true"></i> Tweet
          </a>
          <a href="https://www.facebook.com/sharer/sharer.php?u=https://www.creative-tim.com/product/argon-dashboard" class="btn btn-dark mb-0 me-2" target="_blank">
            <i class="fab fa-facebook-square me-1" aria-hidden="true"></i> Share
          </a>
        </div>
      </div>
    </div>
  </div>
  <!--   Core JS Files   -->
  <script src="../resources/assets/js/core/popper.min.js"></script>
  <script src="../resources/assets/js/core/bootstrap.min.js"></script>
  <script src="../resources/assets/js/plugins/perfect-scrollbar.min.js"></script>
  <script src="../resources/assets/js/plugins/smooth-scrollbar.min.js"></script>
  <script src="../resources/assets/js/plugins/chartjs.min.js"></script>
  <!-- 막대차트 -->
  <script>
  chart = new Chart(document.getElementById('myChart1').getContext('2d'), {
	    type: 'bar',
	    data: {
	        labels: ["월", "화", "수", "목", "금", "토", "일"],
	        datasets: [{
	                label: '근무시간',
	                data: [100, 110, 120],
	                backgroundColor: 'green',
	            },
	            {
	                label: '연장근무',
	                data: [30, 20, 10],
	                backgroundColor: 'pink',
	            },
	            {
	                label: '지각',
	                data: [30, 20, 10],
	                backgroundColor: 'yellow',
	            },
	            {
	                label: '조퇴',
	                data: [30, 20, 10],
	                backgroundColor: 'blue',
	            },
	            {
	                label: '결근',
	                data: [30, 20, 10],
	                backgroundColor: 'red',
	            },
	            {
	                label: '휴가',
	                data: [30, 20, 10],
	                backgroundColor: 'black',
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
  <!-- 도넛차트 -->
  <script>
/*   data = {
        datasets: [{
            backgroundColor: ['red','yellow','blue'],
            data: [10, 20, 30]
        }],       
        // 라벨의 이름이 툴팁처럼 마우스가 근처에 오면 나타남
        labels: ['red','yellow','blue'] 
    }; */
  // 도넛형 차트
  var ctx2 = document.getElementById("myChart2");
  var myDoughnutChart = new Chart(ctx2, {
      type: 'doughnut',
      data: {
          datasets: [{
              backgroundColor: ['red','yellow','blue'],
              data: [10, 20, 30]
          }],       
          // 라벨의 이름이 툴팁처럼 마우스가 근처에 오면 나타남
          labels: ['야근','근무시간','총근무시간'] 
      },
      options: {
    	  responsive: false
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
</body>
