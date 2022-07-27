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
			<h1>영화 수정 페이지</h1>

		</div>
		<!-- End Page Title -->

		<section class="section">
			<div class="row">

				<div class="col-3"></div>
				<div class="col-6">

					<div class="card">
						<div class="card-body">

							<h2>영화 수정</h2>
							<!-- General Form Elements -->
							<form action="movModi" method="post"
								enctype="multipart/form-data">

								<div class="row mb-3">
									<label for="inputText" class="col-sm-2 col-form-label">영화이름</label>
									<div class="col-sm-10">
										<input type="text" name="movName" class="form-control">
									</div>
								</div>


								<div class="row mb-3">
									<label for="inputPassword" class="col-sm-2 col-form-label">영화감독</label>
									<div class="col-sm-10">
										<input type="text" name="movDirector" class="form-control">
									</div>
								</div>


								<div class="row mb-3">
									<label for="inputText" class="col-sm-2 col-form-label">영화장르</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" name="movGenre">
									</div>
								</div>


								<div class="row mb-3">
									<label for="inputDate" class="col-sm-2 col-form-label">영화등급</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" name="movGrade">
									</div>
								</div>





								<div class="row mb-3">
									<label for="inputText" class="col-sm-2 col-form-label">영화개봉일</label>
									<div class="col-sm-10">
										<input type="date" class="form-control" name="movOpen">
									</div>
								</div>




								<div class="row mb-3">
									<label for="inputEmail" class="col-sm-2 col-form-label">영화포스터</label>
									<div class="col-sm-10">
										<input type="file" class="form-control" name="movFile">
									</div>
								</div>

								<div class="row mb-3">
									<label class="col-sm-2 col-form-label"></label>
									<div class="col-sm-10">
										<button type="submit" class="btn btn-primary">수정</button>
										<button type="reset" class="btn btn-primary">다시작성</button>
										<input type="hidden" name="movCode" value="${movModi.movCode}" />
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

</html>