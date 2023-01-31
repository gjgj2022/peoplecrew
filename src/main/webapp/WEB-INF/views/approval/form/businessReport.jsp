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

	<div style="width:750px;margin-left:auto;margin-right:auto;">
			<input type="hidden" name="dotype" value="업무보고서" />
			<div class="" style="font-size:30px;text-align:center;padding-top:150px;"></div>
			<br />
	<table class="table table-bordered align-middle">
		<tr>
			<td class="bg-secondary p-2 text-dark bg-opacity-10 w-25" style="text-align:center;">제목</td>
			<td colspan="3"><input type="text" name="dotitle" id="" style="width:500px; border:none;"/></td>
		</tr>
		<tr>
			<td class="bg-secondary p-2 text-dark bg-opacity-10 w-25" style="text-align:center;">업무내용</td>
			<td colspan="3"><textarea name="docontents" id="ta1" cols="30" rows="10" style="width:550px; border:none;" onkeydown="resize(this)" onkeyup="resize(this)"></textarea></td>
		</tr>
		<tr>
			<td class="bg-secondary p-2 text-dark bg-opacity-10 w-25" style="text-align:center;">건의사항</td>
			<td colspan="3"><textarea name="docontents2" id="ta2" cols="30" rows="6" style="width:550px; border:none;" onkeydown="resize(this)" onkeyup="resize(this)"></textarea></td>
		</tr>
		<tr>
			<td class="bg-secondary p-2 text-dark bg-opacity-10 w-25 border" rowspan="2" style="text-align:center;">특이사항</td>
			<td class="border" colspan="4"><textarea name="docontents3" id="ta3" cols="30" rows="6" style="width:550px; border:none;" onkeydown="resize(this)" onkeyup="resize(this)"></textarea></td>
		</tr>
	</table>
	</div>
</body>
</html>