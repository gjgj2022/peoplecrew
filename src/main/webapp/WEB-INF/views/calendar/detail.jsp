<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="../assets/img/favicon.png">
<!--     Fonts and icons     -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
<!-- Nucleo Icons -->
<link href="../assets/css/nucleo-icons.css" rel="stylesheet" />
<link href="../assets/css/nucleo-svg.css" rel="stylesheet" />
<!-- Font Awesome Icons -->
<script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
<link href="../assets/css/nucleo-svg.css" rel="stylesheet" />
<!-- CSS Files -->
<link id="pagestyle" href="../assets/css/argon-dashboard.css?v=2.0.4" rel="stylesheet" />

<style>
.detailbody {
	margin: 30px;
}

.outline {
	width: 450px;
	height: 540px;
	margin: 10px auto;
	padding: 10px;
	border: solid 1px grey;
	border-radius: 20px;
	overflow: auto;
	box-shadow: 1px 1px 10px grey;
}

.detailfooter {
	margin-top: 60px;
}
</style>
<div class="container outline">
	<div class="detailbody">

		<div class="card-header text-center pt-4 pb-3">
			<c:if test="${not empty calDTO.uname }">
				<span class="badge rounded-pill bg-light text-dark">${calDTO.uname}</span>
				<span class="badge rounded-pill bg-light text-dark">${calDTO.oname}</span>
			</c:if>
			<h1 class="font-weight-bold mt-2">
				<small>${calDTO.caltitle }</small>
			</h1>
		</div>


		<div class="container">
			<div class="card-body text-lg-left pt-0">
				<c:if test="${calDTO.uno ne 1 }">
					<div class="d-flex justify-content-lg-start  p-2">
						<div class="icon icon-shape icon-xs rounded-circle bg-gradient-success shadow text-center">
							<i class="fas fa-check opacity-10" aria-hidden="true"></i>
						</div>

						<div>
							<span class="ps-3">담당자 : ${calDTO.mname }</span>
						</div>

					</div>
				</c:if>
				<div class="d-flex justify-content-lg-start p-2">
					<div class="icon icon-shape icon-xs rounded-circle bg-gradient-success shadow text-center">
						<i class="fas fa-check opacity-10" aria-hidden="true"></i>
					</div>
					<div>
						<span class="ps-3">장소 : ${calDTO.calloc}</span>
					</div>
				</div>

				<div class="d-flex justify-content-lg-start p-2">
					<div class="icon icon-shape icon-xs rounded-circle bg-gradient-success shadow text-center">
						<i class="fas fa-check opacity-10" aria-hidden="true"></i>
					</div>
					<div>
						<span class="ps-3">시작 : ${calDTO.calstart }</span>
					</div>
				</div>

				<div class="d-flex justify-content-lg-start p-2">
					<div class="icon icon-shape icon-xs rounded-circle bg-gradient-success shadow text-center">
						<i class="fas fa-check opacity-10" aria-hidden="true"></i>
					</div>
					<div>
						<span class="ps-3">종료 : ${calDTO.calend }</span>
					</div>
				</div>

				<div class="d-flex justify-content-lg-start p-2">
					<div class="icon icon-shape icon-xs rounded-circle bg-gradient-success shadow text-center">
						<i class="fas fa-check opacity-10" aria-hidden="true"></i>
					</div>
					<div>
						<span class="ps-3">내용 : ${calDTO.calcontents }</span>
					</div>
				</div>


			</div>
		</div>

		<div class="modal-footer justify-content-center detailfooter">
			<button class="btn" onclick="window.close()">확인</button>
			<c:if test="${(calDTO.uno eq dto.uno && dto.mrank ne '사원') ||dto.mno eq calDTO.mno|| dto.role eq 'ROLE_ADMIN'}">
				<a href="/calendar/modify?calno=${calDTO.calno}"><input type="button" class="btn" value="수정" /></a>
				<input type="button" class="btn" value="삭제" onclick="deleteCal()" />
			</c:if>
			<c:if test="${not empty calDTO.updatemname }">
				<span class="ps-3">마지막 수정 : ${calDTO.updatemname }, ${calDTO.updatedate }</span>
			</c:if>
		</div>
	</div>
</div>

<!-- ajax -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

<script>
	//삭제 
	
	var calno = '${calDTO.calno}';
	function deleteCal() {
		if (confirm("일정을 삭제하시겠습니까?") == true){  
		$.ajax({
			url : '/calendar/delete',
			type : 'post',
			data : {
				'calno' : calno
			},
			success : function() {
				console.log(calno + "번 일정 삭제");
				opener.parent.location.reload(); //페이지 리로드
				window.close(); //일정 삭제후 창닫기
			},
			error : function() {
				alert("일정 삭제 실패");
			},
		});
		}else{   //취소
		      return;
		  }
	}
</script>