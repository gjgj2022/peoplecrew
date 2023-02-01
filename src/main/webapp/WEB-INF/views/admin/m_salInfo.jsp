<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">

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
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
  
  <style type="text/css">
  	#salstyle th {
  		text-align: center;
  	}
  	#salstyle td {
  		text-align: center;
  	}
  </style>
  
</head>

<body class="g-sidenav-show   bg-gray-100">
  <div class="min-height-300 bg-primary position-absolute w-100"></div>
  <aside class="sidenav bg-white navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-4 " id="sidenav-main">
    <div class="sidenav-header">
      <i class="fas fa-times p-3 cursor-pointer text-secondary opacity-5 position-absolute end-0 top-0 d-none d-xl-none" aria-hidden="true" id="iconSidenav"></i>
      <a class="navbar-brand m-0" href="/">
        <img src="../resources/assets/img/logo-ct-dark.png" class="navbar-brand-img h-100" alt="main_logo">
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
          <h6 class="font-weight-bolder text-white mb-0">사원조회</h6>
        </nav>
       
       <!-- 로그인 헤더  -->
		<%@ include file="../include/header.jsp" %>
		       
      </div>
    </nav>
    <!-- End Navbar -->
    &emsp;


     <!-- 급여차트 -->
     <div class="container-fluid row flex-nowrap" style="margin-left: 0px;">
       <div class="card w-65" style="margin-right: 10px;">
         <div class="card-header border-0">
           <div class="d-flex justify-content-between">
             <h3 class="card-title">부서별 최고 급여 / 평균 급여</h3>
           </div>
         </div>
         <div class="card-body">

           <div class="position-relative mb-4">
             <canvas id="sales-chart" height="400"></canvas>
           </div>

           <div class="d-flex flex-row justify-content-end">
             <span class="mr-2">
               <i class="fas fa-square text-danger"></i> 부서 최고 급여 &nbsp;&nbsp;
             </span>
             <span>
               <i class="fas fa-square text-info" style=""></i>  부서 평균 급여
             </span>
           </div>
           
         </div>
       </div>
       <!-- /.card -->
       
       <div class="card w-35">
         <div class="card-header border-0">
           <div class="d-flex justify-content-between">
             <h3 class="card-title">직급별 평균 급여</h3>
           </div>
         </div>
         <div class="card-body">

           <div class="position-relative mb-4">
             <canvas id="sales-chart2" height="400"></canvas>
           </div>

           <div class="d-flex flex-row justify-content-end">
             <span class="mr-2">
               <i class="fas fa-square text-primary"></i> 직급 최고 급여 &nbsp;&nbsp;
             </span>
             <span>
               <i class="fas fa-square text-success"></i>  직급 평균 급여
             </span>
           </div>
           
         </div>
       </div>
       <!-- /.card -->
     </div>
     <!-- /급여차트end -->
     
    
    
    <div class="container-fluid py-4">
      <div class="row">
        <div class="col-12">
          <div class="card mb-4">
            <div class="card-header pb-0">
              <span style="font-size: 18px; font-weight: bolder;">급여정보</span>
              <form action="/admin/search2" method="get" name="search-form" id="sform">
              <div class="input-group " style="width: 20%; float: right;">
	              <span class="input-group-text text-body">
              	  <a href="#" onclick="document.getElementById('sform').submit();"><i class="fas fa-search" aria-hidden="true"></i></a>
              	  </span>
	              <input type="text" class="form-control" name="keyword" id="keyword" value="" placeholder="검색어를 입력해주세요.">
           	  </div>
              </form>
            </div>
            
			<br>
			
            <div class="card-body px-0 pt-0 pb-2">
              <div class="table-responsive p-0">
                <table class="table align-items-center mb-0">
                  <thead>
                    <tr>
                      <th class="text-uppercase text-secondary text-s font-weight-bolder opacity-7 ps-6">지급일자</th>
                      <th class="text-uppercase text-secondary text-s font-weight-bolder opacity-7 ps-2">사번</th>
                      <th class="text-uppercase text-secondary text-s font-weight-bolder opacity-7 ps-4">이름</th>
                      <th class="text-uppercase text-secondary text-s font-weight-bolder opacity-7 ps-4">부서</th>
                      <th class="text-uppercase text-secondary text-s font-weight-bolder opacity-7 ps-4">지급총액</th>
                      <th class="text-uppercase text-secondary text-s font-weight-bolder opacity-7 ps-4">공제총액</th>
                	  <th class="text-uppercase text-secondary text-s font-weight-bolder opacity-7 ps-4">실수령액</th>
                      <th class="text-uppercase text-secondary text-s font-weight-bolder opacity-7 ps-1">급여상세</th>
                    </tr>
                  </thead>
                  
                  <tbody>
                  <c:forEach var="dto" items="${list }" varStatus="vs">
                    <tr>
                      <td class="ps-6">
                        <span class="text-secondary text-s font-weight-bolder">2023.01.25</span> <!--지급일자-->
                      </td>
                      <td class="ps-2">
                        <span class="text-secondary text-s font-weight-bolder">${dto.mno }</span> <!--사번-->
                      </td>
                      <td class="ps-4">
                        <span class="text-secondary text-s font-weight-bolder">${dto.mname }</span> <!--이름-->
                      </td>
                      <td class="ps-4">
                        <span class="text-secondary text-s font-weight-bolder">${dto.oname }</span> <!--부서-->
                      </td>
                      <td class="ps-4"> 
                        <span class="text-secondary text-s font-weight-bolder"> <!--지급총액-->
                        	<fmt:formatNumber value="${dto.msal}" pattern="###,###,###" />원
                        </span> 
                      </td>
                      <td class="ps-4">
                        <span class="text-secondary text-s font-weight-bolder"> <!--공제총액-->	
							                        		<%-- 국민연금료 --%>
							                        		<%-- 건강보험료 --%>
							                        		<%-- 장기요양보험료 --%>
							                        		<%-- 고용보험료 --%>
							                        		<%-- 근로소득세 --%>
							                        		<%-- 지방소득세 --%>
                        	<fmt:formatNumber value="
                        	${dto.msal * 0.045 + 
                        	dto.msal * 0.03545 +
                        	(dto.msal * 0.03545) * 0.1281 +
                        	dto.msal * 0.09 +
                        	dto.msal * 0.025 +
                        	(dto.msal * 0.025) * 0.1 }" pattern="###,###,###" />원
                        </span> 
                      </td>
                      <td class="ps-4">
                        <span class="text-secondary text-s font-weight-bolder"> <!--실수령액-->
                        	<fmt:formatNumber value="
                        	${dto.msal -
                        	(dto.msal * 0.045 + 	
                        	dto.msal * 0.03545 +
                        	(dto.msal * 0.03545) * 0.1281 +
                        	dto.msal * 0.09 +
                        	dto.msal * 0.025 +
                        	(dto.msal * 0.025) * 0.1) }" pattern="###,###,###" />원
                        </span> 
                      </td>
                      
                      <!--sal?mno=${dto.mno }  -->
                      <td class="ps-1">
                      
                        <a 	data-mno="${dto.mno }" data-msal="${dto.msal }" data-mname="${dto.mname }" 
                        	data-oname="${dto.oname }" data-mrank="${dto.mrank}" data-mdate="${dto.mdate}"
                        	data-bs-target="#msal" data-bs-toggle="modal"
                        	class="btn btn-success" style="margin-bottom: 0;"> 보기
                    	</a>
                      </td>
                    </tr>
                    
                  </c:forEach>
                  
                  	<tr>
						<td colspan="8">
							<nav aria-label="Page navigation example">
							  <ul class="pagination justify-content-center" style="margin-bottom: 0; margin-top: 10px;" >
							 
							  	<c:if test="${map.isPre }">
								    <li class="page-item"><a class="page-link" href="admin3?cp=${map.currentPage-5 }">이전</a></li>
							  	</c:if>
							  	
							  	<c:forEach var="i" begin="${map.startPage }" end="${map.endPage }">
								    <li class="page-item"><a class="page-link" href="admin3?cp=${i}">${i }</a></li>
							  	</c:forEach>
		
							    <c:if test="${map.isNext }">
								    <li class="page-item"><a class="page-link" href="admin3?cp=${map.currentPage+5 }">다음</a></li>
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
      
      
        <!--modal -->
		<div class="modal fade" id="msal" tabindex="-1" 
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<h1 class="modal-title fs-5" id="exampleModalLabel">급여명세서</h1>
					</div>
					
					<div class="modal-body">
						<div id="salstyle">
						<table class="table table-info">
						  <thead>
						    <tr>
						      <th scope="col">부서</th>
						      <th scope="col">직급</th>
						      <th scope="col">성명</th>
						      <th scope="col">입사일</th>
						    </tr>
						  </thead>
						  <tbody>
						    <tr>
						      <th id="oname"></th>
						      <th id="mrank"></th>
						      <th id="mname"></th>
						      <th id="mdate"></th>
						    </tr>
						  </tbody>
						  </table>
						  <br>
						  
						  <table class="table table-hover table-bordered">
						  <h6>1. 실 지급액</h6>
						  <thead>
						    <tr>
						      <th scope="col">지급 합계</th>
						      <th scope="col">공제 합계</th>
						      <th scope="col">실 수령액</th>
						    </tr>
						  </thead>
						  <tbody>
						    <tr>
						      <th id="msal1"></th>
						      <th id="msal2"></th>
						      <th id="msal3"></th>
						    </tr>
						  </tbody>
						  </table>
						  
						  <br>
						  <table class="table table-hover table-bordered">
						  <h6>2. 지급 내역</h6>
						  <thead>
						    <tr>
						      <th colspan="2">지급항목</th>
						      <th colspan="2">공제항목</th>
						    </tr>
						  </thead>
						  <tbody>
						    <tr>
						      <th>기본급여</th>
						      <td id="msal4"></td>
						      <th>국민연금료</th>
						      <td id="msala"></td>
						    </tr>
						    <tr>
						      <th>시간외수당</th>
						      <td>100,000원</td>
						      <th>건강보험료</th>
						      <td id="msalb"></td>
						    </tr>
						    <tr>
						      <th>식 대</th>
						      <td>100,000원</td>
						      <th>장기요양보험료</th>
						      <td id="msalc"></td>
						    </tr>
						    <tr>
						      <th>상여금</th>
						      <td>0원</td>
						      <th>고용보험료</th>
						      <td id="msald"></td>
						    </tr>
						    <tr>
						      <th>직책수당</th>
						      <td>0원</td>
						      <th>근로소득세</th>
						      <td id="msale"></td>
						    </tr>
						    <tr>
						      <th>교육지원</th>
						      <td>0원</td>
						      <th>지방소득세</th>
						      <td id="msalf"></td>
						    </tr>
						  </tbody>
						  </table>
						  <br>
						  </div>
					</div>
														
					<div class="modal-footer">
						<button type="button" class="btn btn-primary"  data-bs-dismiss="modal" >닫기</button>
					</div>
					
				</div>
			</div>
		</div>
     
   
    <!-- 푸터  -->
    <%@ include file="../include/footer.jsp" %>
     
     </div>
  </main>
   <!-- End main  -->  
   
   
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
  
  
  <!--급여 관련-->
  <script type="text/javascript">
    $(document).ready(function() {
        $("#msal").on("show.bs.modal", function(e) {
            var mno = $(e.relatedTarget).data('mno');
            var m = $(e.relatedTarget).data('msal');
            var mname = $(e.relatedTarget).data('mname');
            var oname = $(e.relatedTarget).data('oname');
            var mrank = $(e.relatedTarget).data('mrank');
            var mdate = $(e.relatedTarget).data('mdate');
			
            let msal = Math.round(m-200000)											// 기본급여
			let msala = Math.round(m*0.045)  										// 국민연금료
			let msalb = Math.round(m*0.03545)  										// 건강보험료
			let msalc = Math.round((m * 0.03545) * 0.1281) 					 		// 장기요양보험료
			let msald = Math.round(m*0.09) 											// 고용보험료
			let msale = Math.round(m*0.025)  										// 근로소득세
			let msalf = Math.round((m*0.025) * 0.1) 								// 지방소득세
			let msaltd = Math.round(msala+msalb+msalc+msald+msale+msalf) 			// 공제총액
			let msalSum = Math.round(m -(msala+msalb+msalc+msald+msale+msalf)) 		// 실지급액
																     				
																           	
            //console.log(mno,msal,mname,mrank);
            
            $("#mname").text(mname);
            $("#oname").text(oname);
            $("#mrank").text(mrank);
            $("#mdate").text(mdate);
            
            $("#msal1").text(m.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',')+"원"); // 급여
            $("#msal2").text(msaltd.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',')+"원"); 	// 공제총액
            $("#msal3").text(msalSum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',')+"원");	// 실지급액
            
            $("#msal4").text(msal.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',')+"원");	// 기본금
            $("#msala").text(msala.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',')+"원");	// 국민연금료
            $("#msalb").text(msalb.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',')+"원");	// 건강보험료
            $("#msalc").text(msalc.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',')+"원");	// 장기요양보험료
            $("#msald").text(msald.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',')+"원");	// 고용보험료
            $("#msale").text(msale.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',')+"원");	// 근로소득세
            $("#msalf").text(msalf.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',')+"원");	// 지방소득세
            
            
        });
    });
	</script>
  
  <!--   Core JS Files   -->
  <script src="../resources/assets/js/core/popper.min.js"></script>
  <script src="../resources/assets/js/core/bootstrap.min.js"></script>
  <script src="../resources/assets/js/plugins/perfect-scrollbar.min.js"></script>
  <script src="../resources/assets/js/plugins/smooth-scrollbar.min.js"></script>
  <script src="../resources/assets/js/plugins/chartjs.min.js"></script>
  
  <!-- chart js 파일 -->
  <script src="../resources/chart/jquery.min.js"></script>
  <script src="../resources/chart/Chart.min.js"></script>
  
  
  <!--부서별 임금 차트-->
  <script type="text/javascript">
  $(function () {
	  'use strict'

	  var ticksStyle = {
	    fontColor: '#495057',
	    fontStyle: 'bold'
	  }

	  var mode = 'index'
	  var intersect = true
	  
	  var $salesChart = $('#sales-chart')
	  
	  // eslint-disable-next-line no-unused-vars
	  var salesChart = new Chart($salesChart, {
	    type: 'bar',
	    data: {
	      labels: ['총무부', '경리부', '품질관리부', '생산1팀', '생산2팀', '상품관리부', '기술생산1팀', '기술생산2팀', '헤외영업부', '국내영업부', '고객관리부', '개발1팀', '개발2팀', '유지보수팀', '부설연구소'],
	      
	      datasets: [
	        {
	          backgroundColor: '#E53A40',
	          borderColor: '#E53A40',
	          label:'부서 최고 급여',
	          data: [${avg[0].mmsal},${avg[1].mmsal}, ${avg[2].mmsal}, ${avg[3].mmsal}, ${avg[4].mmsal},${avg[5].mmsal}, 
	        	  ${avg[6].mmsal}, ${avg[7].mmsal}, ${avg[8].mmsal}, ${avg[9].mmsal},${avg[10].mmsal}, ${avg[11].mmsal}, 
	        	  ${avg[12].mmsal}, ${avg[13].mmsal}, ${avg[14].mmsal}]
	        },
	        {
	          backgroundColor: '#11CDEF',
	          borderColor: '#11CDEF',
	          label:'부서 평균 급여',
	          data: [${avg[0].amsal},${avg[1].amsal}, ${avg[2].amsal}, ${avg[3].amsal}, ${avg[4].amsal},${avg[5].amsal}, 
	        	  ${avg[6].amsal}, ${avg[7].amsal}, ${avg[8].amsal}, ${avg[9].amsal},${avg[10].amsal}, ${avg[11].amsal}, 
	        	  ${avg[12].amsal}, ${avg[13].amsal}, ${avg[14].amsal}]
	        }
	      ]
	  
	    },
     
	    options: {
	      maintainAspectRatio: false,
	      tooltips: {
	        mode: mode,
	        intersect: intersect
	      },
	      hover: {
	        mode: mode,
	        intersect: intersect
	      },
	      legend: {
	        display: false
	      },
	      scales: {
	        yAxes: [{
	          // display: false,
	          gridLines: {
	            display: true,
	            lineWidth: '4px',
	            color: 'rgba(0, 0, 0, .2)',
	            zeroLineColor: 'transparent'
	          },
	          ticks: $.extend({
	            beginAtZero: true,

	            // Include a dollar sign in the ticks
	            callback: function (value) {
	              if (value >= 10000) {
	                value /= 10000
	                value += '만'
	              }

	              return value + '원'
	            }
	          }, ticksStyle)
	        }],
	        xAxes: [{
	          display: true,
	          gridLines: {
	            display: false
	          },
	          ticks: ticksStyle
	        }]
	      }
	    }
	  })
	})
  </script>
  
  <!--직급별 임금 차트 -->
  <script type="text/javascript">
  $(function () {
	  'use strict'

	  var ticksStyle = {
	    fontColor: '#495057',
	    fontStyle: 'bold'
	  }

	  var mode = 'index'
	  var intersect = true
	  
	  var $salesChart = $('#sales-chart2')
	  
	  // eslint-disable-next-line no-unused-vars
	  var salesChart = new Chart($salesChart, {
	    type: 'bar',
	    data: {
	      labels: ['사원','대리','팀장','부장'],
	      
	      datasets: [
	        {
	          backgroundColor: '#5E72E4',
	          borderColor: '#5E72E4',
	          label:'직급 최고 급여',
	          data: [${avg2[1].mmsal},${avg2[0].mmsal},${avg2[3].mmsal},${avg2[2].mmsal}]
	        },
	        {
	          backgroundColor: '#2DCE89',
	          borderColor: '#2DCE89',
	          label:'직급 평균 급여',
	          data: [${avg2[1].amsal},${avg2[0].amsal},${avg2[3].amsal},${avg2[2].amsal}]
	        }
	      ]
	  
	    },
     
	    options: {
	      maintainAspectRatio: false,
	      tooltips: {
	        mode: mode,
	        intersect: intersect
	      },
	      hover: {
	        mode: mode,
	        intersect: intersect
	      },
	      legend: {
	        display: false
	      },
	      scales: {
	        yAxes: [{
	          // display: false,
	          gridLines: {
	            display: true,
	            lineWidth: '4px',
	            color: 'rgba(0, 0, 0, .2)',
	            zeroLineColor: 'transparent'
	          },
	          ticks: $.extend({
	            beginAtZero: true,

	            // Include a dollar sign in the ticks
	            callback: function (value) {
	              if (value >= 10000) {
	                value /= 10000
	                value += '만'
	              }

	              return value + '원'
	            }
	          }, ticksStyle)
	        }],
	        xAxes: [{
	          display: true,
	          gridLines: {
	            display: false
	          },
	          ticks: ticksStyle
	        }]
	      }
	    }
	  })
	})
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