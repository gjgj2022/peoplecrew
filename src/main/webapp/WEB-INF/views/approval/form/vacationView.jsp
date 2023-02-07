<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link id="pagestyle" href="../resources/assets/css/argon-dashboard.css?v=2.0.4"
	rel="stylesheet" />
<script type="text/javascript">
	function resize(obj) {
	    obj.style.height = '1px';
	    obj.style.height = (12 + obj.scrollHeight) + 'px';
	}
</script>
<style>
textarea {
    min-height: 259px;
    overflow-y: hidden;
    resize: none;
}

.bg-secondary {
  background-color: #F0F1F2 !important;
 }
 
 .border{
   border: 1px solid #dee2e6 !important;
 }
 
  .btn-success{
 	--bs-btn-bg: #198754;
 }
</style>
</head>
<body>

	<div style="width:850px;margin-left:auto;margin-right:auto;">
			<input type="hidden" name="dono" value="${ddto.dono }" />
			<input type="hidden" name="dotype" value="연차신청서" />
			<div class="" style="font-size:30px;text-align:center;"></div>
			<br />
	<table class="table table-bordered align-middle">
		<tr>
			<td class="bg-secondary p-2 text-dark bg-opacity-10 w-25 border border-1" style="text-align:center;">제목</td>
			<td class="border border-1" colspan="3"><input type="text" class="bg-white" name="dotitle" id="" style="width:500px; border:none;" value="${ddto.dotitle }" disabled/></td>
		</tr>
		<tr>
			<td class="bg-secondary p-2 text-dark bg-opacity-10 w-25 border border-1" style="text-align:center;">내용</td>
			<td class="border border-1" colspan="3"><textarea class="bg-white" name="docontents" id="" cols="30" rows="10" style="width:550px; border:none;" onkeydown="resize(this)" onkeyup="resize(this)" disabled>${ddto.docontents }</textarea></td>
		</tr>
		<tr>
			<td class="bg-secondary p-2 text-dark bg-opacity-10 w-25 border border-1" style="text-align:center;">휴가기간</td>
			<td class="border border-1"><input type="text" class="bg-white" name="docontents2" id="" style="border:none;width:500px;" value="${ddto.docontents2 }" disabled/></td>
		</tr>
		<tr>
			<td class="bg-secondary p-2 text-dark bg-opacity-10 w-25 border border-1" rowspan="2" style="text-align:center;">대행해야 할<br>주요업무</td>
			<td class="border border-1" colspan="4"><textarea class="bg-white" name="docontents3" id="" cols="30" rows="10" style="width:550px; border:none;" onkeydown="resize(this)" onkeyup="resize(this)" disabled>${ddto.docontents3 }</textarea></td>
		</tr>
	</table>
	</div>
</body>
</html>