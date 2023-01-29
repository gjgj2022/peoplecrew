<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>커스텀 로그인페이지</h2>

	<h2><c:out value="${error }" /></h2>
	<h2><c:out value="${logout }" /></h2>

	<form action="<c:url value="/login"/>" method="post">
		<table>
			<tr>
				<th>ID</th>
				<td><input type="text" name="username" id="" value="12345" /></td>
			</tr>
			<tr>
				<th>PASSWORD</th>
				<td><input type="password" name="password" id="" value="lalala" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="로그인" /></td>
			</tr>
		</table>
	</form>
</body>
</html>