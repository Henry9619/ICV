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
<style>
h1, h2, h3, h4, h5, p {
	font-family: system-ui;
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
<meta charset="UTF-8">
<title>무비 차트</title>
</head>

<body>
	<%@ include file="Header.jsp"%>

	<main id="main">



		<!-- ======= Post Grid Section ======= -->
		<section id="posts" class="posts">

			<div class="container" data-aos="fade-up">
				<div class="row g-5">
					<c:forEach var="mov" items="${mInfo}">
						<div class="col-lg-4">

							<div class="post-entry-1 lg">
								<a href="movView?movCode=${mov.movCode}"><img
									src="resources/fileUpload/${mov.movPoster}" width="200px"
									height="260px" ;/></a>
								<div class="post-meta">
									<span class="mx-1">&bullet;</span> <span>${mov.movOpen}</span>
								</div>
								<h4>
									<a href="movView?movCode=${mov.movCode}">${mov.movName}</a>
								</h4>
								<p class="mb-4 d-block">${mov.movGenre}</p>

								<div class="d-flex align-items-center author">

									<div class="name">
										<button type="button" class="btn btn-outline-danger"
											onclick="location.href='resPage'" style="margin-right: 20px">예매하기</button>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>


				</div>

			</div>
			<div class="row g-5">
				<div class="col-lg-4"></div>

				<div class="col-lg-1"></div>
				<div class="col-lg-2">
					<div class="page-item disabled">
						<c:if test="${paging.page <= 1}"><img src="resources/assets/img/ss2.jpg" width="20px"></c:if>
						<c:if test="${paging.page > 1}">
							<a href="movInfo?page=${paging.page-1}&limit=${paging.limit}"><img src="resources/assets/img/ss2.jpg" width="20px"></a>
						</c:if>
						<c:forEach var="i" begin="${paging.startPage}"
							end="${paging.endPage}" step="1">
							<c:choose>

								<c:when test="${paging.page eq i}"> [${i}] </c:when>

								<c:otherwise>
									<a href="movInfo?page=${i}&limit=${paging.limit}">${i}</a>
								</c:otherwise>
							</c:choose>
						</c:forEach>

						<c:if test="${paging.page >= paging.maxPage}"> <img src="resources/assets/img/ss1.jpg" width="20px"></c:if>
						<c:if test="${paging.page < paging.maxPage}">
							<a href="movInfo?page=${paging.page+1}&limit=${paging.limit}">
								<img src="resources/assets/img/ss1.jpg" width="20px"></a>
						</c:if>
					</div>
				</div>
			</div>
		</section>
		<!-- End Post Grid Section -->




	</main>
	<!-- End #main -->







	<%@ include file="Footer.jsp"%>
</body>

</html>