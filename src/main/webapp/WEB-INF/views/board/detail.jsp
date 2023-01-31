<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="../assets/img/favicon.png">
<title>Argon Dashboard 2 by Creative Tim</title>
<!--     Fonts and icons     -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
<!-- Nucleo Icons -->
<link href="../assets/css/nucleo-icons.css" rel="stylesheet" />
<link href="../assets/css/nucleo-svg.css" rel="stylesheet" />
<!-- Font Awesome Icons -->
<script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
<link href="../assets/css/nucleo-svg.css" rel="stylesheet" />
<!-- CSS Files -->
<link id="pagestyle" href="../assets/css/argon-dashboard.css?v=2.0.4" rel="stylesheet" />
<link href="/assets/vendor/nucleo/css/nucleo.css" rel="stylesheet">
</head>

<body class="g-sidenav-show   bg-gray-100">
	<div class="min-height-300 bg-primary position-absolute w-100"></div>
	<aside class="sidenav bg-white navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-4 " id="sidenav-main">
		<div class="sidenav-header">
			<i class="fas fa-times p-3 cursor-pointer text-secondary opacity-5 position-absolute end-0 top-0 d-none d-xl-none" aria-hidden="true" id="iconSidenav"></i> <a class="navbar-brand m-0" href=" https://demos.creative-tim.com/argon-dashboard/pages/dashboard.html " target="_blank"> <img src="../assets/img/logo-ct-dark.png" class="navbar-brand-img h-100" alt="main_logo"> <span class="ms-1 font-weight-bold">PeopleCrew</span>
			</a>
		</div>
		<hr class="horizontal dark mt-0">

		<div class="collapse navbar-collapse  w-auto " id="sidenav-collapse-main">

			<ul class="navbar-nav" data-widget="treeview" role="menu" data-accordion="false">
				<li class="nav-item dropdown"><a class="nav-link active collapsed" data-bs-target="#tables-nav6" data-bs-toggle="collapse" href="#">
						<div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
							<i class="ni ni-tv-2 text-primary text-sm opacity-10"></i>
						</div> <span class="nav-link-text ms-1">게시판</span>
				</a>
					<ul id="tables-nav6" class="nav-content collapse " data-bs-parent="#sidebar-nav">
						<li><a href="/board/list"> <i class="bi bi-circle"></i> <span>공지사항</span>
						</a></li>
					</ul></li>


				<li class="nav-item dropdown"><a class="nav-link active collapsed" data-bs-target="#tables-nav2" data-bs-toggle="collapse" href="#">
						<div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
							<i class="ni ni-tv-2 text-primary text-sm opacity-10"></i>
						</div> <span class="nav-link-text ms-1">업무관리</span>
				</a>

					<ul id="tables-nav2" class="nav-content collapse " data-bs-parent="#sidebar-nav">
						<li><a href="/calendar/list"> <i class="bi bi-circle"></i> <span>calendar</span>
						</a></li>
						<li><a href="/calendar/mycalendar"> <i class="bi bi-circle"></i> <span>오늘의 일정</span>
						</a></li>
					</ul></li>
			</ul>

		</div>
	</aside>
	<main class="main-content position-relative border-radius-lg ">
		<jsp:include page="../navbar.jsp"></jsp:include>
<script>
function deleteBoard(bono) {
	if (confirm("게시글을 삭제하시겠습니까?") == true){  
		
		$.ajax({
			url : '/board/delete',
			type : 'post',
			data : {
				'bono' : bono
			},
			success : function() {
				window.location.href ="/board/list";
			},
			error : function() {
				alert("일정 삭제 실패");
			},
		});
	}else{   //취소
	      return;
	  }
}
</script>
		<!-- detail page CSS 수정 -->
		<style>
		
		.blackspace{
		border-bottom: 0px;
		}
		.bocontents-height{
		height: 15rem;
		text-color : dark !important;
		border-bottom: 0px;
		}
		.filename{
		text-decoration: underline;
		}
		#detaillabel{
		margin-top:10px;
		}
		</style>


		<div class="container-fluid py-4 w-90">
			<div class="row" style="margin: 0 3%">
				<div class="card mb-4" >
					<div class="card-header">
						<h2 id="example">공지사항</h2></div>
					<div class="container">
						<table class="table">
							<tr>
								<th colspan="2">
									<h5 class="modal-title">${boarddto.botitle }</h5>
								</th>
								<th colspan="2">
								<label id="detaillabel" class="float-end text-secondary font-weight-bold">작성자　${boarddto.mname }　|　작성일　${boarddto.bodate }　|　조회　${boarddto.bohits }</label></th>
							<tr><td colspan="4" class="blackspace"></td></tr>
							<tr>
								<td colspan="4" class="bocontents-height"><div class="text-dark">${boarddto.bocontents }</div></td>
							</tr>
														<tr  class="borderbottom-file">
								<td class="border-file" colspan="4">
									<div class="form-group">
										<!-- 첨부파일 다운로드 -->
										<c:if test="${not empty files}">
										<label class="text-secondary font-weight-bold" id="filedowntext">첨부파일 : </label></c:if> <a href="/board/filedown/${files.fno}"><span class="filename">${files.oriname}</span></a>
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="2"><a href="/board/list"> <button type="button" class="btn">목록</button>
								</a> </td>
								<td class="float-end" colspan="2">
								<c:if test="${boarddto.mno eq user.mno || user.role eq 'ROLE_ADMIN'}">
																	
								<a href="/board/modify?bono=${boarddto.bono }"> <button type="button" class="btn">수정</button>
								</a> <input type="button" class="btn" value="삭제" onclick="deleteBoard(${boarddto.bono})"/>
								</a></c:if></td>
							</tr>
						</table>
						<!-- detail page end  -->

						<!--  댓글  -->
						<%@ include file="reply.jsp"%>
					<div class="card-footer pb-0">
					</div>

						<!-- 전체페이지 카드모양 div -->
					</div>
				</div>
			</div>
		</div>

			 <jsp:include page="../footer.jsp" />
	</main>
</body>
</html>