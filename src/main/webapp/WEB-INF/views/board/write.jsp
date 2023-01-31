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
				$('.popover').hide();
			});
			//써머노트 모달창 끄기 
			$(function() {
				$(".close").on("click", function() {
					$(".modal").modal('hide');
				});
			});

			//유효성 체크
			function checkForm(x) {
				var inputFile = $('#file').val();
				var maxSize = 10 * 1024 * 1024;
				var fileSize;

				if (inputFile != "" && inputFile != null) {
					fileSize = document.getElementById("file").files[0].size;

					if (fileSize >= maxSize) {
						alert("파일 크기는 10MB까지 가능합니다.");
						$("#file").val("");
						return;
					}
				}

				if (!$('[name=botitle]').val()) {
					alert("제목을 입력하세요.");
					return;
				}

				x.form.action = "/board/write";
				x.form.method = "post";
				x.form.submit();
			};
			$(function() {
				document.getElementById("fileDeletebtn").style.display = "none";
			})
			function fileDelete(x) {
				console.log("하이" + x);
				document.getElementById("fileDeletebtn").style.display = "block";
			}
			function emptyFile() {
				$("#file").val("");
				document.getElementById("fileDeletebtn").style.display = "none";
			}
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

		<div class="container-fluid py-4 w-90">
			<div class="row" style="margin: 0 3%">
				<div class="card mb-4">
					<div class="card-header">
						<h2 id="example">공지사항</h2>
					</div>
					<div class="container w-95">
						<form action="" method="post" enctype="multipart/form-data">
							<table id="register-table" class="table">
								<tr>
									<th class="th-title"><label>제목</label></th>
									<input type="hidden" name="mno" value=${user.mno }>
									<td colspan="3"><input type="text" class="form-control" name="botitle" id="botitle" placeholder="제목을 입력하세요." /></td>
								</tr>
								<tr>
									<th><label>내용</label></th>
									<td colspan="3"><textarea class="form-control" id="summernote" name="bocontents"></textarea></td>
								</tr>
								<tr>
									<th class="th-title"><label for="formFileSm" class="form-label">파일</label></th>
									<td colspan="2"><input type="file" class="form-control form-control-sm" name="file" id="file" onchange="fileDelete(this)"></td>
									<td><a id="fileDeletebtn" onclick="emptyFile()">X</a></td>
								</tr>
								<tr>
									<th class="th-title"><label for="formFileSm" class="form-label">공개여부</label></th>
									<td class="form-inline" colspan="3">
										<div class="form-check form-check-inline">
											<input class="form-check-input" type="radio" name="bostatus" id="inlineRadio1" value="0" checked> <label class="form-check-label" for="inlineRadio1">공개</label>
										</div>
										<div class="form-check form-check-inline">
											<input class="form-check-input" type="radio" name="bostatus" id="inlineRadio2" value="10"> <label class="form-check-label" for="inlineRadio2">비공개</label>
										</div>
									</td>
								</tr>
								<tr>
									<td colspan="4"><div class="float-end">
											<a href="/board/list"> <input type="button" value="취소" class="btn" />
											</a> <input type="button" value="등록" class="btn" onclick="checkForm(this)" />
										</div></td>
								</tr>
							</table>
						</form>
					</div>
				</div>
			</div>
		</div>

		<jsp:include page="../footer.jsp" />
	</main>
</body>
</html>