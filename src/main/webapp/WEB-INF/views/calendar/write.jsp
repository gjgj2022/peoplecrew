<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<!-- ajax -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<!-- Jquery CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>

<!-- CSS 수정  -->

<style>
.form-select {
	width: 6rem;
}

#calloc {
	width: 14rem;
}

.calstartend {
	width: 12rem;
}

.container {
	margin-top: 20px;
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
.onoselect{
width: 8rem;
}
</style>

<div class="container outline">
	<div class="detailbody">
	<form action="/calendar/write" method="post" id="calform" name="calform">
		<div class="form-group">
			<label for="example-text-input" class="form-control-label">분류</label>

			
				<c:choose>
					<c:when test="${dto.mrank ne '사원'}">
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="ucalno" id="ucalno" checked onclick='radiocheck(this)' value=0> <label class="form-check-label" for="flexRadioDefault1"> 회사일정 </label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="ucalno" id="ucalno2" onclick='radiocheck(this)' value=2> <label class="form-check-label" for="flexRadioDefault2"> 개인일정 </label>
							</div>
					</c:when>
					<c:otherwise>
					
					<input type="hidden" class="hidden" name="ono" value=0>
					<input type="hidden" class="hidden" name="uno" value=1>
					
					<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="ucalno" id="ucalno" disabled onclick='radiocheck(this)' value=0> <label class="form-check-label" for="flexRadioDefault1"> 회사일정 </label>
							</div>
					<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="ucalno" id="ucalno2" checked onclick='radiocheck(this)' value=2> <label class="form-check-label" for="flexRadioDefault2"> 개인일정 </label>
							</div>
					</c:otherwise>
					</c:choose>
						
		</div>

		<div class="form-group">
			<label for="example-text-input" class="form-control-label">제목</label> <input class="form-control" type="text" name="caltitle" id="example-text-input" placeholder="제목을 입력해주세요.">
		</div>

		<div class="row">
			<div class="col-auto">
				<div class="form-group">
					<label for="form-control-label">부서</label> 
					<c:choose>
					<c:when test="${dto.mrank ne '사원'}">
					<select class="form-select" name="uno" id="uno" aria-label="Default select example" onchange='changes1Step(this.value)'>
						<option value="0">전체</option>
						<option value="10">관리</option>
						<option value="20">기술</option>
						<option value="30">생산</option>
						<option value="40">영업</option>
						<option value="50">개발</option>
					</select>
					</c:when>
					<c:otherwise>
					<select class="form-select" name="uno" id="uno" aria-label="Default select example" disabled onchange='changes1Step(this.value)'>
						<option value="0">전체</option>
						<option value="10">관리</option>
						<option value="20">기술</option>
						<option value="30">생산</option>
						<option value="40">영업</option>
						<option value="50">개발</option>
					</select>
					</c:otherwise>
					</c:choose>
					<select class="form-select onoselect" name="ono" id="ono" onchange='changes2Step(this.value)'>
						<option value="0">하위부서</option>
					</select>
				</div>
			</div>


			<div class="col-auto">
				<div class="form-group">
					<label for="example-text-input" class="form-control-label">장소</label> <input class="form-control" name="calloc" type="text" id="calloc" placeholder="장소를 입력해주세요.">
				</div>
			</div>
		</div>


		<div class="row">
			<div class="col-auto">
				<div class="form-group">
					<label for="example-datetime-local-input" class="form-control-label">시작일</label> <input class="form-control calstartend" type="datetime-local" name="calstart" id="calstart">
				</div>
			</div>
			<div class="col-auto">
				<div class="form-group">
					<label for="example-datetime-local-input" class="form-control-label">종료일</label> <input class="form-control calstartend" type="datetime-local" name="calend" id="calend">
				</div>
			</div>
		</div>


		<div class="form-group">
			<label for="exampleFormControlTextarea1">내용</label>
			<textarea class="form-control" name="calcontents" id="exampleFormControlTextarea1" rows="3" placeholder="내용을 입력해주세요."></textarea>
		</div>

		<input type="hidden" id="updatemno" name="updatemno" value=${dto.mno}>


		<div class="modal-footer justify-content-center ">
			<button type="button" class="btn" onclick="window.close()">취소</button>
			<button type="button" class="btn" onclick="checkForm(this)">저장</button>
		</div>
	</form>
</div>
</div>
<script>
$(function(){
	$("#ono").hide();
	$("#uno").val(1);
	$("#ono").val(0);
})
	function radiocheck(checked) {
		if (checked.checked == true) {
			if (checked.value == 2) {
				$("#uno").attr('disabled', true);
				$("#ono").hide();
				$("#uno").val(1);
				var a = '<input type="hidden" class="hidden" name="uno" value=1>';
				a += '<input type="hidden" class="hidden" name="ono" value=0>';
				$('#updatemno').append(a);
			} else {
				$("#uno").attr('disabled', false);
				$("#uno").val(0);
				$('input.hidden').remove();
			}
		}
	}
	
	 function changes1Step(value){
		 $("#ono").show();
		 if(value=="0") {
			 $("#ono").hide();
				var a = '<input type="hidden" class="hidden" name="ono" value=0>';
				$('#updatemno').append(a);
			  } else if(value=="10") {
		   num = new Array("하위부서","총무부","경리부");
		   vnum = new Array("0","1001","1002");
		  }
		  else if(value=="20") {
		   num = new Array("하위부서","품질관리부");
		   vnum = new Array("0","2001");
		  }
		  else if(value=="30") {
			   num = new Array("하위부서","생산1팀","생산2팀","상품관리부","기술생산1팀","기술생산2팀");
			   vnum = new Array("0","3011","3012","3021","3031","3032");
			  }
		  else if(value=="40") {
			   num = new Array("하위부서","해외영업부","국내영업부","고객관리부");
			   vnum = new Array("0","4001","4002","4003");
			  }
		  else if(value=="50") {
			   num = new Array("하위부서","개발1팀","개발2팀","유지보수팀","부설연구소");
			   vnum = new Array("0","5011","5012","5021","5031");
			  }
		  
		  for(i=0; i<calform.ono.length; i++) {
			  calform.ono.options[i] = null;
		  }
		  
		  for(i=0; i<num.length; i++) {
			  calform.ono.options[i] = new Option(num[i],vnum[i]);
	       
		  }
	 }  
	 function changes2Step(value) {
		 const ono = Number(value);
		  console.log(ono);
	 }  

	//일정 추가
	function checkForm(x) {

		if ($('[name=caltitle]').val() == "") {
			alert("제목을 입력해주세요.");
			return;
		} else if (!$("#calstart").val()) {
			alert("날짜를 입력해주세요.");
			return;
		} else if (!$("#calend").val()) {
			var calend = document.getElementById("calstart").value;
			document.getElementById("calend").value = calend;
		} else if ($("#calstart").val() > $("#calend").val()) {
			alert("시작일과 종료일을 확인해주세요.");
			return;
		} 

		var params = $("#calform").serialize();
		console.log(params);
		console.dir(params);
		$.ajax({
			url : "/calendar/write",
			type : "POST",
			data : params,
			success : function(data) {
				//alert("일정이 등록되었습니다.");
				opener.parent.location.reload();
				window.close();
			},
			error : function(data) {
				alert("에러 발생");
			}
	});
	}
</script>

