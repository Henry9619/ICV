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
	<main id="main">
		<section id="hero-slider" class="hero-slider">
			<div class="container-md" data-aos="fade-in">
				<div class="row">
					<div class="col-12">
						<div class="swiper sliderFeaturedPosts">
							<div class="swiper-wrapper">
								<div class="swiper-slide">
									<a href="movView?movCode=203"
										class="img-bg d-flex align-items-end"
										style="background-image: url('resources/assets//img/덤블도어.jpg');">
										<div class="img-bg-inner">
											<h2>가장 위험한 마법에 맞선, 세상을 구할 전쟁이 시작된다!</h2>
											<p>1930년대, 제2차 세계대전에 마법사들이 개입하게 되면서 강력한 어둠의 마법사 그린델왈드의 힘이
												급속도로 커진다. 덤블도어는 뉴트 스캐맨더에게 위대한 마법사 가문 후손, 마법학교의 유능한 교사, 머글
												등으로 이루어진 팀에게 임무를 맡긴다. 이에 뉴트와 친구들은 머글과의 전쟁을 선포한 그린델왈드와 추종자들,
												그의 위험한 신비한 동물들에 맞서 세상을 구할 거대한 전쟁에 나선다. 한편 전쟁의 위기가 최고조로 달한 상황
												속에서 덤블도어는 더 이상 방관자로 머물 수 없는 순간을 맞이하고, 서서히 숨겨진 비밀이 드러나는데…</p>
										</div>

									</a>
								</div>

								<div class="swiper-slide">
									<a href="movView?movCode=202"
										class="img-bg d-flex align-items-end"
										style="background-image: url('resources/assets//img/닥터스트레인지.jpg');">
										<div class="img-bg-inner">
											<h2>지금껏 본 적 없는 마블의 극한 상상력! 광기의 멀티버스가 깨어난다</h2>
											<p>끝없이 균열되는 차원과 뒤엉킨 시공간의 멀티버스가 열리며 오랜 동료들, 그리고 차원을 넘어 들어온
												새로운 존재들을 맞닥뜨리게 된 ‘닥터 스트레인지’. 대혼돈 속, 그는 예상치 못한 극한의 적과 맞서 싸워야만
												하는데….</p>
										</div>
									</a>
								</div>

								<div class="swiper-slide">
									<a href="movView?movCode=204"
										class="img-bg d-flex align-items-end"
										style="background-image: url('resources/assets//img/니 부모 얼굴이.jpg');">
										<div class="img-bg-inner">
											<h2>“누군가 잘못했겠지 하지만 내 아들은 절대 아니야”</h2>
											<p>명문 한음 국제중학교 학생 ‘김건우’가 같은 반 친구 4명의 이름이 적힌 편지를 남긴 채,
												의식불명 상태로 호숫가에서 발견된다. 병원 이사장의 아들 ‘도윤재’ 전직 경찰청장의 손자 ‘박규범’ 한음
												국제중학교 교사의 아들 ‘정이든’ 그리고, 변호사 ‘강호창’(설경구)의 아들 ‘강한결’. 가해자로 지목된
												아이들의 부모들은 자신의 권력과 재력을 이용해 사건을 은폐하려고 한다. 하지만, 담임 교사
												‘송정욱’(천우희)의 양심 선언으로 건우 엄마(문소리) 또한 아들의 죽음에 관한 진실을 알게 된다. 세상의
												이목이 한음 국제중학교로 향하고, 자신의 아이들을 지키기 위한 가해자 부모들의 추악한 민낯이 드러나는데…

												자식이 괴물이 되면, 부모는 악마가 된다</p>
										</div>
									</a>
								</div>

								<div class="swiper-slide">
									<a href="movView?movCode=201"
										class="img-bg d-flex align-items-end"
										style="background-image: url('resources/assets//img/배드가이즈.jpg');">
										<div class="img-bg-inner">
											<h2>드림웍스 최초의 범죄오락액션 블록버스터! 어디 착한 짓 좀 해볼까?</h2>
											<p>작전 설계부터 금고 해제, 해킹, 액션, 위장까지 완벽한 팀플레이를 펼치는 자타공인 최고의 나쁜
												녀석들이 한순간의 실수로 체포된다. 하지만 그들도 착해질 수 있다는 ‘마멀레이드 박사’의 주장으로 나쁜
												녀석들은 바른 생활 갓생 프로젝트에 투입되고, 이들은 다시 한번 자유의 몸을 위해 태어나 처음으로 바른
												생활에 도전하게 되는데… 나쁜 녀석들의 사상 초유 바른 생활 갓생 프로젝트가 시작된다!</p>
										</div>
									</a>
								</div>

								<div class="swiper-slide">
									<a href="movView?movCode=206"
										class="img-bg d-flex align-items-end"
										style="background-image: url('resources/assets//img/서울괴담.jpg');">
										<div class="img-bg-inner">
											<h2>서울괴담</h2>
											<p>어두운 터널을 홀로 지날 때의 두려움 옆집에서 들려오는 의문의 소리 중고 가구에 얽힌 미스터리
												다른 사람을 향한 그릇된 질투 복수, 저주, 욕망에서 시작된 죽음보다 더한 공포의 실체가 찾아온다!</p>
										</div>
									</a>
								</div>


								<div class="swiper-slide">
									<a href="movView?movCode=205"
										class="img-bg d-flex align-items-end"
										style="background-image: url('resources/assets//img/엉덩이탐정.jpg');">
										<div class="img-bg-inner">
											<h2>
												극장판 엉덩이 탐정: 수플레 섬의 비밀 </h2>
												<p>1년 내내 바람이 부는 ‘수플레 섬’에 괴도 유의 예고장이 도착했다! 그의 목표는 섬의 보물인
													‘바람의 길잡이’! 엉덩이 탐정과 브라운, 견공 경찰서 일행은 ‘수플레 섬’에 방문해 ‘루루’를 만난다.
													늘 바깥 세상을 동경하는 ‘루루’는 하늘을 자유자재로 누비는 특별한 능력을 가지고 있다. 예고된 보름달이
													뜨는 밤, 엉덩이 탐정 일행은 ‘바람의 길잡이’를 지키기 위해 나서는데… 엉덩이 탐정의 명추리가 빛나는
													순간, 섬에 숨겨져 있던 비밀이 밝혀진다!</p>
										</div>
									</a>
								</div>


							</div>
							<div class="custom-swiper-button-next">
								<span class="bi-chevron-right"></span>
							</div>
							<div class="custom-swiper-button-prev">
								<span class="bi-chevron-left"></span>
							</div>

							<div class="swiper-pagination"></div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Hero Slider Section -->



		<!-- ======= Post Grid Section ======= -->
		<section id="posts" class="posts">

			<div class="container" data-aos="fade-up">
				<div class="row g-5">
					<c:forEach var="mov" items="${mInfo1}">
						<div class="col-lg-4">

							<div class="post-entry-1 lg">
								<a href="movView?movCode=${mov.movCode}"><img
									src="resources/fileUpload/${mov.movPoster}" width="300px"
									height="400px" ;/></a>
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
				<!-- End .row -->
			<div class="row g-5">
				<div class="col-lg-4"></div>

				<div class="col-lg-1"></div>
				<div class="col-lg-2">
					<div class="page-item disabled">
						<c:if test="${paging1.page <= 1}"><img src="resources/assets/img/ss2.jpg" width="20px"></c:if>
						<c:if test="${paging1.page > 1}">
							<a href="index?page=${paging.page-1}&limit=${paging.limit}"><img src="resources/assets/img/ss2.jpg" width="20px"></a>
						</c:if>
						<c:forEach var="i" begin="${paging1.startPage}"
							end="${paging1.endPage}" step="1">
							<c:choose>

								<c:when test="${paging1.page eq i}"> [${i}] </c:when>

								<c:otherwise>
									<a href="index?page=${i}&limit=${paging1.limit}">${i}</a>
								</c:otherwise>
							</c:choose>
						</c:forEach>

						<c:if test="${paging1.page >= paging1.maxPage}"> <img src="resources/assets/img/ss1.jpg" width="20px"></c:if>
						<c:if test="${paging1.page < paging1.maxPage}">
							<a href="index?page=${paging.page+1}&limit=${paging1.limit}">
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