<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!--
=========================================================
* Argon Dashboard 2 - v2.0.4
=========================================================

* Product Page: https://www.creative-tim.com/product/argon-dashboard
* Copyright 2022 Creative Tim (https://www.creative-tim.com)
* Licensed under MIT (https://www.creative-tim.com/license)
* Coded by Creative Tim

=========================================================

* The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
-->
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
  <!-- ====================================================================================================== -->
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
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
					//pageLength : 5,
					bPaginate : false,
					bLengthChange : true,
					//lengthMenu : [ 10, 20, 30, 40 ],
					bAutoWidth : false,
					processing : true,
					order : [ [ 0, 'desc' ] ], /* 글번호 기준 */
					ordering : false,
					serverSide : false,
					searching : true,
					bInfo : false,
				});
			});
			</script>		
 <!-- ====================================================================================================== -->

 
 
 <!-- 
 function selectrank()
	{  
		var rex = new RegExp($('#selectrank').val());
		if(rex =="/all/"){clearFilter()}else{
			$('.content').hide();
			$('.content').filter(function() {
			return rex.test($(this).text());
			}).show();
	}
	}
	
function clearFilter()
	{
	
		$('.selectrank').val('');
		$('.content').show();
	}
  -->
<script>


	
	
function selectori(){  
	
	var rex = new RegExp($('#selectori').val());
	
	if(rex =="/all/"){clearFilter()}else{
		$('.content').hide();
		$('.content').filter(function() {
		return rex.test($(this).text());
		}).show();
}
	

}

function clearFilter()
{
	$('.selectori').val('');
	$('.content').show();
}



</script>
  <!-- 
  
  var rex2 = new RegExp($('#selectrank').val());
if(rex2 =="/all/"){clearFilter2()}else{
	$('.content2').hide();
	$('.content2').filter(function() {
	return rex2.test($(this).text());
	}).show();
}

function clearFilter2()
{

	$('.selectrank').val('');
	$('.content2').show();
}
   -->
  <style>
  /* stafflist
*/
.search_person {
	margin-left:75%;
	margin-right:20px;
	width : 50%;
	height: 100px;
	

}

.search_person 	.btn{
	margin-bottom:0px;
	padding: 10px 20px;
	}

.stafflist_table{
	width: 95%;
	text-align: center;
	
}

.stafflist_table th{
	text-align: center;
	
}
.stafflist_name{
	text-align: left;
}
#dataTable_filter{
	margin-right: 20px;
}
  
  </style>
  
</head>

<body class="g-sidenav-show   bg-gray-100">
  <div class="min-height-300 bg-primary position-absolute w-100"></div>
 	<!-- aside start -->
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
            <a href="/test">
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
            <a href="/attendance?mno=${dto.mno }">
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
    <div class="container-fluid py-4">
      <div class="row">
        <div class="col-12">
          <div class="card mb-4">
            <div class="card-header pb-0">
              <h4>직원 현황</h4>
            </div>
            <div class="col-6 text-end">
	         
	          <!-- 	<div class="search_person">
	           		<table>
	           			<tr>
	           		
	
	           				  <td><input type="text" class="form-control" placeholder="사원 검색"></td>
	           				<td><button class="btn btn-outline-primary btn-sm" >검색</button></td>
	           			</tr>
	           		</table>
	            	
	            	
                </div>-->
                
                
        
            </div>
            <div class="card-body px-0 pt-0 pb-2">
              <div class="table-responsive p-0">
                <table class="table align-items-center mb-0 stafflist_table" id="dataTable" >
                  <thead>
                    <tr >
                      <th class="text-uppercase text-center text-secondary text-xs font-weight-bolder opacity-7">이름</th>
                      
                      
                      
                     <th class="text-uppercase text-secondary text-xs font-weight-bolder opacity-7 text-center">직급</th>
						
						 <!--<div class="col">
						    
						     <select class="form-select text-xs text-center btn dropdown-toggle" id="selectrank" onchange="selectori()" >
						      <option value="all">직급</option>
						      <option value="부장">부장</option>
						      <option value="팀장">팀장</option>
						      <option value="대리">대리</option>
						     
						      <option value="주임">주임</option>
						      <option value="사원">사원</option>
						      
						    </select> 
						    
						    </div>-->
						
					<th class="text-center text-uppercase text-secondary  font-weight-bolder ">
					
					 <div class="col">
						    
						    <select class="form-select text-xs text-center btn dropdown-toggle" id="selectori" onchange="selectori()">
						      <option value="all">부서</option>
						      <c:forEach var="team" items="${team }">
						     
						      <option value="${team.oname }">${team.oname }</option>
						     
						       </c:forEach>
						    </select>
						    
						    </div>
					
											</th></th>
                      <th class="text-center text-uppercase text-secondary text-xs font-weight-bolder opacity-7">금일근무현황</th>
                      <th class="text-center text-uppercase text-secondary text-xs font-weight-bolder opacity-7">전화번호</th>
                     <th class="text-center text-uppercase text-secondary text-xs font-weight-bolder opacity-7">이메일</th>
                    </tr>
                  </thead>
                  <tbody id="myTable">
                   <c:forEach var="dto" items="${memori }">
                   <tr class="dept-data-row content content2">
                      <td>
                        <div class="d-flex px-2 py-1">
                       
                          <div>
                        	  <c:choose>
							<c:when test="${dto.img_path == null }">
												<img src="../assets/img/team-8.jpg" class="avatar avatar-sm me-3" id="m_image" /> 
											</c:when>
											<c:otherwise>
											 <img src="${dto.img_path }${dto.img_name}" class="avatar avatar-sm me-3" alt="user1"> 
											</c:otherwise>
										</c:choose>			
                          
                            
                          </div>
                          <div class="d-flex flex-column justify-content-center">
                            <h6 class="mb-0 text-sm stafflist_name">${dto.mname }</h6>
                            <p class="text-xs text-secondary mb-0">${dto.mmessage }</p>
                          </div>
                        </div>
                      </td>
                      <td>
                        <p class="text-xs font-weight-bold mb-0">${dto.mrank }</p>
                       
                      </td> 
                       <td>
                      <p class="text-xs font-weight-bold mb-0">${dto.oname }</p>
                       
                      </td>
                      <td class="align-middle text-center text-sm">
                     <c:choose>
                     <c:when test="${dto.state == '출근' }"><span class="badge badge-sm bg-gradient-success">${dto.state}</span></c:when>
                     	<c:otherwise> <span class="badge badge-sm bg-gradient-secondary">${dto.state}</span></c:otherwise>
                     </c:choose>
                       
                      </td>
                      <td class="align-middle text-center">
                        <span class="text-secondary text-xs font-weight-bold">${dto.mphone }</span>
                      </td>
                      <td class="align-middle text-center">
                        <span class="text-secondary text-xs font-weight-bold">${dto.memail }</span>
                      </td>
                    </tr>
                    </c:forEach>
                        <!-- ---------------------------------------------------------------- -->
                    
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
       
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
                <a href="https://www.creative-tim.com" class="font-weight-bold" target="_blank">People Crew</a>
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
  <script src="../assets/js/argon-dashboard.min.js?v=2.0.4"></script>
</body>

</html>