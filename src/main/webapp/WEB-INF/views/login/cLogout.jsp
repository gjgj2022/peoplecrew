<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>커스텀 로그아웃페이지 : cLogout.jsp</h1>


<form action="/logout" method="post">
	<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
	<input type="submit" value="로그아웃" />
</form>

</body>
</html>