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
      <a class="navbar-brand " href="/" style="margin-right: 0; text-align: center;">
        <img src="https://i.ibb.co/1dzdtP6/logo.png" alt="main_logo">
      </a>
    </div>
    <hr class="horizontal dark mt-0">
   
   <div class="collapse navbar-collapse  w-auto " id="sidenav-collapse-main">
  <!-- 좌측 사이드바 -->
    <ul class="navbar-nav" data-widget="treeview" role="menu" data-accordion="false">

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#a-nav" data-bs-toggle="collapse" href="#">
         <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
             <i class="ni ni-tv-2 text-primary text-sm opacity-10"></i>
         </div>
         <span>인사관리</span>
        </a>
        <ul id="a-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="personnel_info/mypage?mno=${dto.mno }">
              <i class="bi bi-circle"></i>
              <span>마이페이지</span>
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
      </li><!-- End 인사정보 Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#b-nav" data-bs-toggle="collapse" href="#">
         <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
             <i class="ni ni-tv-2 text-primary text-sm opacity-10"></i>
         </div>
         <span>업무관리</span>
        </a>
        <ul id="b-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
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
      </li><!-- End 업무관리 Nav -->
      
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#c-nav" data-bs-toggle="collapse" href="#">
         <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
             <i class="ni ni-tv-2 text-primary text-sm opacity-10"></i>
         </div>
         <span>근태관리</span>
        </a>
        <ul id="c-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="/attendance?mno=${dto.mno }">
              <i class="bi bi-circle"></i>
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
      </li><!-- End 근태관리 Nav -->
      
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#d-nav" data-bs-toggle="collapse" href="#">
         <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
             <i class="ni ni-tv-2 text-primary text-sm opacity-10"></i>
         </div>
         <span>전자결재</span>
        </a>
        <ul id="d-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="/apvHome"> 
            <i class="bi bi-circle"></i> 
            <span>전자결재홈</span>
            </a>
          </li>
          <li>
             <a href="/apvWrite?form=연차신청서"> 
             <i class="bi bi-circle"></i> 
             <span>기안작성</span>
			</a>
          </li>
          <li>
             <a href="/personalFile?apvP=전체문서">
             <i class="bi bi-circle"></i> 
             <span>개인문서함</span>
			</a>
          </li>
          <li>
             <a href="/apvProgress">
             <i class="bi bi-circle"></i> 
             <span>결재처리함</span>
			</a>
          </li>
          <li>
             <a href="/oldFile">
             <i class="bi bi-circle"></i> 
             <span>오래된문서함</span>
			</a>
          </li>
        </ul>
      </li><!-- End 근태관리 Nav -->
      
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#e-nav" data-bs-toggle="collapse" href="#">
         <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
             <i class="ni ni-tv-2 text-primary text-sm opacity-10"></i>
         </div>
         <span>게시판</span>
        </a>
        <ul id="e-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="/board/list">
              <i class="bi bi-circle"></i>
              <span>공지사항</span>
            </a>
          </li>
        </ul>
      </li><!-- End 게시판 Nav -->
      
      <li class="nav-item">
        <a class="nav-link" data-bs-target="#f-nav" data-bs-toggle="collapse" href="#">
          <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
             <i class="ni ni-tv-2 text-primary text-sm opacity-10"></i>
          </div>
         <span>인사관리 (관리자)</span>
        </a>
        <ul id="f-nav" class="nav-content collapse show" data-bs-parent="#sidebar-nav">
          <li>
            <a href="/admin/sign">
              <i class="bi bi-circle"></i>
              <span>사원정보등록</span>
            </a>
          </li>
          <li>
            <a href="/admin/admin2" >
              <i class="bi bi-circle"></i>
              <span>사원조회</span>
            </a>
          </li>
          <li>
            <a href="/admin/admin3" class="nav-link active" >
              <i class="bi bi-circle"></i>
              <span>급여관리</span>
            </a>
          </li>
          <li>
            <a href="/admin/page" >
              <i class="bi bi-circle"></i>
              <span>근태관리</span>
            </a>
          </li>
        </ul>
      </li><!-- End 인사관리자 Nav -->
      
    </ul>
  	</aside><!-- End Sidebar-->
  
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
							 
							  	<c:choose>
								  	<c:when test="${map.isPre }">
								  		<c:choose>
								  			<c:when test="${empty keyword}">
								  			 	<li class="page-item"><a class="page-link" href="admin3?cp=${map.currentPage-5 }">이전</a></li>
								  			</c:when>
								  			<c:otherwise>
											    <li class="page-item"><a class="page-link" href="search2?keyword=${keyword}&cp=${map.currentPage-5 }">이전</a></li>
								  			</c:otherwise>
								  		</c:choose>
								  	</c:when>
							 	</c:choose>
								  	
								  	<c:forEach var="i" begin="${map.startPage }" end="${map.endPage }">
								  		<c:choose>
								  			<c:when test="${empty keyword}">
											    <li class="page-item"><a class="page-link" href="admin3?cp=${i}">${i }</a></li>
								  			</c:when>
								  			<c:otherwise>
											    <li class="page-item"><a class="page-link" href="search2?keyword=${keyword}&cp=${i}">${i }</a></li>
								  			</c:otherwise>
								  		</c:choose> 
								  	</c:forEach>
								  	
								<c:choose>
								    <c:when test="${map.isNext }">
								    	<c:choose>
								  			<c:when test="${empty keyword}">
											    <li class="page-item"><a class="page-link" href="admin3?cp=${map.currentPage+5 }">다음</a></li>
								  			</c:when>
								  			<c:otherwise>
											    <li class="page-item"><a class="page-link" href="search2?keyword=${keyword}&cp=${map.currentPage+5 }">다음</a></li>
								  			</c:otherwise>
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
	      labels: ['사원','주임','대리','팀장','부장'],
	      
	      datasets: [
	        {
	          backgroundColor: '#5E72E4',
	          borderColor: '#5E72E4',
	          label:'직급 최고 급여',
	          data: [${avg2[0].mmsal},${avg2[1].mmsal},${avg2[2].mmsal},${avg2[3].mmsal},${avg2[4].mmsal}]
	        },
	        {
	          backgroundColor: '#2DCE89',
	          borderColor: '#2DCE89',
	          label:'직급 평균 급여',
	          data: [${avg2[0].amsal},${avg2[1].amsal},${avg2[2].amsal},${avg2[3].amsal},${avg2[4].mmsal}]
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