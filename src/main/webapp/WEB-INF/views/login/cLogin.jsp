<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</head>
<body>
	<h2>커스텀 로그인 페이지 </h2>
	<!-- 
		CSRF :CROSS Site Request Forgery) 
		웹 애플리케이션 취약점 : 인터넷 사용자가 자신의 의지와는 무관하게 
		공격자가 의도한 행위(수정, 삭제 , 등록)를 특정 웹사이트에 요청하게 만드는 공격 
		
	 -->
	 
	 <h2>
	 	<c:out value="${error }" />
	 </h2>
	 
	 <h2>
	 	<c:out value="${logout }" />
	 </h2>
	 
	<form action="<c:url value="/login" />" method="post">
	
	<table>
		<tr>
			<th>ID</th>
			<td><input type="text" name="username" value="user" id="" /></td>
		</tr>
		
		<tr>
			<th>PASSWORD</th>
			<td><input type="password" name="password" value="123" id="" />
			
			<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token}" />
			
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="로그인" />
			</td>
		</tr>
		<tr>
		<td colspan="2"> <a class="btn btn-outline-primary" href="oauth2/authorization/google">구글</a>
		</td>
		</tr>
		
	</table>
	
	</form>
	
	
	
</body>
</html>