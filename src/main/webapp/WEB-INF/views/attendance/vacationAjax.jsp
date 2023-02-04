<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- calender library -->
<script type="text/javascript" src='https://cdn.jsdelivr.net/npm/fullcalendar@6.0.3/index.global.min.js'></script>

<!-- 주말 색 바꾸기 CSS 수정 -->
<style>
.fc-day-sun a {
	color: red;
	text-decoration: none;
}

/* 토요일 날짜 파란색 */
.fc-day-sat a {
	color: blue;
	text-decoration: none;
}

.fc-toolbar-title {
	display: inline-block;
	margin: 20px !important;
}

.onosearch {
	display: inline-block !important;
}
</style>

<script>
		
		var calendarEl="";//처음값
		var calendar="";
		var chk_arr = [];
        const mapfn = (arg) => Number(arg);
        const arr = Array.from(chk_arr, mapfn);
        var mno = '${dto.mno}';
        
		document.addEventListener('DOMContentLoaded', function() {
			var chk_arr = [0,1,10,20,30,40,50];
	        const mapfn = (arg) => Number(arg);
	        const arr = Array.from(chk_arr, mapfn);
	        const ono = 1; 
			calendarShow(arr,ono);
		});
		
		 function changes2Step(value) {
			 const ono = Number(value);
			  console.log(ono);
				calendar.destroy(); //기존내용 지우기 
				chk_arr = [3];
				const mapfn = (arg) => Number(arg);
		        const arr = Array.from(chk_arr, mapfn);
				calendarShow(arr,ono);
				chk_arr=[3];
		 }  
		
		function calendarShow(arr,ono){
			
			var mno = '${dto.mno}';
			calendarEl = document.getElementById('calendar');
			calendar = new FullCalendar.Calendar(calendarEl, {
				headerToolbar : {
					left : '',
					center : 'prev,title,next',
					right : 'dayGridMonth,timeGridDay,listWeek'
				},
				initialView : 'dayGridMonth',
				//locale: 'ko',
				selectable : true,
				dateClick : function(arg) {
					//날짜 클릭시
				},
				editable: true,
				eventChange: function(arg){ // 끌어다놓으면 날짜 수정 
						console.log(arg);
			            calendar.addEvent({
			            id: arg.event.id,
			              title: arg.event.title,
			              start: arg.event.start,
			              end: arg.event.end
			            })
				},
				dayMaxEventRows : true, //칸 넘어가면 more 로 나옴
				events : function(info, successCallback, failureCallback){
		            $.ajax({
		        		url : '/calendar/searchbyuno',
		        		type : 'post',
		        		dataType : 'json',
		        		traditional: true,
		        		data : {arr : arr, mno: mno, ono: ono},
		                   success: function(result) {
		                           var events = [];
		                           successCallback(events);                               
		                       }//success: function end                          
		            }); //ajax end
		        }, //events:function end
			});
			calendar.render();
		}
		

		</script>