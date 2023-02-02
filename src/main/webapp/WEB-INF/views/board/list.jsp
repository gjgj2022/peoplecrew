<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
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
	


		<!-- Table -->
		<!-- Datatable library CDN -->
		<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs5/jq-3.6.0/dt-1.13.1/sb-1.4.0/datatables.min.css" />
		<script type="text/javascript" src="https://cdn.datatables.net/v/bs5/jq-3.6.0/dt-1.13.1/sb-1.4.0/datatables.min.js"></script>

		<script>
			/* 데이터테이블 라이브러리 */
			$(document).ready(function() {
				$('#dataTable').DataTable({
					"columnDefs" : [ {
						"defaultContent" : "-",
						"targets" : "_all"
					} ],
					//pageLength : 10,
					bPaginate : false,
					bLengthChange : true,
					//lengthMenu : [ 10, 20, 30, 40 ],
					bAutoWidth : false,
					processing : true,
					order : [ [ 0, 'desc' ] ], /* 글번호 기준 */
					ordering : true,
					serverSide : false,
					searching : true,
					bInfo : false,

				});
			});
		</script>

		<!-- CSS 수정 -->
		<style>
#replyCount {
	color: #EF4239;
}

.form-select-sm {
	width: 70px !important;
}

.pagenationdiv {
	display: flex !important;
	justify-content: center !important;
}

.tfoot {
	border-bottom: white;
}
</style>

		<div class="container-fluid py-4 w-90">
			<div class="row" style="margin: 0 3%">
				<div class="card mb-4">
					<div class="card-header">
						<h2 id="example">공지사항</h2>
					</div>

					<div class="container">
						<div class="card-body px-0 pt-0 pb-2">
							<div class="table-responsive ">

								<table id="dataTable" class="table">
									<thead class="thead-light">
										<tr>
											<th class="text-center text-uppercase text-xxs font-weight-bolder opacity-7" style="width: 10%">번호</th>
											<th class="text-center text-uppercase text-xxs font-weight-bolder opacity-7">제목</th>
											<th class="text-center text-uppercase text-xxs font-weight-bolder opacity-7">작성자</th>
											<th class="text-center text-uppercase text-xxs font-weight-bolder opacity-7">작성일</th>
											<th class="text-center text-uppercase text-xxs font-weight-bolder opacity-7" style="width: 10%">조회수</th>
										</tr>
									</thead>

									<tbody>
										<c:forEach var="boarddto" items="${list }">
											<tr>
												<td class="align-middle text-center"><span class="text-secondary text-xs font-weight-bold">${boarddto.bono }</span></td>
												<td class="text-sm font-weight-normal">
													<div class="d-flex px-2 py-1">
														<div class="d-flex flex-column justify-content-center">
															<h6 class="mb-0 text-xs">


																<c:if test="${boarddto.bostatus eq 10}">
																	<c:choose>
																		<c:when test="${boarddto.mno eq dto.mno || dto.role eq 'ROLE_ADMIN'}">

																			<a href='detail?bono=${boarddto.bono }'>${boarddto.botitle } <span class='replyCount${boarddto.bono}' id='replyCount'>[${boarddto.recnt}]</span> <script>
															if(${boarddto.recnt}==0){
																$('.replyCount'+${boarddto.bono}).hide();
															}
															</script>
																			</a>
																		</c:when>
																		<c:otherwise>
																			<img width="13px" src="https://cdn-icons-png.flaticon.com/512/891/891399.png" />
																				비밀글은 작성자와 관리자만 볼 수 있습니다.</c:otherwise>
																	</c:choose>
																</c:if>

																<c:if test="${boarddto.bostatus eq 0}">
																	<a href='detail?bono=${boarddto.bono }'>${boarddto.botitle } <span class='replyCount${boarddto.bono}' id='replyCount'>[${boarddto.recnt}]</span> <script>
																		if(${boarddto.recnt}==0){
																			$('.replyCount'+${boarddto.bono}).hide();
																		}
																		</script>
																	</a>
																</c:if>
															</h6>
														</div>
													</div>
												</td>
												<td class="align-middle text-center">
													<p class="text-xs font-weight-bold mb-0">${boarddto.mname }</p>
												</td>
												<td class="align-middle text-center"><span class="text-secondary text-xs font-weight-bold"> ${boarddto.bodate }</span></td>
												<td class="align-middle text-center"><span class="text-secondary text-xs font-weight-bold"> ${boarddto.bohits }</span></td>
											</tr>
										</c:forEach>
									</tbody>
									<tfoot>
										<tr>
											<td class="tfoot"><c:if test="${not empty dto && dto.mrank ne '사원' }">
													<a href="write"><input type="button" id="write_btn" name="write_btn" class="btn" value="글쓰기" style="display: inline-block" /></a>
												</c:if></td>
											<td class="tfoot" colspan="4">
												<!-- 페이징처리  -->

												<div class="justify-content-center mb-3 pagenationdiv">
													<nav aria-label="Page navigation example ">
														<ul class="pagination">
															<c:if test="${map.isPre }">
																<!-- 값이 있으면 보여주기 -->
																<li class="page-item"><c:choose>
																		<c:when test="${map.stratPage-10 <= 0}">
																			<a class="page-link" href="list?cp=1"><b>&laquo;</b></a></li>
																</c:when>
																<c:otherwise>
																	<a class="page-link" href="list?cp=${map.startPage-10 }"><b>&laquo;</b></a>
																	</li>
																</c:otherwise>
																</c:choose>
															</c:if>

															<c:forEach var="i" begin="${map.startPage }" end="${map.endPage }">
																<li class="page-item"><c:choose>
																		<c:when test="${i==map.currentPage}">
																			<a class="page-link" style="color: red" href="list?cp=${ i}">${ i}</a>
																		</c:when>
																		<c:otherwise>
																			<a class="page-link" href="list?cp=${ i}">${ i}</a>
																		</c:otherwise>
																	</c:choose></li>
															</c:forEach>

															<c:if test="${map.isNext }">
																<li class="page-item"><a class="page-link" href="list?cp=${map.endPage+1 }"><b>&raquo;</b></a></li>
															</c:if>
														</ul>
													</nav>
												</div>
											</td>
										</tr>
									</tfoot>
								</table>
								<div></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="../footer.jsp" />
	</main>
</body>

</html>