<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>MyPlanner</title>
		<style>
			html {
				width : 100%;
				height : 100%;
				background-image : url('<%=request.getContextPath()%>/resources/img/bg_1.jpg');
				background-size : cover;
				background-repeat: no-repeat;
			}
			.planner-calendar-wrapper{
				width : 1000px;
				height : 800px;
			}
			.planner-calendar-content{
				width : 1000px;
				height : 700px;
				border : 2px solid rgba( 255, 255, 255, 0.8);;
			}
			.planner-calendar{
				width : 950px;
				height : 95%;
				margin-top : 1.5%;
				margin-left : auto;
				margin-right : auto;
			}
			.planner-calendar-header{
				text-align: right; 
			}
			.calendar-weekday{
				background-color : rgba( 255, 255, 255, 0.8);
				border-radius: 5px;
				width : 14%;
				height : 50px;
				margin : 0.14%;
				text-align : center;
				float : left;
			}
			.calendar-weekday span{
				line-height : 50px;
				font-weight: bold;
				font-size : 1.3em;
				font-family: monospace;
			}
			.calendar-day {
				background-color : rgba( 255, 255, 255, 0.8);
				border-radius: 5px;
				width : 14%;
				margin : 0.14%;
				height : 100px;
				float : left;
			}
			.calendar-day .calendar-day-header {
				width : 110px;
				padding: 5px 10px 5px 10px;
				text-align: right; 
				font-weight: bold;
				font-size : 1.3em;
				font-family: monospace;
			}
			.calendar-nextday {
				width : 14%;
				background-color : rgba( 240, 240, 240, 0.5);
				border-radius: 5px;
				margin : 0.14%;
				height : 100px;
				float : left;
			}
			.calendar-nextday .calendar-day-header {
				width : 110px;
				padding: 5px 10px 5px 10px;
				text-align: right; 
				font-weight: bold;
				font-size : 1.3em;
				font-family: monospace;
				color : rgba( 0, 0, 0, 0.5);
			}
		</style>
	</head>
	<body>
		<div class="planner-calendar-wrapper">
			<div class="planner-calendar-header">
				<input type="text" name="year" readonly value="" style="width:50px;text-align:center;">
				<input type="button" value="&lt;" onclick="go_prevMonth()">
				<input type="text" name="month" readonly value="" style="width:20px;text-align:center;">
				<input type="button" value="&gt;" onclick="go_nextMonth()">
			</div>
			<div class="planner-calendar-content">
				<div class="planner-calendar">
					<div class="day-of-week">
						<div class="calendar-weekday"><span>SUN</span></div>
						<div class="calendar-weekday"><span>MON</span></div>
						<div class="calendar-weekday"><span>TUE</span></div>
						<div class="calendar-weekday"><span>WED</span></div>
						<div class="calendar-weekday"><span>THU</span></div>
						<div class="calendar-weekday"><span>FRI</span></div>
						<div class="calendar-weekday"><span>SAT</span></div>
					</div>
					<div class="calendar-days">
					</div>
				</div><!-- /planner-calendar -->	
			</div><!-- /planner-calendar-content -->
		</div><!-- planner-calendar-wrapper -->
		
		<script>
			function setNextMonth(standardDate){
				var next;
				if(standardDate.getMonth() < 11){
					next = new Date(standardDate.getFullYear(),standardDate.getMonth()+1,1)
					
				} else {
					next = new Date(standardDate.getFullYear()+1,0,1)
				}
				return next;
			}
			
			var today = new Date();
			var month = 11;
			var year = 2020;
			
			function go_prevMonth(){
				if(month > 1){
					month -= 1;
				} else {
					month = 12;
					year -= 1;
				}
				printCalendar();
			}
			
			function go_nextMonth(){
				if(month < 12){
					month += 1;
				} else {
					month = 1;
					year += 1;
				}
				printCalendar();
			}
			
			var div = document.getElementsByClassName('calendar-days')[0];
			
			
			printCalendar();
			
			function printCalendar(){
				var standardDate = new Date(year,month-1,1);
				var prevMonth = new Date(standardDate.getFullYear(),standardDate.getMonth(),0);
				var nextMonth = setNextMonth(standardDate);
				
				var lastDate = new Date(nextMonth.getFullYear(),nextMonth.getMonth(),0)
				var prevDate = prevMonth.getDate();
				
				var str = "";
				for(var i =0; i<standardDate.getDay();i++){
					var date = prevDate - i;
					str += ''+
							  '<div class="calendar-nextday">'+
							  '	<div class="calendar-day-header">'+date+'</div>'+
							  '</div>'
				}
				for(var i =0; i<lastDate.getDate();i++){
					var date = standardDate.getDate() + i;
					str += ''+
							  '<div class="calendar-day">'+
							  '	<div class="calendar-day-header">'+date+'</div>'+
							  '</div>'
				}
				if(standardDate.getDay()<5){
					for(var i = 0; i<6-lastDate.getDay()+7;i++){
						var date = nextMonth.getDate() + i;
						str += ''+
								  '<div class="calendar-nextday">'+
								  '	<div class="calendar-day-header">'+date+'</div>'+
								  '</div>'
					}
				} else {
					for(var i = 0; i<6-lastDate.getDay();i++){
						var date = nextMonth.getDate() + i;
						str += ''+
								  '<div class="calendar-nextday">'+
								  '	<div class="calendar-day-header">'+date+'</div>'+
								  '</div>'
					}
				}
				div.innerHTML = str;
				document.querySelector('.planner-calendar-header input[name="month"]').value = month;
				document.querySelector('.planner-calendar-header input[name="year"]').value = year;
			}
			
		</script>
	</body>
</html>









