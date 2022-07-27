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
</head>

<body>

	<%@ include file="Header.jsp"%>

	<main id="main" class="main">
		<section class="section profile">
			<div class="container">
				<div class="row">
					<div class="card">
						<div class="card-body">
							<h1 class="mb-5">예매완료</h1>
							<div class="card-body pt-5">


								<div class="row">
									<div class="col-lg-2 label">
										<h5>예매번호</h5>
									</div>
									<div class="col-lg-9">
										<h5>${resdtoList.rvCode}</h5>
									</div>
								</div>



								<div class="row">
									<div class="col-lg-2 label">
										<h5>영화관</h5>
									</div>
									<div class="col-lg-9 ">
										<h5>${resdtoList.thName}</h5>
									</div>
								</div>

								<div class="row">
									<div class="col-lg-2 label">
										<h5>영화</h5>
									</div>
									<div class="col-lg-9">
										<h5>${resdtoList.movName}</h5>
									</div>
								</div>

								<div class="row">
									<div class="col-lg-2 label">
										<h5>상영관</h5>
									</div>
									<div class="col-lg-9">
										<h5>${resdtoList.rvScHall}</h5>
									</div>
								</div>

								<div class="row">
									<div class="col-lg-2 label">
										<h5>상영시간</h5>
									</div>
									<div class="col-lg-9">
										<h5>${resdtoList.rvScTime.toString().substring(0, 16)}</h5>
									</div>
								</div>

								<div class="row">
									<div class="col-lg-2 label">
										<h5>관람인원</h5>
									</div>
									<div class="col-lg-9">
										<h5>${resdtoList.rvCount}명</h5>
									</div>
								</div>

								<!-- 요구사항 : 현재 페이지의 회원정보와 로그인한 회원정보가 일치할 경우 수정, 삭제 버튼이 보인다 -->
								
							</div>
						</div>
					</div>
					<!-- End Bordered Tabs -->

				</div>
			</div>
		</section>
	</main>
	<%@ include file="Footer.jsp"%>
</body>
</html>