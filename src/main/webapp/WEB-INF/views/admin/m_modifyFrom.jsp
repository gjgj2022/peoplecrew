<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>PeopleCrew</title>
  
  <!-- Nucleo Icons -->
  <link href="../resources/assets/css/nucleo-svg.css" rel="stylesheet" />
  <!-- Font Awesome Icons -->
  <link href="../resources/assets/css/nucleo-svg.css" rel="stylesheet" />
  <!-- CSS Files -->
  <link id="pagestyle" href="../resources/assets/css/argon-dashboard.css?v=2.0.4" rel="stylesheet" />
  
  <!-- 폰번호 - 정규식 -->
  <script type="text/javascript">
  	function phone(target) {
	    target.value = target.value
	        .replace(/[^0-9]/g, '')
	        .replace(/(^02.{0}|^01.{1}|[0-9]{3,4})([0-9]{3,4})([0-9]{4})/g, "$1-$2-$3");
	}
  </script>
  
  <!-- 파일첨부 이미지 미리보기   -->
  <script type="text/javascript">
	function preview(input) {
		  if (input.files && input.files[0]) {
		    var reader = new FileReader();
		    reader.onload = function(e) {
		      document.getElementById('m_image').src = e.target.result;
		    };
		    reader.readAsDataURL(input.files[0]);
		  } else {
		    document.getElementById('m_image').src = "";
		  }
		}
  </script>
  
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
         	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-people" viewBox="0 0 16 16">
  				<path d="M15 14s1 0 1-1-1-4-5-4-5 3-5 4 1 1 1 1h8Zm-7.978-1A.261.261 0 0 1 7 12.996c.001-.264.167-1.03.76-1.72C8.312 10.629 9.282 10 11 10c1.717 0 2.687.63 3.24 1.276.593.69.758 1.457.76 1.72l-.008.002a.274.274 0 0 1-.014.002H7.022ZM11 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4Zm3-2a3 3 0 1 1-6 0 3 3 0 0 1 6 0ZM6.936 9.28a5.88 5.88 0 0 0-1.23-.247A7.35 7.35 0 0 0 5 9c-4 0-5 3-5 4 0 .667.333 1 1 1h4.216A2.238 2.238 0 0 1 5 13c0-1.01.377-2.042 1.09-2.904.243-.294.526-.569.846-.816ZM4.92 10A5.493 5.493 0 0 0 4 13H1c0-.26.164-1.03.76-1.724.545-.636 1.492-1.256 3.16-1.275ZM1.5 5.5a3 3 0 1 1 6 0 3 3 0 0 1-6 0Zm3-2a2 2 0 1 0 0 4 2 2 0 0 0 0-4Z"/>
			 </svg>
         </div>
         <span>인사정보</span>
        </a>
        <ul id="a-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="/personnel_info/mypage?mno=${dto.mno }">
              <span>마이페이지</span>
            </a>
          </li>
          <li>
            <a href="/personnel_info/cs">
              <span>문의사항</span>
            </a>
          </li>
          <li>
            <a href="/personnel_info/stafflist">
              <span>직원 현황</span>
            </a>
          </li>
          <li>
             <a href="/personnel_info/organization2">
              <span>조직도</span>
            </a>
          </li>
        </ul>
      </li><!-- End 인사정보 Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#b-nav" data-bs-toggle="collapse" href="#">
         <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
         	 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-calendar2-check" viewBox="0 0 16 16">
			   <path d="M10.854 8.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 0 1 .708-.708L7.5 10.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
			   <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM2 2a1 1 0 0 0-1 1v11a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V3a1 1 0 0 0-1-1H2z"/>
			   <path d="M2.5 4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5H3a.5.5 0 0 1-.5-.5V4z"/>
			 </svg>
         </div>
         <span>업무관리</span>
        </a>
        <ul id="b-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="/calendar/list">
              <span>캘린더</span>
            </a>
          </li>
          <li>
            <a href="/calendar/mycalendar">
              <span>나의 업무</span>
            </a>
          </li>
        </ul>
      </li><!-- End 업무관리 Nav -->
      
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#c-nav" data-bs-toggle="collapse" href="#">
         <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-clock" viewBox="0 0 16 16">
			   <path d="M8 3.5a.5.5 0 0 0-1 0V9a.5.5 0 0 0 .252.434l3.5 2a.5.5 0 0 0 .496-.868L8 8.71V3.5z"/>
			   <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm7-8A7 7 0 1 1 1 8a7 7 0 0 1 14 0z"/>
			 </svg>
         </div>
         <span>근태관리</span>
        </a>
        <ul id="c-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="/attendance?mno=${dto.mno }">
              <span>근태관리</span>
            </a>
          </li>
          <li>
             <a href="/vacation">
              <span>휴가관리</span>
            </a>
          </li>
        </ul>
      </li><!-- End 근태관리 Nav -->
      
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#d-nav" data-bs-toggle="collapse" href="#">
         <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-credit-card-2-back" viewBox="0 0 16 16">
  				<path d="M11 5.5a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1-.5-.5v-1z"/>
  				<path d="M2 2a2 2 0 0 0-2 2v8a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V4a2 2 0 0 0-2-2H2zm13 2v5H1V4a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1zm-1 9H2a1 1 0 0 1-1-1v-1h14v1a1 1 0 0 1-1 1z"/>
			 </svg>
         </div>
         <span>전자결재</span>
        </a>
        <ul id="d-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="/apvHome"> 
            <span>전자결재홈</span>
            </a>
          </li>
          <li>
             <a href="/apvWrite?form=연차신청서"> 
             <span>기안작성</span>
			</a>
          </li>
          <li>
             <a href="/personalFile?apvP=전체문서">
             <span>개인문서함</span>
			</a>
          </li>
          <li>
             <a href="/apvProgress">
             <span>결재처리함</span>
			</a>
          </li>
          <li>
             <a href="/oldFile">
             <span>오래된문서함</span>
			</a>
          </li>
        </ul>
      </li><!-- End 근태관리 Nav -->
      
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#e-nav" data-bs-toggle="collapse" href="#">
         <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
			 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pass" viewBox="0 0 16 16">
  				<path d="M5.5 5a.5.5 0 0 0 0 1h5a.5.5 0 0 0 0-1h-5Zm0 2a.5.5 0 0 0 0 1h3a.5.5 0 0 0 0-1h-3Z"/>
  				<path d="M8 2a2 2 0 0 0 2-2h2.5A1.5 1.5 0 0 1 14 1.5v13a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 14.5v-13A1.5 1.5 0 0 1 3.5 0H6a2 2 0 0 0 2 2Zm0 1a3.001 3.001 0 0 1-2.83-2H3.5a.5.5 0 0 0-.5.5v13a.5.5 0 0 0 .5.5h9a.5.5 0 0 0 .5-.5v-13a.5.5 0 0 0-.5-.5h-1.67A3.001 3.001 0 0 1 8 3Z"/>
			 </svg>
         </div>
         <span>게시판</span>
        </a>
        <ul id="e-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="/board/list">
              <span>공지사항</span>
            </a>
          </li>
        </ul>
      </li><!-- End 게시판 Nav -->
      
      <li class="nav-item">
        <a class="nav-link" data-bs-target="#f-nav" data-bs-toggle="collapse" href="#">
          <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-lock" viewBox="0 0 16 16">
 			 	<path d="M11 5a3 3 0 1 1-6 0 3 3 0 0 1 6 0ZM8 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4Zm0 5.996V14H3s-1 0-1-1 1-4 6-4c.564 0 1.077.038 1.544.107a4.524 4.524 0 0 0-.803.918A10.46 10.46 0 0 0 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h5ZM9 13a1 1 0 0 1 1-1v-1a2 2 0 1 1 4 0v1a1 1 0 0 1 1 1v2a1 1 0 0 1-1 1h-4a1 1 0 0 1-1-1v-2Zm3-3a1 1 0 0 0-1 1v1h2v-1a1 1 0 0 0-1-1Z"/>
			 </svg>
          </div>
         <span>인사관리</span>
        </a>
        <ul id="f-nav" class="nav-content collapse show" data-bs-parent="#sidebar-nav">
          <li>
            <a href="/admin/sign" >
              <span>사원정보등록</span>
            </a>
          </li>
          <li>
            <a href="/admin/admin2" class="nav-link active">
              <span>사원조회</span>
            </a>
          </li>
          <li>
            <a href="/admin/admin3" >
              <span>급여관리</span>
            </a>
          </li>
          <li>
            <a href="/admin/page" >
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
          <h6 class="font-weight-bolder text-white mb-0">인사관리 - 관리자</h6>
        </nav>
       
       <!-- 로그인 헤더  -->
		<%@ include file="../include/header.jsp" %>
		       
      </div>
    </nav>
    <!-- End Navbar -->
      
      <form action="modify" method="post" enctype="multipart/form-data">
      <div class="container-fluid py-4">
      <div class="row justify-content-center">
      
      <input type="hidden" name="mno" value="${dto2.mno }">
      <input type="hidden" name="img_name" value="${dto2.img_name }">
       
        <div class="col-md-8">
          <div class="card">
            <div class="card-header pb-0">
              <div class="d-flex align-items-center">
                <p class="mb-0">사원수정</p>
                <button type="submit" class="btn btn-info btn-sm ms-auto" onclick=" return confirm('수정 하시겠습니까?');">수정</button>
                &nbsp;
                <a href="admin2" class="btn btn-danger btn-sm" onclick="return confirm('취소 하시겠습니까?');">취소</a>
              </div>
            </div>
            <div class="card-body">
              <p class="text-uppercase text-sm">사원정보</p>
              <div>
				<div style="float: left; width: 33%; margin-right: 20px"  >	
					<div class="col">
						<div class="form-group" style="text-align: center;">
							<div class="profile_img"  >
							<c:choose>
								<c:when test="${dto2.img_path == null }">
									<img src="../assets/img/team-8.jpg" class="profile_img" id="m_image" style="width: 250px; height: 250px; "/> 
								</c:when>
								<c:otherwise>
									<img src="${dto2.img_path }${dto2.img_name}" id="m_image" class="profile_img" style="width: 250px; height: 250px; "/> 
								</c:otherwise>
							</c:choose>		
							<label for="pfile" class="form-label"></label>
							<input class="form-control" type="file" name="pfile" id="pfile" onchange="preview(this);" 
											 style="margin-top: 10px" >
							</div>
						</div>
					</div>
				</div>
              <div class="row">
                <div class="col-md-4" style="margin-top: 20px">
                  <div class="form-group">
                    <label for="example-text-input" class="form-control-label">이름</label>
                    <input class="form-control" name="mname" type="text" value="${dto2.mname }">
                  </div>
                </div>
                <div class="col-md-4" style="margin-top: 20px">
                  <div class="form-group">
                    <label for="example-text-input" class="form-control-label">이메일</label>
                    <input class="form-control" name="memail" type="email" value="${dto2.memail }">
                  </div>
                </div>
                <div class="col-md-4" style="margin-top: 20px">
                  <div class="form-group">
                    <label for="example-text-input" class="form-control-label">전화번호</label>
                    <input class="form-control" name="mphone" id="mphone" type="text" oninput="phone(this)" value="${dto2.mphone }">
                  </div>
                </div>
                <div class="col-md-4" style="margin-top: 25px">
                  <div class="form-group">
                    <label for="example-text-input" class="form-control-label">ID</label>
                    <input class="form-control" name="mid" type="text" value="${dto2.mid }">
                  </div>
                </div>
                <div class="col-md-8" style="margin-top: 25px">
                  <div class="form-group">
                    <label for="example-text-input" class="form-control-label">비밀번호</label>
                    <input class="form-control" name="password" id="password" type="text" placeholder="${dto2.password }" >
                  </div>
                </div>
                <div class="col-md-4" style="margin-top: 20px">
                  <div class="form-group">
                    <label for="example-text-input" class="form-control-label">생년(4자)</label>
                    <input class="form-control" id="mbirth1" name="mbirth1" type="text" value="${fn:substring(dto2.mbirth,0,4)}">
                  </div>
                </div>
                <div class="col-md-4" style="margin-top: 20px">
                  <div class="form-group">
                    <label for="example-text-input" class="form-select-label">월</label>
                    <select class="form-select" id="mbirth2" name="mbirth2" size="1">
						<option value="${fn:substring(dto2.mbirth,5,7)}">${fn:substring(dto2.mbirth,5,7)}</option>
						<option value=01>1월</option>
						<option value=02>2월</option>
						<option value=03>3월</option>
						<option value=04>4월</option>
						<option value=05>5월</option>
						<option value=06>6월</option>
						<option value=07>7월</option>
						<option value=08>8월</option>
						<option value=09>9월</option>
						<option value=10>10월</option>
						<option value=11>11월</option>
						<option value=12>12월</option>
					</select>
                  </div>
                </div>
                <div class="col-md-4" style="margin-top: 20px">
                  <div class="form-group">
                    <label for="example-text-input" class="form-control-label">일</label>
                    <input class="form-control" id="mbirth3" name="mbirth3" type="text" value="${fn:substring(dto2.mbirth,8,10)}">
                  </div>
                </div>
              </div>
              </div>
                
              <hr class="horizontal dark">
                
              <div class="col-md-2">
                 <div class="form-group" style="text-align:left; ; margin-top: 28px; margin-bottom: 4px;">
                 	<button type="button" class="btn bg-gradient-info" id="btn">주소찾기</button>
                 </div>
              </div>
              <div class="row">
                <div class="col-md-2">
                  <div class="form-group">
                    <label for="example-text-input" class="form-control-label">우편번호</label>
                    <input class="form-control" name="zipcode" id="zipcode" type="text" value="${dto2.zipcode }">
                  </div>
                </div>
                <div class="col-md-10">
                  <div class="form-group">
                    <label for="example-text-input" class="form-control-label">주소</label>
                    <input class="form-control" name="maddress" id="maddress" type="text" value="${dto2.maddress }">
                  </div>
                </div>
                <div class="col-md-12">
                  <div class="form-group">
                    <label for="example-text-input" class="form-control-label">상세주소</label>
                    <input class="form-control" name="maddress2" type="text" value="${dto2.maddress2 }">
                  </div>
                </div>
              </div>
             <hr class="horizontal dark">
             <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="example-text-input" class="form-select-label">직급</label>
                    <select class="form-select" id="mrank" name="mrank" size="1">
						<option value="${dto2.mrank }">${dto2.mrank }</option>
						<option value="사원">사원</option>
						<option value="주임">주임</option>
						<option value="대리">대리</option>
						<option value="과장">과장</option>
						<option value="부장">부장</option>
					</select>
                    <%--<input class="form-control" name="mrank" type="text" value="${dto2.mrank }"> --%>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="example-text-input" class="form-select-label">부서명</label>
                    <select class="form-select" id="ono" name="ono" size="1">
						<option value="${dto2.ono }">${dto2.oname }</option>
						<option value=1001>총무부</option>
						<option value=1002>경리부</option>
						<option value=2001>품질관리부</option>
						<option value=3011>생산기획1팀</option>
						<option value=3012>생산기획2팀</option>
						<option value=3021>상품관리부</option>
						<option value=3031>기술생산1팀</option>
						<option value=3032>기술생산2팀</option>
						<option value=4001>해외영업부</option>
						<option value=4002>국내영업부</option>
						<option value=4003>고객관리부</option>
						<option value=5011>개발1팀</option>
						<option value=5012>개발2팀</option>
						<option value=5021>유지보수팀</option>
						<option value=5031>부설연구소</option>
					</select>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="example-text-input" class="form-control-label">급여</label>
                    <input class="form-control" name="msal" id="msal" type="text" value="${dto2.msal }">
                  </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                      <label for="example-text-input" class="form-select-label">권한</label>
                      <select class="form-select" id="role" name="role" size="1">
						  <option value="${dto2.role }">${dto2.role }</option>
						  <option value="ROLE_USER">ROLE_USER</option>
						  <option value="ROLE_ADMIN">ROLE_ADMIN</option>
					  </select>
                    </div>
                  </div>
                </div>
              <hr class="horizontal dark">
              
            </div>
          </div>
        </div>
      </form>
     
    <!-- 푸터  -->
    <%@ include file="../include/footer.jsp" %>
     
     </div>
  </main>
   <!-- End main  -->  
  
  
  
  <!-- 주소가져오기 -->
  <script type="text/javascript">
	/* daum 주소 가져오기 */
	window.onload=function(){
		var btn = document.getElementById("btn");
		btn.onclick=openKakaoPostcode;
	}
	function openKakaoPostcode(){
		new daum.Postcode({
			oncomplete : function(data){
				
				document.getElementById("zipcode").value=data.zonecode;
				document.getElementById("maddress").value=data.roadAddress;
			}
		}).open();
	}
	    
  </script>
 

</body>

</html>