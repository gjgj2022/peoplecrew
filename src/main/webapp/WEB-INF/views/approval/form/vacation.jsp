<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<style>
	.container{
		width: 900px;
	}
</style>
</head>
<body>
	<div class="container">
	<table class="table table-bordered align-middle">
		<tr>
			<td class="bg-secondary p-2 text-dark bg-opacity-10 w-25">제목</td>
			<td colspan="3"><input type="text" name="" id="" placeholder="연차"/></td>
		</tr>
		<tr>
			<td class="bg-secondary p-2 text-dark bg-opacity-10 w-25">내용</td>
			<td colspan="3"><textarea name="" id="" cols="30" rows="10"></textarea></td>
		</tr>
		<tr>
			<td class="bg-secondary p-2 text-dark bg-opacity-10 w-25">휴가지</td>
			<td><input type="text" name="" id="" /></td>
			<td class="bg-secondary p-2 text-dark bg-opacity-10 w-25">연락처</td>
			<td><input type="text" name="" id="" /></td>
		</tr>
		<tr>
			<td class="bg-secondary p-2 text-dark bg-opacity-10 w-25" rowspan="2">대행해야할 주요업무</td>
			<td colspan="4"><textarea name="" id="" cols="30" rows="10"></textarea></td>
		</tr>
		<tr>
			<td class="bg-secondary p-2 text-dark bg-opacity-10 w-25">직무 대행자</td>
			<td colspan="3"><input type="text" name="" id="" /></td>
		</tr>
	</table>
	</div>
</body>
</html>