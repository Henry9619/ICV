<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<style>
h1, h2, h3, h4, h5, p {
	font-family: system-ui;
	text-align: center;
}
ul, div1{
text-align: center;
}
</style>
<!-- =======================================================
  * Template Name: ZenBlog - v1.0.0
  * Template URL: https://bootstrapmade.com/zenblog-bootstrap-blog-template/
  * Author: BootstrapMade.com
  * License: https:///bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>
	<%@ include file="Header.jsp"%>





	<main id="main" class="main">

		<div class="pagetitle">
			<h1>상영시간 등록</h1>

		</div>
		<!-- End Page Title -->

		<section class="section">
			<div class="row">
				<div class="col-3"></div>
				<div class="col-6">

					<div class="card">
						<div class="card-body">


							<!-- General Form Elements -->
							<form action="schedule" method="post" enctype="multipart/form-data">
								<!-- 상영관 -->
								<div class="row mb-3">
									<label for="inputText" class="col-sm-2 col-form-label">상영관</label>

									<div class="col-md-3">
										<select onchange="changeScHall(this.value);"
											class=" form-control">
											<option selected disabled hidden>상영관 선택</option>
											<option>1관</option>
											<option>2관</option>
											<option>3관</option>
											<option>4관</option>
											<option>5관</option>
										</select>

									</div>
									<div class="col-md-7">
										<input type="text" name="scHall" id="inputScHall" readonly
											class="form-control" />
									</div>


								</div>

								<!-- 날짜 -->
								<div class="row mb-3">
									<label for="inputDate" class="col-sm-2 col-form-label">날짜</label>
									<div class="col-sm-3">
										<input type="date" name="mdate" class="form-control">
									</div>
								</div>



								<!-- 시간 -->
								<div class="row mb-3">
									<label for="inputTime" class="col-sm-2 col-form-label">시간</label>
									<div class="col-sm-3">

										<input type="time" name="hmTime" class="form-control">
									</div>
								</div>

								<div class="row mb-3">
									<label for="inputText" class="col-sm-2 col-form-label">영화관</label>

									<div class="col-md-3">
										<select class="form-control"
											onchange="changeThCode(this.value); ">
											<c:forEach var="th" items="${theater}">
												<option selected disabled hidden>영화관 선택</option>
												<option value="${th.thCode}">${th.thName}</option>
											</c:forEach>
										</select>

									</div>
									<div class="col-md-7">
										<input type="text" name="scthCode" id="inputThCode" readonly
											class="form-control" />
									</div>


								</div>
								<div class="row mb-3">
									<label for="inputText" class="col-sm-2 col-form-label">영화</label>

									<div class="col-md-3">
										<select onchange="changeMovCod(this.value);"
											class="form-control">
											<c:forEach var="mov" items="${movie}">
												<option selected disabled hidden>영화 선택</option>
												<option value="${mov.movCode}">${mov.movName}</option>

											</c:forEach>

										</select>

									</div>
									<div class="col-md-7">
										<input type="text" name="scmovCode" id="movieCode" readonly
											class="form-control" />

									</div>


								</div>



								<div class="row mb-3">
									<label class="col-sm-2 col-form-label"></label>
									<div class="col-sm-10">
										<button type="submit" class="btn btn-primary">등록</button>
										<button type="reset" class="btn btn-primary">다시작성</button>
									</div>
								</div>

							</form>
							<!-- End General Form Elements -->

						</div>
					</div>

				</div>

			</div>
		</section>

	</main>
	<!-- End #main -->



	<%@ include file="Footer.jsp"%>
	

</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
<script>
	//select option 영화등급   //select option 목록이2개 이상이 되야 input에 값이들어감
	var changeMovCod = function(value) {
		console.log("text : " + value);
		$("#movieCode").val(value);
	}

	//select option 영화장르
	var changeThCode = function(value) {
		console.log("text2 : " + value);
		$("#inputThCode").val(value);
	}
	//select option 상영관
	var changeScHall = function(value) {
		console.log("text2 : " + value);
		$("#inputScHall").val(value);
	}
</script>

</html>