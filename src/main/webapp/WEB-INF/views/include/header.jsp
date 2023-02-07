<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="apple-touch-icon" sizes="76x76" href="./assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="./assets/img/favicon.png">

<!-- daum address  -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>

<!-- 시간 -->
<script type="text/javascript">

    document.addEventListener("DOMContentLoaded", function() {

        // 시간을 딜레이 없이 나타내기위한 선 실행
        realTimer();

        // 이후 0.5초에 한번씩 시간을 갱신한다.
        setInterval(realTimer, 500);

    });


    // 시간을 출력
    function realTimer() {

		const nowDate = new Date();
		const year = nowDate.getFullYear();
		const month= nowDate.getMonth() + 1;
		const date = nowDate.getDate();
		const hour = nowDate.getHours();
		const min = nowDate.getMinutes();
		const sec = nowDate.getSeconds();

		document.getElementById("nowTimes").innerHTML = 
                  year + "-" + addzero(month) + "-" + addzero(date) + "&nbsp;" + hour + ":" + addzero(min) + ":" + addzero(sec);

	}


    // 1자리수의 숫자인 경우 앞에 0을 붙여준다.
	function addzero(num) {

		if(num < 10) { num = "0" + num; }
 		return num;

	}

</script>
<title></title>

</head>
<body>
		
		<sec:authorize access="isAuthenticated()">
		
        <div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4" id="navbar">
          <div class="ms-md-auto pe-md-3 d-flex align-items-center">
          </div>
          <ul class="navbar-nav  justify-content-end">
          	
          	<li class="nav-item px-3 d-flex align-items-center">
             <span class="d-sm-inline d-none" style="margin-bottom: 2px">
             	<span id="nowTimes" style="color: white; font-size: 15px; font-weight:550; margin-right: 10px; "></span>
             </span>
            </li>

            <li class="nav-item d-flex align-items-center">
             
              <a href="/logout" onclick="return confirm('로그아웃을 하시겠습니까?');"
              	class="nav-link text-white font-weight-bold px-0">
                <span class="d-sm-inline d-none">
                	<!-- 사원번호 name-회원이름  -->
                	<%-- <sec:authentication property="name"/> 
                	 <sec:authentication property="principal"/> --%>
                	 ${dto.mno } 
                	_${dto.mname}
                </span>
              </a>
            </li>
            
            <li class="nav-item px-3 d-flex align-items-center">
             <a href="personnel_info/mypage?mno=${dto.mno }" class="nav-link text-white font-weight-bold px-0">
              	<i class="fa fa-user me-sm-1"></i>
             </a>
            </li>
            
          </ul>
        </div>
		
		</sec:authorize>
		
  <!--   Core JS Files   -->
  <script src="../resources/assets/js/core/popper.min.js"></script>
  <script src="../resources/assets/js/core/bootstrap.min.js"></script>
  <script src="../resources/assets/js/plugins/perfect-scrollbar.min.js"></script>
  <script src="../resources/assets/js/plugins/smooth-scrollbar.min.js"></script>
  <script src="../resources/assets/js/plugins/chartjs.min.js"></script>
  
  <!-- chart js 파일 -->
  <script src="../resources/chart/jquery.min.js"></script>
  <script src="../resources/chart/Chart.min.js"></script>
  
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