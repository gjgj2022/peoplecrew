<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
		
		<sec:authorize access="isAuthenticated()">
		
        <div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4" id="navbar">
          <div class="ms-md-auto pe-md-3 d-flex align-items-center">
          </div>
          <ul class="navbar-nav  justify-content-end">
          
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
		
</body>
</html>