<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Jquery CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>

	<!-- CSS 수정  -->

			<style>
			.form-select{
				width: 6rem;
			}
			#calloc{
			width: 18rem;
			}
			.calstartend{
			width: 12rem;
			}
			</style>
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-body">
      	
<div class="container">
	<form action="/calendar/write" method="post" id="calform" name="calform">
		
		<div class="form-group">
				<label for="example-text-input" class="form-control-label">제목</label> 
				<input class="form-control" type="text" name="caltitle" id="example-text-input" placeholder="제목을 입력해주세요.">
		</div>
		
	<div class="row">
	<div class="col-auto" >
		<div class="form-group">
			<label for="form-control-label">부서</label> 
			<select class="form-select" name="uno" aria-label="Default select example">
			  <option value="0">전체</option>
			  
			  <option value="10">관리</option>
			  <option value="20">기술</option>
			  <option value="30">생산</option>
			  <option value="40">영업</option>
			  <option value="50">개발</option>
			  <option value="1">개인</option>
			</select>
			</div></div>

		
		<div class="col-auto" >
		<div class="form-group">
			<label for="example-text-input" class="form-control-label">장소</label> 
			<input class="form-control" name="calloc" type="text" id="calloc" placeholder="장소를 입력해주세요.">
		</div>
		</div>
	</div>
		

		<div class="row">
		<div class="col-auto" >
		<div class="form-group">
			<label for="example-datetime-local-input" class="form-control-label">시작일</label> 
			<input class="form-control calstartend" type="datetime-local" name="calstart" id="calstart">
		</div></div>
		<div class="col-auto" >
		<div class="form-group">
			<label for="example-datetime-local-input" class="form-control-label">종료일</label> 
			<input class="form-control calstartend" type="datetime-local" name="calend" id="calend">
		</div></div>
		</div>
	

		<div class="form-group">
			<label for="exampleFormControlTextarea1">내용</label>
			<textarea class="form-control" name="calcontents" id="exampleFormControlTextarea1" rows="3" placeholder="내용을 입력해주세요."></textarea>
		</div>
		
		<input type="hidden" name="mno" value=${user.mno}>  
		
	
      <div class="modal-footer">
        <button type="button" class="btn bg-gradient-secondary" data-bs-dismiss="modal">취소</button>
        <button type="button" class="btn bg-gradient-primary" onclick="checkForm(this)">저장</button>
      </div>
	</form>
	</div>
	</div></div></div></div>
	<script>
//일정 추가
function checkForm(x){

	if ($('[name=caltitle]').val() == "") {
		alert("제목을 입력해주세요.");
		return;
	}
	else if (!$("#calstart").val()) {
		alert("날짜를 입력해주세요.");
		return;
	}else if(!$("#calend").val()){
		var calend = document.getElementById("calstart").value;
		document.getElementById("calend").value=calend;
	}
	else if ($("#calstart").val() > $("#calend").val()) {
		alert("시작일과 종료일을 확인해주세요.");
		return;
	}
	
	
    var params= $("#calform").serialize();
    console.log(params);
    console.dir(params);
    $.ajax({
		url : "/calendar/write",
		type : "POST",
		 data: params, 
		success : function(data) {
			alert("일정이 등록되었습니다.");
			location.reload();
		},
		error : function(data) {
			alert("에러 발생");
		}
	});	
};

	</script>
	
