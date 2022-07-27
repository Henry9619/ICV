<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
</head>
<body>
	<%@ include file="Header.jsp"%>
	<main id="main">
		<section id="posts" class="posts">

			<div class="container" data-aos="fade-up">
				<div class="row g-5">
					<h2>THEATER</h2>

					<div class="col-lg-8">

						<div class="post-entry-1 lg">
							<img src="resources/assets/img/${thview.thName}.jpg"
								width="150px">
						</div>
						
						<div class="post-entry-1 lg">
							<img src="resources/assets/img/${thview.thPicName}" width="800px">
							<div class="name">
								<button type="button" class="btn btn-outline-danger"
									onclick="location.href='resPage'" style="margin-right: 20px">예매하기</button>
							</div>
						</div>
						<div class="post-entry-1 lg">${thview.thAddr}</div>
						<div class="post-entry-1 lg">
							<input type="button" value="위치 자세히보기" id="mapView"
								class="btn btn-primary ">

						</div>
						<div id="map" style="width: 100%; height: 350px;"></div>
						<input type="hidden" name="thLat" id="thLat"
							value="${thview.thLat}" /> <input type="hidden" name="thLong"
							id="thLong" value="${thview.thLong}" /> <input type="hidden"
							name="thCode" id="thCode" value="${thview.thCode}" />
						<div id="mapArea"></div>
					</div>

				</div>


			</div>

		</section>
	</main>



	<%@ include file="Footer.jsp"%>
</body>



<script>
	
</script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0baef7a236dd6024098239bd8c5f2527"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
<script type="text/javascript">
	$('#mapView').click(function() {
		var thLat = $('#thLat').val();
		var thLong = $('#thLong').val();

		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(thLat, thLong), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};

		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

		// 지도를 클릭한 위치에 표출할 마커입니다
		var marker = new kakao.maps.Marker({
			// 지도 중심좌표에 마커를 생성합니다 
			position : map.getCenter()
		});
		// 지도에 마커를 표시합니다
		marker.setMap(map);

		var output = "";

		output += "<table>";

		output += "<tr>";
		output += "<th><button onclick = find()>빠른 길 찾기</button></th>";
		output += "<th><input type=button value=로드뷰  onclick=roadmap() ></th>";

		output += "<tr>";
		output += "</table>";

		var commentArea = document.getElementById('mapArea');

		// commentArea에 output 내용 넣기!
		commentArea.innerHTML = output;

	});

	function find() {
		location.href = "https://map.naver.com/v5/directions/-/-/-/transit?c=14100091.6759585,4501538.2685552,15,0,0,0,dh";
	}

	function roadmap() {

		var thCode = $('#thCode').val();
		location.href = "thRoadMap?thCode=" + thCode;
	}
</script>

</html>
