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
<c:if test="${login.mId eq null }">
	<script>
		alert('로그인 이후 이용해주세요.');
		location.href = "mLoginForm";
	</script>

</c:if>
<body>

	<%@ include file="Header.jsp"%>

	<main id="main" class="main">
		<section class="section profile">

			<div class="container">
				<div class="row">
					<div class="card">
						<div class="card-body">
							<h1 class="mb-5">마이페이지</h1>
							<div class="card-body pt-5">
								<h3>${login.mName}님의회원정보</h3>

								<div class="row">
									<div class="col-lg-2 label">
										<h5>아이디</h5>
									</div>
									<div class="col-lg-9">
										<h5>${login.mId}</h5>
									</div>
								</div>



								<div class="row">
									<div class="col-lg-2 label">
										<h5>이름</h5>
									</div>
									<div class="col-lg-9 ">
										<h5>${login.mName}</h5>
									</div>
								</div>

								<div class="row">
									<div class="col-lg-2 label">
										<h5>성별</h5>
									</div>
									<div class="col-lg-9">
										<h5>${login.mGender}</h5>
									</div>
								</div>

								<div class="row">
									<div class="col-lg-2 label">
										<h5>연락처</h5>
									</div>
									<div class="col-lg-9">
										<h5>${login.mPhone}</h5>
									</div>
								</div>

								<div class="row">
									<div class="col-lg-2 label">
										<h5>주소</h5>
									</div>
									<div class="col-lg-9">
										<h5>${login.mAddr}</h5>
									</div>
								</div>

								<div class="row">
									<div class="col-lg-2 label">
										<h5>이메일</h5>
									</div>
									<div class="col-lg-9">
										<h5>${login.mEmail}</h5>
									</div>
								</div>

								<!-- 요구사항 : 현재 페이지의 회원정보와 로그인한 회원정보가 일치할 경우 수정, 삭제 버튼이 보인다 -->
								<c:if test="${login.mId eq 'admin'}">
									<tr colspan="2">
									<tr>
										<td colspan="2"><input type="button" value="수정"
											class="btn btn-success rounded-pill"
											onclick="location.href='mModiform?mId=${login.mId}'" /> <input
											type="button" value="삭제" class="btn btn-danger rounded-pill"
											onclick="mDelete()" /></td>
									</tr>
								</c:if>




							</div>
						</div>
					</div>
					<!-- End Bordered Tabs -->

				</div>
			</div>

			<div class="container">

				<div class="row">
					<div class="card">
						<div class="card-body">
							<h1 class="mb-5">나의 예매내역</h1>
							<div class="card-body pt-5">


								<c:forEach var="rd" items="${resdetail}">

									<div class="row">
										<div class="col-lg-2 label">
											<h5>예매번호</h5>
										</div>
										<div class="col-lg-9">
											<h5>${rd.rvCode}</h5>
										</div>
									</div>

									<div class="row">
										<div class="col-lg-2 label">
											<h5>영화관</h5>
										</div>
										<div class="col-lg-9 ">
											<h5>${rd.thName}</h5>
										</div>
									</div>

									<div class="row">
										<div class="col-lg-2 label">
											<h5>영화</h5>
										</div>
										<div class="col-lg-9">
											<h5>${rd.movName}</h5>
										</div>
									</div>

									<div class="row">
										<div class="col-lg-2 label">
											<h5>상영관</h5>
										</div>
										<div class="col-lg-9">
											<h5>${rd.rvScHall}</h5>
										</div>
									</div>

									<div class="row">
										<div class="col-lg-2 label">
											<h5>상영시간</h5>
										</div>
										<div class="col-lg-9">
											<h5>${rd.rvScTime.toString().substring(0, 16)}</h5>
										</div>
									</div>

									<div class="row">
										<div class="col-lg-2 label">
											<h5>관람인원</h5>
										</div>
										<div class="col-lg-9">
											<h5>${rd.rvCount}명</h5>
										</div>
									</div>

									<!-- 요구사항 : 현재 페이지의 회원정보와 로그인한 회원정보가 일치할 경우 수정, 삭제 버튼이 보인다 -->
									
										<input type="button" value="예매취소"
											class="btn btn-danger rounded-pill"
											onclick="resCancle('${rd.rvCode}')" />
									
								</c:forEach>
							</div>
						</div>
					</div>

					<!-- End Bordered Tabs -->

				</div>
			</div>

		</section>

	</main>

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"
		integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
		crossorigin="anonymous"></script>
	<script>
		function resCancle(rvCode) {

			console.log(rvCode);
			var check = confirm('예매를 취소하시겠습니까?');

			if (check) {
				location.href = "resCancle?rvCode=" + rvCode;

			}
		}
	</script>

	<%@ include file="Footer.jsp"%>
</html>