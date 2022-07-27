<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>ICV</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="resources/assets//img/icv.png" rel="icon">
<link href="resources/assets//img/icv.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=EB+Garamond:wght@400;500&family=Inter:wght@400;500&family=Playfair+Display:ital,wght@0,400;0,700;1,400;1,700&display=swap"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="resources/assets//vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="resources/assets//vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="resources/assets//vendor/swiper/swiper-bundle.min.css"
	rel="stylesheet">
<link href="resources/assets//vendor/glightbox/css/glightbox.min.css"
	rel="stylesheet">
<link href="resources/assets//vendor/aos/aos.css" rel="stylesheet">

<!-- Template Main CSS Files -->
<link href="resources/assets//css/variables.css" rel="stylesheet">
<link href="resources/assets//css/main.css" rel="stylesheet">
<style>
h1, h2, h3, h4, h5, p {
	font-family: system-ui;
}

ul, div1 {
	text-align: center;
}
</style>
<!-- =======================================================
  * Template Name: ZenBlog - v1.0.0
  * Template URL: https://bootstrapmade.com/zenblog-bootstrap-blog-template/
  * Author: BootstrapMade.com
  * License: https:///bootstrapmade.com/license/
  ======================================================== -->


<style>
table {
	clear: both;
}

th {
	height: 50px;
	width: 100px;
	background-color: orange;
}

td {
	text-align: center;
	height: 50px;
	width: 100px;
	background-color: #9ab5b2;
}



select {
	display: block;
	width: 100%;
	padding: 0.375rem 0.75rem;
	font-size: 1rem;
	font-weight: 400;
	line-height: 1.5;
	color: #212529;
	background-color: #769e99;
	color: #ffffff;
	background-clip: padding-box;
	border: 1px solid #ced4da;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	border-radius: 0.25rem;
	transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
}



input[type='radio'] {
	width: 15px;
	height: 15px;
	border: 1px
}
input[type='date']{
	display: block;
	width: 100%;
	padding: 0.375rem 0.75rem;
	font-size: 1rem;
	font-weight: 400;
	line-height: 1.5;
	color: #212529;
	background-color: #769e99;
	color: #ffffff;
	background-clip: padding-box;
	border: 1px solid #ced4da;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	border-radius: 0.25rem;
	transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
}
input[type='submit']{
 background-color: #000000;
  color: #ffffff;
  border-color: #000000;
}
</style>
<c:if test="${login.mId eq null }">
	<script>
	alert('로그인 이후 이용해주세요.');
	location.href="mLoginForm";
	</script>

</c:if>

</head>
<body>
	<%@ include file="Header.jsp"%>

	<main>
		<div class="pagetitle">
			<h1>예매 페이지</h1>

		</div>
		<!-- End Page Title -->

		<section class="section">
			<div class="row">
				<div class="col-3"></div>
				<div class="col-6">

					<div class="card">
						<div class="card-body">


							<!-- General Form Elements -->


							<div class="row mb-3">
								<label for="inputText" class="col-sm-2 col-form-label">예매</label>
								<div class="col-sm-10">
									<select id="mlist" onchange="thlist()">
										<c:forEach var="ml" items="${movielist}">
											<option value="" selected disabled hidden>영화를 선택해주세요</option>
											<option id="movCode" value="${ml.movCode}">${ml.movName}</option>
										</c:forEach>
									</select>

									<div id="thArea"></div>
									<br>
									<div id="calArea"></div>
									<br>
									<div id="ScheArea"></div>
									<br>
									<div id="numArea"></div>
									<br>
									
									<div id="resArea"></div>
									<br>
								</div>
							</div>


							<input type="hidden" value="${login.mId}" id="loginId"/>

							<!-- End General Form Elements -->

						</div>
					</div>

				</div>

			</div>
		</section>

	</main>

	<%@ include file="Footer.jsp"%>


</body>


<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>





<!-- 영화관 선택 -->
<script>
	function thlist() {
		$('#thlist').val("");
		$('#date').val("");
		$('#ScheArea').empty();
		theaterlist();
	}
	
	<!-- 영화관 선택 -->
	function theaterlist()
	{	
		$('#date').val("");
		
	
		var output = "";
		output += "<select id='thlist' onchange='sche(this.value)'>";
		output += "<c:forEach var='tl' items='${thList}'>";
		output += "<option value='' selected disabled hidden>극장을 선택해주세요</option>";
		output += "<option id='thCdoe' value='${tl.thCode}'>${tl.thName}</option>";
		output += "</c:forEach>";
		output += "</select>";
		

	var thArea = document.getElementById('thArea');
	thArea.innerHTML = output;

	}
		
		
	
	
	<!-- 날짜 선택 -->
	function sche(thCode) {
		$('#ScheArea').empty();
		var mCode = $('#mlist').val(); 
		console.log(thCode);
		console.log(mCode);
		calender();
			
	}
	<!-- 날짜 선택 -->
	function calender()
	{
	
	var output = ""
	

	
	var date1 = new Date().toISOString().substring(0, 10);
	output = "날짜선택 : <input type='date' id='date' onchange='schedulelist(this.value)' min="+date1+">"		
		
	var calArea = document.getElementById('calArea');
	calArea.innerHTML = output;

	}

	
	<!-- 상영스케줄  -->
	function schedulelist(date){
		var mCode = $('#mlist').val(); 
		var thCode = $('#thlist').val();
		console.log(mCode);
		console.log(thCode);
		console.log(date);
		$.ajax({
			type : "POST",
			url : "schedule2",
			data : {
				"thCode" : thCode,
				"mCode" : mCode,
				"date" : date
			},

			dataType : "json",
			success : function(list) {
				if(list == ""){
					alert('상영중인 영화가 없습니다');
					$('#ScheArea').empty();
				}else{
				mSchedule(list);
				}
			},
			error : function() {
				alert('실패!');
			}

		});

	};
	
	<!-- 상영스케줄  -->
	function mSchedule(list){
		var output = "";
		output += "<p></p>";
		output += "<table>";
		for(var i in list){
			
		output += "<tr>";			
		output += "<td><input type='radio' id='scheradio' onchange='numMoviegoer(this.value)' name='scheradio' value='"+ list[i].scHall + ","+list[i].scTime.toString().substring(0, 16)+"'>"+ list[i].scHall + "</br>" + list[i].scTime.toString().substring(10, 16) +"</td>";
		output += "<tr>";
	
		
		}
		output += "</table>";
		var ScheArea = document.getElementById('ScheArea');
		ScheArea.innerHTML = output;
	}
	
	
	function numMoviegoer(scheradiovalue){
		var arr = [1,2,3,4,5,6,7]; 
		var output = "";
		output += "<span>인원선택</span><br>"
		for(var i in arr){	
		output += "<input type='radio' id='num' name='num' onchange='ressubmit(this.value)' value="+ arr[i] +">"+arr[i];
		}
		output += "<p></p>";
		

		var numArea = document.getElementById('numArea');
		numArea.innerHTML = output;
	}


	function ressubmit(number) {
		var rvMovCode = $('#mlist').val(); 
		var rvScThCode = $('#thlist').val(); 
		var rvCount = $('input[name=num]:checked').val();
		var halldate = $('input[name=scheradio]:checked').val();
		var rvmId = $('#loginId').val(); 
			
		var array = halldate.split(",");
	    var rvScHall = array[0];
	    var rvScTime = array[1]; 
	   
	   
	    
	    var output = "";
	    output += "<form action='ressuccess' method='POST'>";
	    output += "<input type='hidden' name='rvMovCode' value="+rvMovCode+">";
	    output += "<input type='hidden' name='rvScThCode' value="+rvScThCode+">";
	    output += "<input type='hidden' name='rvCount' value="+rvCount+">";
	    output += "<input type='hidden' name='rvScHall' value="+rvScHall+">";
	    output += "<input type='hidden' name='rvScTime' value='"+rvScTime+"'>";
	    output += "<input type='hidden' name='rvmId' value='"+rvmId+"'>";
	    output += "<input type='submit' value='예매하기'>";
	    output += "</form>"
	    
	    
	    var resArea = document.getElementById('resArea');
	    resArea.innerHTML = output;
		
	    console.log("1번"+rvMovCode);
		console.log("2번"+rvScThCode);
		console.log("4번"+rvCount);
		console.log("5번"+halldate);
		console.log("6번"+rvScHall);
		console.log("7번"+rvScTime);
		console.log("8번"+loginId);
	}
	
	

</script>


</html>



