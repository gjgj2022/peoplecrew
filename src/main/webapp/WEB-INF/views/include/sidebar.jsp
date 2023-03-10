<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
					class="nav-link active collapsed" data-bs-target="#tables-nav1"
					data-bs-toggle="collapse" href="#">
						<div
							class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
							<i class="ni ni-tv-2 text-primary text-sm opacity-10"></i>
						</div> <span class="nav-link-text ms-1">인사정보</span>
				</a>

					<ul id="tables-nav1" class="nav-content collapse "
						data-bs-parent="#sidebar-nav">
						<li><a href="#"> <i class="bi bi-circle"></i> <span>Green
									Tables</span>
						</a></li>
						<li><a href="#"> <i class="bi bi-circle"></i> <span>Data
									Tables</span>
						</a></li>
					</ul></li>

				<!-- --------------------- 전자결재 -------------------------- -->
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
				<!-- -------------------------------------------------------- -->



				<li class="nav-item dropdown"><a
					class="nav-link active collapsed" data-bs-target="#tables-nav3"
					data-bs-toggle="collapse" href="#">
						<div
							class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
							<i class="ni ni-tv-2 text-primary text-sm opacity-10"></i>
						</div> <span class="nav-link-text ms-1">근태관리</span>
				</a>

					<ul id="tables-nav3" class="nav-content collapse "
						data-bs-parent="#sidebar-nav">
						<li><a href="#"> <i class="bi bi-circle"></i> <span>General
									Tables</span>
						</a></li>
						<li><a href="#"> <i class="bi bi-circle"></i> <span>Data
									Tables</span>
						</a></li>
					</ul></li>

				<li class="nav-item dropdown"><a
					class="nav-link active collapsed" data-bs-target="#tables-nav6"
					data-bs-toggle="collapse" href="#">
						<div
							class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
							<i class="ni ni-tv-2 text-primary text-sm opacity-10"></i>
						</div> <span class="nav-link-text ms-1">게시판</span>
				</a></li>

				<li class="nav-item dropdown"><a
					class="nav-link active collapsed" data-bs-target="#tables-nav4"
					data-bs-toggle="collapse" href="#">
						<div
							class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
							<i class="ni ni-tv-2 text-primary text-sm opacity-10"></i>
						</div> <span class="nav-link-text ms-1">인사관리 (관리자)</span>
				</a>

					<ul id="tables-nav4" class="nav-content collapse "
						data-bs-parent="#sidebar-nav">
						<li><a href="/admin/sign"> <i class="bi bi-circle"></i> <span>사원정보등록</span>
						</a></li>
						<li><a href="/admin/admin2"> <i class="bi bi-circle"></i>
								<span>사원조회</span>
						</a></li>
						<li><a href="/admin/admin3"> <i class="bi bi-circle"></i>
								<span>급여관리</span>
						</a></li>
						<li><a href="/admin/admin4"> <i class="bi bi-circle"></i>
								<span>근태관리</span>
						</a></li>
					</ul></li>


			</ul>

		</div>

	</aside>
</body>
</html>

