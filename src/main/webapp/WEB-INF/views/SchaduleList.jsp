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
  th {
	
	border-collapse: collapse;
	padding: 10px;
}
th{
background-color: #a9c5d9;
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


<%@ include file="Header.jsp"%>

<!-- ======= Post Grid Section ======= -->
<main id="main">
	<section id="posts" class="posts">

		<div class="container" data-aos="fade-up">
			<div class="row g-5">
				<table>
					<tr>
						<th>상영관</th>
						<th>날짜 및 시간</th>
						<th>영화관</th>
						<th>영화</th>

					</tr>
					<c:forEach var="list" items="${SchaduleList}">
						<tr>
							<td>${list.scHall}</td>
							<td>${list.scTime}</td>
							<td>${list.thName}</td>
							<td>${list.movName}</td>

						</tr>
					</c:forEach>
				</table>

			</div>

		</div>



	</section>
</main>
<!-- End Post Grid Section -->
<%@ include file="Footer.jsp"%>
</body>
</html>