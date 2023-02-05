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
#ta1 {
    min-height: 259px;
    overflow-y: hidden;
    resize: none;
}
#ta2 {
    min-height: 100px;
    overflow-y: hidden;
    resize: none;
}
#ta3 {
    min-height: 100px;
    overflow-y: hidden;
    resize: none;
}
</style>
</head>
<body>

	<div style="width:850px;margin-left:auto;margin-right:auto;">
			<input type="hidden" name="dono" value="${ddto.dono }" />
			<input type="hidden" name="dotype" value="업무보고서" />
			
			<br />
	<table class="table table-bordered align-middle">
		<tr>
			<td class="bg-secondary p-2 text-dark bg-opacity-10 w-25 border border-1" style="text-align:center;">제목</td>
			<td class="border border-1" colspan="3"><input type="text" class="bg-white" name="dotitle" id="" style="width:100%; border:none;" value="${ddto.dotitle }" disabled/></td>
		</tr>
		<tr>
			<td class="bg-secondary p-2 text-dark bg-opacity-10 w-25 border border-1" style="text-align:center;">업무내용</td>
			<td class="border border-1" colspan="3"><textarea class="bg-white" name="docontents" id="ta1" cols="30" rows="10" style="width:100%; border:none;" onkeydown="resize(this)" onkeyup="resize(this)" disabled>${ddto.docontents }</textarea></td>
		</tr>
		<tr>
			<td class="bg-secondary p-2 text-dark bg-opacity-10 w-25 border border-1" style="text-align:center;">건의사항</td>
			<td class="border border-1" colspan="3"><textarea class="bg-white" name="docontents2" id="ta2" cols="30" rows="6" style="width:100%; border:none;" onkeydown="resize(this)" onkeyup="resize(this)" disabled>${ddto.docontents2 }</textarea></td>
		</tr>
		<tr>
			<td class="bg-secondary p-2 text-dark bg-opacity-10 w-25 border border-1" rowspan="2" style="text-align:center;">특이사항</td>
			<td class="border border-1" colspan="4"><textarea class="bg-white" name="docontents3" id="ta3" cols="30" rows="6" style="width:100%; border:none;" onkeydown="resize(this)" onkeyup="resize(this)" disabled>${ddto.docontents3 }</textarea></td>
		</tr>
	</table>
	</div>
</body>
</html>