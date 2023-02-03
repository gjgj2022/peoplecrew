<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
</head>
<body>

	<div class="card align-middle">
    
    <div class="modal-header">
        <h2 class="modal-title fs-5">임시비밀번호 발급결과</h2>
		<a href="/"><button type="button" class="btn-close" data-bs-dismiss="modal" ></button></a>
    </div>
    &nbsp;
    <div class="card-body">
    	<c:choose>
    		<c:when test="${empty dto }">
		    	<h5 class="form-signin-heading text-center">ID 또는 이메일의 조회결과가 없습니다.</h5>
    		</c:when>
    		<c:otherwise>
		     	<h5 class="form-signin-heading text-center">임시비밀번호가 발급되었습니다.</h5>
		     	<h5 class="form-signin-heading text-center">등록 하신 이메일을 확인해주세요</h5>
    		</c:otherwise>
    	</c:choose>
    	&nbsp;
       <a href="/"><button class="btn btn-lg btn-primary btn-block" type="button">로그인 가기</button></a>
    </div>
	</div>
	

</body>
</html>