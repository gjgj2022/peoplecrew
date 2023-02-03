<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
			<a class="navbar-brand m-0" href=" https://demos.creative-tim.com/argon-dashboard/pages/dashboard.html " target="_blank">
				<img src="../assets/img/logo-ct-dark.png" class="navbar-brand-img h-100" alt="main_logo">
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
						<span class="nav-link-text ms-1">게시판</span>
					</a>

					<ul id="tables-nav1" class="nav-content collapse " data-bs-parent="#sidebar-nav">
						<li>
							<a href="/board/list">
								<i class="bi bi-circle"></i>
								<span>공지사항</span>
							</a>
						</li>
						<li>
							<a href="http://localhost:8080/pages/tables.html">
								<i class="bi bi-circle"></i>
								<span>원래테이블</span>
							</a>
						</li>
					</ul>
				</li>

				<li class="nav-item dropdown">
					<a class="nav-link active collapsed" data-bs-target="#tables-nav2" data-bs-toggle="collapse" href="#">
						<div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
							<i class="ni ni-tv-2 text-primary text-sm opacity-10"></i>
						</div>
						<span class="nav-link-text ms-1">전자결재</span>
					</a>

					<ul id="tables-nav2" class="nav-content collapse " data-bs-parent="#sidebar-nav">
						<li>
							<a href="/calendar/list">
								<i class="bi bi-circle"></i>
								<span>캘린더</span>
							</a>
						</li>
						<li>
							<a href="#">
								<i class="bi bi-circle"></i>
								<span>오늘의 일정</span>
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
					<a class="nav-link active collapsed" data-bs-target="#tables-nav4" data-bs-toggle="collapse" href="#">
						<div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
							<i class="ni ni-tv-2 text-primary text-sm opacity-10"></i>
						</div>
						<span class="nav-link-text ms-1">인사관리</span>
					</a>

					<ul id="tables-nav4" class="nav-content collapse " data-bs-parent="#sidebar-nav">
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
					<a class="nav-link active collapsed" data-bs-target="#tables-nav5" data-bs-toggle="collapse" href="#">
						<div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
							<i class="ni ni-tv-2 text-primary text-sm opacity-10"></i>
						</div>
						<span class="nav-link-text ms-1">업무관리</span>
					</a>

					<ul id="tables-nav5" class="nav-content collapse " data-bs-parent="#sidebar-nav">
						<li>
							<a href="/calendar">
								<i class="bi bi-circle"></i>
								<span>Calendar</span>
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

				<li class="nav-item">
					<a class="nav-link active " href="https://www.creative-tim.com/learning-lab/bootstrap/license/argon-dashboard?_ga=2.245096323.703312594.1674100969-944291244.1673778060">
						<div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
							<i class="ni ni-calendar-grid-58 text-warning text-sm opacity-10"></i>
						</div>
						<span class="nav-link-text ms-1">docs</span>
					</a>
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
						<li class="breadcrumb-item text-sm">
							<a class="opacity-5 text-white" href="javascript:;">Pages</a>
						</li>
						<li class="breadcrumb-item text-sm text-white active" aria-current="page">Tables</li>
					</ol>
					<h6 class="font-weight-bolder text-white mb-0">Tables</h6>
				</nav>
				<div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4" id="navbar">
					<div class="ms-md-auto pe-md-3 d-flex align-items-center">
						<div class="input-group">
							<span class="input-group-text text-body">
								<i class="fas fa-search" aria-hidden="true"></i>
							</span>
							<input type="text" class="form-control" placeholder="Type here...">
						</div>
					</div>
					<ul class="navbar-nav  justify-content-end">
						<li class="nav-item d-flex align-items-center">
							<a href="javascript:;" class="nav-link text-white font-weight-bold px-0">
								<i class="fa fa-user me-sm-1"></i>
								<span class="d-sm-inline d-none">Sign In</span>
							</a>
						</li>
						<li class="nav-item d-xl-none ps-3 d-flex align-items-center">
							<a href="javascript:;" class="nav-link text-white p-0" id="iconNavbarSidenav">
								<div class="sidenav-toggler-inner">
									<i class="sidenav-toggler-line bg-white"></i> <i class="sidenav-toggler-line bg-white"></i> <i class="sidenav-toggler-line bg-white"></i>
								</div>
							</a>
						</li>
						<li class="nav-item px-3 d-flex align-items-center">
							<a href="javascript:;" class="nav-link text-white p-0">
								<i class="fa fa-cog fixed-plugin-button-nav cursor-pointer"></i>
							</a>
						</li>
						<li class="nav-item dropdown pe-2 d-flex align-items-center">
							<a href="javascript:;" class="nav-link text-white p-0" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
								<i class="fa fa-bell cursor-pointer"></i>
							</a>
							<ul class="dropdown-menu  dropdown-menu-end  px-2 py-3 me-sm-n4" aria-labelledby="dropdownMenuButton">
								<li class="mb-2">
									<a class="dropdown-item border-radius-md" href="javascript:;">
										<div class="d-flex py-1">
											<div class="my-auto">
												<img src="../assets/img/team-2.jpg" class="avatar avatar-sm  me-3 ">
											</div>
											<div class="d-flex flex-column justify-content-center">
												<h6 class="text-sm font-weight-normal mb-1">
													<span class="font-weight-bold">New message</span>
													from Laur
												</h6>
												<p class="text-xs text-secondary mb-0">
													<i class="fa fa-clock me-1"></i> 13 minutes ago
												</p>
											</div>
										</div>
									</a>
								</li>
								<li class="mb-2">
									<a class="dropdown-item border-radius-md" href="javascript:;">
										<div class="d-flex py-1">
											<div class="my-auto">
												<img src="../assets/img/small-logos/logo-spotify.svg" class="avatar avatar-sm bg-gradient-dark  me-3 ">
											</div>
											<div class="d-flex flex-column justify-content-center">
												<h6 class="text-sm font-weight-normal mb-1">
													<span class="font-weight-bold">New album</span>
													by Travis Scott
												</h6>
												<p class="text-xs text-secondary mb-0">
													<i class="fa fa-clock me-1"></i> 1 day
												</p>
											</div>
										</div>
									</a>
								</li>
								<li>
									<a class="dropdown-item border-radius-md" href="javascript:;">
										<div class="d-flex py-1">
											<div class="avatar avatar-sm bg-gradient-secondary  me-3  my-auto">
												<svg width="12px" height="12px" viewBox="0 0 43 36" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                          <title>credit-card</title>
                          <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                            <g transform="translate(-2169.000000, -745.000000)" fill="#FFFFFF" fill-rule="nonzero">
                              <g transform="translate(1716.000000, 291.000000)">
                                <g transform="translate(453.000000, 454.000000)">
                                  <path class="color-background" d="M43,10.7482083 L43,3.58333333 C43,1.60354167 41.3964583,0 39.4166667,0 L3.58333333,0 C1.60354167,0 0,1.60354167 0,3.58333333 L0,10.7482083 L43,10.7482083 Z" opacity="0.593633743"></path>
                                  <path class="color-background" d="M0,16.125 L0,32.25 C0,34.2297917 1.60354167,35.8333333 3.58333333,35.8333333 L39.4166667,35.8333333 C41.3964583,35.8333333 43,34.2297917 43,32.25 L43,16.125 L0,16.125 Z M19.7083333,26.875 L7.16666667,26.875 L7.16666667,23.2916667 L19.7083333,23.2916667 L19.7083333,26.875 Z M35.8333333,26.875 L28.6666667,26.875 L28.6666667,23.2916667 L35.8333333,23.2916667 L35.8333333,26.875 Z"></path>
                                </g>
                              </g>
                            </g>
                          </g>
                        </svg>
											</div>
											<div class="d-flex flex-column justify-content-center">
												<h6 class="text-sm font-weight-normal mb-1">Payment successfully completed</h6>
												<p class="text-xs text-secondary mb-0">
													<i class="fa fa-clock me-1"></i> 2 days
												</p>
											</div>
										</div>
									</a>
								</li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</nav>
		<!-- End Navbar -->

		<!-- writeForm -->
		<!-- summernote CDN -->


		<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
		<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
		<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
		<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>

		<script type="text/javascript">
			// 써머노트 로드 함수
			$(document).ready(function() {
				$('#summernote').summernote({
					placeholder : '내용을 입력하세요.',
					lang : 'ko-KR',
					height : 200,
				});
			});
			$(function() {
				$(".close").on("click", function() {
					$(".modal").modal('hide');
				});
			});
			$(function inputfilebtn(){
				
				
				if("${files.oriname}"!=""){
					document.getElementById("fileNewUpload").style.display="none";
				}else{
					document.getElementById("uploadedFilebtn").style.display="none";
				}
			})
			function emptyFile(){
				document.getElementById("uploadedFile").style.display="none";
				document.getElementById("uploadedFilebtn").style.display="none";
				document.getElementById("fileNewUpload").style.display="block";
				//document.getElementById("fno").value=Number("${files.fno}");
				//console.log("${files.fno}");
				var a = '<input type="hidden" name="fno" id="fno" value=${files.fno}>';
				$('.hidden-fno').append(a);
			}
			
			//유효성 체크
			function checkForm(x){
				
				var inputFile = $('#fileNewUpload').val();
				var maxSize = 10 * 1024 * 1024;
				var fileSize;

				if(inputFile != "" && inputFile != null) {
					fileSize = document.getElementById("fileNewUpload").files[0].size;
				    
				    if(fileSize >= maxSize) {
				    	alert("파일 크기는 10MB까지 가능합니다.");
				    	$("#fileNewUpload").val("");
				        return;
				    }
				}
				
				if(!$('[name=botitle]').val()){
					alert("제목을 입력하세요.");
					return;
				}
				
				x.form.action = "/board/modify";
		        x.form.method="post";
		        x.form.submit();
			};
		</script>

		<!-- summernote CSS 수정 -->
		<style>
		.note-btn, .btn-sm {
			margin-bottom: 0.5rem;
			-bs-btn-padding-x: 0.5rem;
			-bs-btn-padding-y: 0.5rem;
			padding: 0.3rem;
			margin: 0.3rem;
		}
		
		</style>

		<div class="container-fluid py-4">
			<div class="row" style="margin: 0 5%;">
				<div class="card mb-4">
					<div class="card-header pb-0">
						<h2 id="example">공지사항</h2>
					</div>
					<div class="container">
						<form name="frm" method="post" enctype="multipart/form-data">

							<table id="register-table" class="table">

								
								<input type="hidden" name="bono" value="${dto.bono }" />
								<input type="hidden" name="mno" value="${dto.mno }"/>

								<tr>
									<th class="th-title">
										<label for="exampleFormControlInput1">제목</label>
									</th>
									<td colspan="3">
										<input type="text" class="form-control" name="botitle" id="exampleFormControlInput1" value="${dto.botitle}" />
									</td>
								</tr>

								<tr>
									<th>
										<label for="exampleFormControlTextarea1">내용</label>
									</th>
									<td colspan="3">
										<textarea class="form-control" id="summernote" name="bocontents">${dto.bocontents}</textarea>
									</td>
								</tr>
								<tr>
									<th class="th-title">
									
										<label for="formFileSm" class="form-label">첨부파일</label>
									</th>
									<td colspan="3">
										<input class="form-control form-control-sm" name="file" id="fileNewUpload" type="file">
										<a href="#" id="uploadedFile" class="uploadedFile">${files.oriname}</a> 
										
										
										<input type="button" value="X" id="uploadedFilebtn" onclick="emptyFile()"/>
									</td>
								</tr>
								<tr>
									<td colspan="4">
										<a href="/board/detail?bono=${dto.bono}">
											<input type="button" value="취소" class="btn" />
										</a>
										<input type="button" value="수정" class="btn" onclick="checkForm(this)"/>
									</td>
								</tr>
							<div class="hidden-fno"></div>
							</table>


						</form>
					</div>
				</div>
			</div>
		</div>


		<footer class="footer pt-3  ">
			<div class="container-fluid">
				<div class="row align-items-center justify-content-lg-between">
					<div class="col-lg-6 mb-lg-0 mb-4">
						<div class="copyright text-center text-sm text-muted text-lg-start">
							©
							<script>
								document.write(new Date().getFullYear())
							</script>
							, made with <i class="fa fa-heart"></i> by
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
	<script src="../assets/js/argon-dashboard.min.js?v=2.0.4"></script>
</body>

</html>