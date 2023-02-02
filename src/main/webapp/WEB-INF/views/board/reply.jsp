<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<style>
.replytable {
	border-bottom: 2px dotted #eeeeee !important;
}
</style>
<script>
	var bono = '${boarddto.bono}'; //게시글 번호
	var usermno = '${dto.mno}';
	var userrole = '${dto.role}';
	//댓글 목록 
	function commentList() {
		$
				.ajax({
					url : '/reply/list',
					type : 'get',
					data : {
						'bono' : bono
					},
					success : function(response) {

						console.log("ajax 성공");
						console.log("댓글 : " + response);
						console.dir(response);
						var a = '';

						$
								.each(
										response,
										function(key, value) {
											a += '<div class="commentArea align-items-center mb-0" margin-bottom: 15px;">';
											a += '<table class="replytable"><colgroup><col width="5%" /><col width="15%"/><col width="60%"/><col width="10%"/></colgroup>';
											a += '<tr><td><div class="d-flex px-2 py-1"><img width="100%" src="https://kr.seaicons.com/wp-content/uploads/2015/06/person-icon.png">';
											a += '</td><td> <div class="d-flex flex-column">';
											a += '<span class="commentInfo'+value.reno+'"><h6 class="mb-0 text-sm">'
													+ value.mname
													+ '</h6></span>';
											a += '<span class="commentRedate'+value.redate+'"><p class="text-xs text-secondary mb-0">'
													+ value.redate
													+ '</p></span>';
											a += '</div></div> </td><td class="">';
											a += '<span class="commentContent'+value.reno+'"><span class="text-dark text-sm">'
													+ value.recontents
													+ '</span></span>';
											a += '<span class="updateReplyOk'+value.reno+'"></span></td><td class="align-middle'+value.reno+'">';

											if (usermno == value.mno) {
												a += '<a href="javascript:;" class="text-secondary font-weight-bold text-xs updatebtns'
														+ value.reno
														+ '" onclick="replyUpdate('
														+ value.reno
														+ ',\''
														+ value.recontents
														+ '\');">';
												a += '수정 | </a>';
											}
											if (userrole == "ROLE_ADMIN" || usermno == value.mno) {
												a += '<a class="text-secondary font-weight-bold text-xs updatebtns'
														+ value.reno
														+ '" onclick="replyDelete('
														+ value.reno + ');">';
												a += '삭제</a>';
											}

											a += '</td></tr> </table>';
											a += '</div>';

										});
						$(".commentList").empty();
						$(".commentList").append(a);
					},
					error : function() {
						console.log("ajax 실패")
					}
				});
	}

	$(document).ready(function() {
		commentList(); //페이지 로딩시 댓글 목록 출력 
		console.log("게시물번호 : " + bono);
	});

	//댓글 등록
	function writeReply(x) {

		//console.dir(x); 
		var recontents = x.form[2].value;
		//console.log(recontents);

		if (recontents == '') {
			alert("내용을 입력하세요.");
			x.form[1].focus();
			return;
		}
		;

		var params = $("#replyform").serialize();
		//serialize() : commentInsertForm의 내용들(시간,작성자 등)을 가져옴
		console.log(params);
		$.ajax({
			url : "/reply/insert",
			type : "POST",
			data : params,
			success : function(data) {
				//alert("댓글이 등록되었습니다.");
				commentList(); //댓글 작성 후 댓글 목록 reload
				$('#recontents').val('');
			},
			error : function(data) {
				alert("댓글 등록 실패");
			}
		});
	};

	//댓글 삭제 
	function replyDelete(reno) {
		if (confirm("댓글을 삭제하시겠습니까?") == true) {
			$.ajax({
				url : '/reply/delete/' + reno,
				type : 'post',
				success : function(data) {
					console.log(data + "상태");
					console.log(reno + "번 댓글삭제")
					commentList(); //댓글 삭제후 목록 출력 
				}
			})
		} else { //취소
			return;
		}
	}

	//댓글 수정버튼 누르면 - 댓글 내용 출력을 input 폼으로 변경 
	function replyUpdate(reno, recontents) {
		var a = '';
		var b = '';
		$('.updatebtns' + reno).hide(); //수정, 삭제버튼 숨기기 
		$('.commentContent' + reno).hide(); //내용 숨기기 

		a += '<div class="input-group">';
		a += '<input type="text" class="form-control toggleinput" name="recontents_'+reno+'" value="'+recontents+'"/></div>';

		b += '<span class="input-group-btn">';
		b += '<a href="javascript:;" class="text-secondary font-weight-bold text-xs" onclick="replyUpdateOk('
				+ reno
				+ ');">확인 | </a><a href="javascript:;" class="text-secondary font-weight-bold text-xs" onclick="reset('
				+ reno + ')">취소</a> </span>';

		$('.updateReplyOk' + reno).append(a);
		$('.align-middle' + reno).append(b);

	}
	function reset(reno) { //수정 취소할 시 
		$('.commentContent' + reno).show(); //내용보이기 
		$('.updatebtns' + reno).show(); //수정,삭제버튼 보이기 
		$('.toggleinput').hide(); //수정칸 숨기기
		$('.input-group-btn').hide(); //수정. 취소버튼 숨기기
	}

	//댓글 수정
	function replyUpdateOk(reno) {
		var updateRecontents = $('[name=recontents_' + reno + ']').val();
		console.log(updateRecontents);
		$.ajax({
			url : '/reply/modifyOk',
			type : 'post',
			data : {
				'recontents' : updateRecontents,
				'reno' : reno
			},
			success : function(data) {
				commentList();
			}
		});
	}
</script>


<div class="container">
	<div>
		<h5>댓글</h5>
		<label for="content">${total}개의 comment</label>
		<form name="commentInsertForm" id="replyform" method="post">
			<input type="hidden" name="bono" value="${boarddto.bono}" /> <input type="hidden" name="mno" value="${dto.mno }" />
			<c:if test="${dto!=null}">
				<div class="input-group mb-3">
					<input type="text" name="recontents" id="recontents" class="form-control" width="70%" placeholder="댓글을 남겨보세요.">
					<button class="btn bg-gradient-primary mb-0" type="button" id="insertBtn" onclick="writeReply(this);">등록</button>
				</div>
			</c:if>
		</form>
	</div>
</div>
<div class="container">
	<div class="commentList"></div>
</div>




