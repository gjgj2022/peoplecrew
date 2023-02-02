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
		
		
		 function changes1Step(value) {
			 $("#checkAll").prop("checked", false);
			 $(".form-check-input").prop("checked",false);
			 
			 if(value=="") {
				   num = new Array("하위부서");
				   vnum = new Array("");
				  }
			 else if(value=="10") {
			   num = new Array("하위부서","총무부","경리부");
			   vnum = new Array("","1001","1002");
			  }
			  else if(value=="20") {
			   num = new Array("하위부서","품질관리부");
			   vnum = new Array("","2001");
			  }
			  else if(value=="30") {
				   num = new Array("하위부서","생산1팀","생산2팀","상품관리부","기술생산1팀","기술생산2팀");
				   vnum = new Array("","3011","3012","3021","3031","3032");
				  }
			  else if(value=="40") {
				   num = new Array("하위부서","해외영업부","국내영업부","고객관리부");
				   vnum = new Array("","4001","4002","4003");
				  }
			  else if(value=="50") {
				   num = new Array("하위부서","개발1팀","개발2팀","유지보수팀","부설연구소");
				   vnum = new Array("","5011","5012","5021","5031");
				  }
			  
			  for(i=0; i<form.Step2.length; i++) {
			   form.Step2.options[i] = null;
			  }
			  
			  
			  for(i=0; i<num.length; i++) {
			   form.Step2.options[i] = new Option(num[i],vnum[i]);
		       
			  }
			  
		 }  
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
			  
		
		function checkBox(checked){ //체크박스 선택시 변화 
			
		if( checked.checked==true ){  //체크 선택 
			if(checked.value!=2){ 
			$("#checkAll").prop("checked", false);
	        //console.log(checked.value);
	        chk_arr.push(checked.value);
			}else{  //모두선택 
				chk_arr=[0,1,10,20,30,40,50];
				$(".form-check-input").prop("checked",true);
			}
		}else if(checked.checked==false){  //체크해제 
			if(checked.value!=2){
				$("#checkAll").prop("checked", false);
			for(let i = 0; i < chk_arr.length; i++) {
				  if(chk_arr[i] == checked.value)  {
					  chk_arr.splice(i, 1);
				    i--;
				  }
				}}else{  //모두선택 해제 
					$(".form-check-input").prop("checked",false);
					chk_arr =[3];
				}
			}
		
	        //console.dir(chk_arr); //선택한 체크박스값들 
	        var mapfn = (arg) => Number(arg);
	        var arr = Array.from(chk_arr, mapfn);
			calendar.destroy(); //기존내용 지우기 
			const ono = -1;
			calendarShow(arr,ono);
		} //부서별 조회 함수 end 
		
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
				eventClick : function(arg) {
					var popupWidth = 500;
					var popupHeight = 550;
					var popupX = Math.ceil(( window.screen.width - popupWidth )/2);
					var popupY = Math.ceil(( window.screen.height - popupHeight )/2); 
					window.open("/calendar/detail?calno="+arg.event.id, "popOpen", 'status=no, height=' + popupHeight  + ', width=' + popupWidth  + ', left='+ popupX + ', top='+ popupY);
				},
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
		                           if(result!=null){
		                        	   
	                                   $.each(result, function(index, element) {
	                                	   if(new Date(element.calend)>=new Date()){
	                                    if (element.uno == "10"){  //관리 
	                                        events.push({
	                                               title: element.caltitle,
	                                               start: element.calstart,
	                                               end: element.calend,
	                                               id: element.calno,
	                                               groupId : element.uno,
	                                               color:"#039BE5",
	                                               classNames : "dateClick"+element.calno,
	                                            }); //.push()
	                                    }else if (element.uno == "20"){ //기술
	                                        events.push({
	                                        	title: element.caltitle,
	                                        	start: element.calstart,
	                                               end: element.calend,
	                                               id: element.calno,
	                                               groupId : element.uno,
	                                               color:"#AF6AB0",
	                                               classNames : "dateClick"+element.calno,
	                                            }); //.push()
	                                    }else if (element.uno == "30"){ //생산
	                                        events.push({
	                                        	title: element.caltitle,
	                                        	start: element.calstart,
	                                               end: element.calend,  
	                                               id: element.calno,
	                                               groupId : element.uno,
	                                                  color:"#F691B3",
	                                                  classNames : "dateClick"+element.calno,
	                                            }); //.push()
	                                    }else if (element.uno == "40"){ //영업 
	                                        events.push({
	                                        	title: element.caltitle,
	                                        	start: element.calstart,
	                                               end: element.calend,
	                                               id: element.calno,
	                                               groupId : element.uno,
	                                                  color:"#33B679",
	                                                  classNames : "dateClick"+element.calno,
	                                            }); //.push()
	                                    } else if (element.uno == "50"){  //개발 
	                                        events.push({
	                                        	title: element.caltitle,
	                                        	start: element.calstart,
	                                               end: element.calend,
	                                               id: element.calno,
	                                               groupId : element.uno,
	                                                  color:"#6937a1",
	                                                  classNames : "dateClick"+element.calno,
	                                            }); //.push()
	                                    }else if(element.uno =="0"){  //전체 
	                                        events.push({
	                                        	title: element.caltitle,
	                                        	start: element.calstart,
	                                               end: element.calend,
	                                               id: element.calno,
	                                               groupId : element.uno,
	                                                  color:"#2142B2",
	                                                  classNames : "dateClick"+element.calno,
	                                            }); //.push()
	                                    }else if (element.uno=="1"){  //개인
	                                        events.push({
	                                        	title: element.caltitle,
	                                        	start: element.calstart,
	                                               end: element.calend,
	                                               id: element.calno,
	                                               groupId : element.uno,
	                                                  color:"#D86C77",
	                                                  classNames : "dateClick"+element.calno,
	                                            }); //.push()
	                                		   }}else{  //지난 일정
	                                    	events.push({
	                                        	title: element.caltitle,
	                                        	start: element.calstart,
	                                               end: element.calend,
	                                               id: element.calno,
	                                               groupId : element.uno,
	                                                  color:"#BFBFBF",
	                                                  classNames : "dateClick"+element.calno,
	                                            });
	                                    }
	                               }); //.each()
	                           }//if end                 
		                           successCallback(events);                               
		                       }//success: function end                          
		            }); //ajax end
		        }, //events:function end
			});
			calendar.render();
		}
		

		</script>