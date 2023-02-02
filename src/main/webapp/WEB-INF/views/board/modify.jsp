<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
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
            <a href="/admin/admin4">
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
	


		<!-- writeForm summernote CDN -->
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
			$(function() {

				$(".close").on("click", function() {
					$(".modal").modal('hide');
				});
			});
			$(function inputfilebtn() {
				if ("${files.oriname}" != "") {
					document.getElementById("fileNewUpload").style.display = "none";
				} else {
					document.getElementById("Xbtn").style.display = "none";
				}
			})
			function emptyFile() { //기존파일 삭제 
				document.getElementById("uploadedFile").style.display = "none"; //기존파일 이름 삭제 
				document.getElementById("Xbtn").style.display = "none"; //X버튼 안보이게
				document.getElementById("fileNewUpload").style.display = "block"; //파일업로드칸 나오게
				//document.getElementById("fno").value=Number("${files.fno}");
				//console.log("${files.fno}");
				var a = '<input type="hidden" name="fno" id="fno" value=${files.fno}>'; //기존 파일번호 넘겨서 삭제
				$('.hidden-fno').append(a);
			}

			//유효성 체크
			function checkForm(x) {

				var inputFile = $('#fileNewUpload').val();
				var maxSize = 10 * 1024 * 1024;
				var fileSize;

				if (inputFile != "" && inputFile != null) {
					fileSize = document.getElementById("fileNewUpload").files[0].size;

					if (fileSize >= maxSize) {
						alert("파일 크기는 10MB까지 가능합니다.");
						$("#fileNewUpload").val("");
						return;
					}
				}

				if (!$('[name=botitle]').val()) {
					alert("제목을 입력하세요.");
					return;
				}

				x.form.action = "/board/modify";
				x.form.method = "post";
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

		<div class="container-fluid py-4 w-90">
			<div class="row" style="margin: 0 3%">
				<div class="card mb-4">
					<div class="card-header">
						<h2 id="example">공지사항</h2>
					</div>
					<div class="container w-95">
						<form action="" method="post" enctype="multipart/form-data">
									<input type="hidden" name="bono" value="${boarddto.bono }" />
									<input type="hidden" name="mno" value="${boarddto.mno }" />
							<table id="register-table" class="table">
								<tr>
									<th class="th-title"><label>제목</label></th>
									<td colspan="3"><input type="text" class="form-control" name="botitle" id="exampleFormControlInput1" value="${boarddto.botitle}" /></td>
								</tr>
								<tr>
									<th><label>내용</label></th>
									<td colspan="3"><textarea class="form-control" id="summernote" name="bocontents">${boarddto.bocontents}</textarea></td>
								</tr>
								<tr>
									<th class="th-title"><label for="formFileSm" class="form-label">첨부파일</label></th>
									<td colspan="3"><input class="form-control form-control-sm" name="file" id="fileNewUpload" type="file"> 
									<a id="uploadedFile" class="uploadedFile">${files.oriname}</a> 
									<a class="text-danger font-weight-bold text-xs" id="Xbtn" onclick="emptyFile()">삭제</span></td>
								</tr>
								<tr>
									<th class="th-title"><label for="formFileSm" class="form-label">공개여부</label></th>
									<td class="form-inline" colspan="3"><c:if test="${boarddto.bostatus eq 0}">
											<div class="form-check form-check-inline">
												<input class="form-check-input" type="radio" name="bostatus" id="inlineRadio1" value="0" checked> <label class="form-check-label" for="inlineRadio1">공개</label>
											</div>
											<div class="form-check form-check-inline">
												<input class="form-check-input" type="radio" name="bostatus" id="inlineRadio2" value="10"> <label class="form-check-label" for="inlineRadio2">비공개</label>
											</div>
										</c:if> <c:if test="${boarddto.bostatus eq 10}">
											<div class="form-check form-check-inline">
												<input class="form-check-input" type="radio" name="bostatus" id="inlineRadio1" value="0"> <label class="form-check-label" for="inlineRadio1">공개</label>
											</div>
											<div class="form-check form-check-inline">
												<input class="form-check-input" type="radio" name="bostatus" id="inlineRadio2" value="10" checked> <label class="form-check-label" for="inlineRadio2">비공개</label>
											</div>
										</c:if></td>
								</tr>

								<tr>
									<td colspan="4">
										<div class="float-end">
											<a href="/board/detail?bono=${boarddto.bono}"> 
											<input type="button" value="취소" class="btn" />
											</a> <input type="button" value="수정" class="btn" onclick="checkForm(this)" />
										</div>
									</td>
								</tr>
								<div class="hidden-fno"></div>
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