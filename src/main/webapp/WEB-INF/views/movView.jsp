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
<!-- Favicons -->
<link href="resources/assets//img/icv.png" rel="icon">
<link href="resources/assets//img/icv.png"
	rel="apple-touch-icon">

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

<!-- =======================================================
  * Template Name: ZenBlog - v1.0.0
  * Template URL: https://bootstrapmade.com/zenblog-bootstrap-blog-template/
  * Author: BootstrapMade.com
  * License: https:///bootstrapmade.com/license/
  ======================================================== -->

<style>
h1,h2,h3,h4,h5,p{
font-family: system-ui;
}
ul, div1{
text-align: center;
}

</style>
<style>
.th1 {
	width: 300px;
}
</style>
</head>
<meta charset="UTF-8">
<title>?????? ??????</title>
</head>
<body>

	<%@ include file="Header.jsp"%>
	<main id="main" class="main">

		<div class="pagetitle"></div>
		<!-- End Page Title -->

		<section class="section profile">

			<div class="container">
				<div class="row">
					<div class="col-md-9 post-content aos-init aos-animate"
						data-aos="fade-up">
						<div class="single-post">
							<h1 class="mb-5">${movView.movName}</h1>
							<div class="post-meta">
								<input type="hidden" name="mCode" id="mCode"
									value="${movView.movCode}" />




								<div class="row">
									<div class="col-lg-3 label">
										<h5>??????</h5>
									</div>
									<div class="col-lg-9">
										<h5>${movView.movDirector}</h5>
									</div>
								</div>



								<div class="row">
									<div class="col-lg-3 label">
										<h5>??????</h5>
									</div>
									<div class="col-lg-9 ">
										<h5>${movView.movGenre}</h5>
									</div>
								</div>

								<div class="row">
									<div class="col-lg-3 label">
										<h5>??????</h5>
									</div>
									<div class="col-lg-9">
										<h5>${movView.movGrade}</h5>
									</div>
								</div>

								<div class="row">
									<div class="col-lg-3 label">
										<h5>??????</h5>
									</div>
									<div class="col-lg-9">
										<h5>${movView.movOpen}</h5>
									</div>
								</div>

								<div class="row">
									<div class="col-lg-3 label">
										<h5>?????? ?????????</h5>
									</div>
									<div class="col-lg-9">
										
											<img src="resources/fileUpload/${movView.movPoster}"
												width="500px"
									height="700px"/>
										
									</div>
								</div>
								<div class="d-flex align-items-center author">

									<div class="name">
										<button type="button" class="btn btn-outline-danger"
											onclick="location.href='resPage'" style="margin-right: 20px">????????????</button>
									</div>
								</div>
								<!-- ???????????? : ?????? ???????????? ??????????????? ???????????? ??????????????? ????????? ?????? ??????, ?????? ????????? ????????? -->
								<c:if test="${login.mId eq 'admin'}">
									<tr colspan="2">
										<td><input type="button" value="??????" class="btn btn-primary"
											onclick="location.href='movModiForm?movCode=${movView.movCode}'" />
											<input type="button" value="??????" class="btn btn-primary"
											onclick="if(!confirm('?????? ?????????????????????????')){return false;}else{location.href='movDelete?movCode=${movView.movCode}'}" />
										</td>
									</tr>
								</c:if>



							</div>
							<c:if test="${login.mId ne null}">
					
							<textarea class="form-control" id="cContents"
								placeholder="Enter your name" cols="30" rows="10"></textarea>


							<input type="submit" class="btn btn-primary" id="commBtn"
								value="?????? ??????">
							</c:if>
								
						  <input type="hidden" value="${login.mId}" id="loginId"/>

						</div>
						<div id=commtArea></div>
					</div>
					<!-- End Bordered Tabs -->

				</div>
			</div>


		</section>

	</main>
<%@ include file="Footer.jsp"%>

</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
<script type="text/javascript">
	$(document).ready(function() {

		// ?????? ????????? ???????????? ajax
		var mCode = $('#mCode').val();

		console.log('hidden : ' + mCode);

		$.ajax({
			type : "POST",
			url : "comment/cList",
			data : {
				"mCode" : mCode
			},
			dataType : "json",
			success : function(list) {

				// ???????????? ??????
				commentList(list);
			},
			error : function() {
				alert('?????? ????????? ???????????? ??????');
			}

		});

		$('#commBtn').click(function() {
			var cWriter = $('#loginId').val(); 
			var cContents = $('#cContents').val();
			var mCode = $('#mCode').val();

			$.ajax({
				type : "POST",
				url : "comment/cWrite",
				data : {
					"cWriter" : cWriter,
					"cmNum" : mCode,
					"cContents" : cContents
				},
				dataType : "json",
				success : function(list) {
					
					commentList(list);
					$('#cContents').val("");
				},
				error : function() {
					alert('?????? ?????? ??????');
				}
			});
		});

	});
	function commentList(list) {
		var output = "";

		//output????????? ?????? ???????????????. ( += )
		output += "<table>";
		output += "<tr>";
		output += "<th class='th1'>?????????</th>";
		output += "<th class='th1'>??????</th>";
		output += "<th class='th1'>?????????</th>";
		output += "<th class='th1'>??????</th>";
		output += "<th class='th1'>??????</th>";
		output += "</tr>";

		for ( var i in list) {
			console.log(list);
			output += "<tr>";
			output += "<td>" + list[i].cWriter + "</td>";
			output += "<td>" + list[i].cContents + "</td>";
			output += "<td>" + list[i].cDate + "</td>";
			if(list[i].cWriter =='${login.mId}'){
			output += "<td><button class='btn btn-primary' onclick='commentModi(" + list[i].cNum + ","
					+ list[i].cmNum + ")'>??????</button></td>";
			}else{
				output += "<td></td>";
			}
			if(list[i].cWriter=='${login.mId}' || '${login.mId}'=='admin'){
			output += "<td><button class='btn btn-primary' onclick='commentDelete(" + list[i].cNum
					+ "," + list[i].cmNum + ")'>??????</button></td>";
		} else{
			output += "<td></td>";
		}
			output += "</tr>";
		}
		output += "</table>";
		//div ?????? commentArea
		var commentArea = document.getElementById('commtArea');

		//commentArea??? output ?????? ??????!
		commentArea.innerHTML = output;
	}

	function commentDelete(cNum, cmNum) {
		var check = confirm('????????? ?????? ???????????????????');

		if (check) {
			$.ajax({

				type : "POST",
				url : "comment/cDelete",
				data : {
					"cNum" : cNum,
					"cmNum" : cmNum
				},
				dataType : "json",
				success : function(list) {
					commentList(list);
				},
				error : function() {
					alert('???????????????^^');
				}
			});
		}
	}
	function commentModi(cNum, cmNum) {
		var check = confirm('????????? ?????????????????????????');
		var cContents = $('#cContents').val();

		if (check) {
			$.ajax({

				type : "POST",
				url : "comment/cModi",
				data : {
					"cNum" : cNum,
					"cmNum" : cmNum,
					"cContents" : cContents
				},
				dataType : "json",
				success : function(list) {
					commentList(list);
					$('#cContents').val("");
				},
				error : function() {
					alert('?????? ?????? ??????');
				}
			});
		}
	}
</script>

</html>