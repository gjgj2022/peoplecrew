<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link id="pagestyle" href="./resources/assets/css/argon-dashboardApv.css?v=2.0.4"
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
</style>
</head>
<body>
<!-- CSS only -->

	<div style="width:850px;margin-left:auto;margin-right:auto;">
			<input type="hidden" name="dotype" value="연차신청서" />
			<div class="" style="font-size:30px;text-align:center;padding-top:100px;"></div>
			<br />
	<table class="table table-bordered align-middle">
		<tr>
			<td class="bg-secondary p-2 text-dark bg-opacity-10 w-25 border border-1" style="text-align:center;">제목</td>
			<td class="border border-1" colspan="3"><input type="text" name="dotitle" id="" style="width:100%; border:none;" value="${ddto.dotitle }"/></td>
		</tr>
		<tr>
			<td class="bg-secondary p-2 text-dark bg-opacity-10 w-25 border border-1" style="text-align:center;">내용</td>
			<td class="border border-1" colspan="3"><textarea name="docontents" id="" cols="30" rows="10" style="width:100%; border:none;" onkeydown="resize(this)" onkeyup="resize(this)">${ddto.docontents }</textarea></td>
		</tr>
		<tr>
			<td class="bg-secondary p-2 text-dark bg-opacity-10 w-25 border border-1" style="text-align:center;">휴가기간</td>
			<td class="border border-1"><input type="text" name="docontents2" id="" style="border:none;width:100%;" value="${ddto.docontents2 }"/></td>
		</tr>
		<tr>
			<td class="bg-secondary p-2 text-dark bg-opacity-10 w-25 border border-1" rowspan="2" style="text-align:center;">대행해야 할<br>주요업무</td>
			<td class="border border-1" colspan="4"><textarea name="docontents3" id="" cols="30" rows="10" style="width:100%; border:none;" onkeydown="resize(this)" onkeyup="resize(this)">${ddto.docontents3 }</textarea></td>
		</tr>
	</table>
	</div>
</body>
</html>