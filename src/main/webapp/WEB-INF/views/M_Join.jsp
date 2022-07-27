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
			<h1>회원가입 페이지</h1>

		</div>
		<!-- End Page Title -->

		<section class="section">
			<div class="row">
				<div class="col-3"></div>
				<div class="col-6">

					<div class="card">
						<div class="card-body">


							<!-- General Form Elements -->
							<form action="mJoin" method="post" enctype="multipart/form-data">
								<!-- 아이디 -->
								<div class="row mb-3">
									<label for="inputText" class="col-sm-2 col-form-label">아이디</label>
									<div class="col-sm-10">
										<input type="text" name="mId" id="mId" class="form-control"
											onkeyup="checkId()"> <br /> <span id="confirmId"></span>
									</div>
								</div>

								<!-- 비밀번호 -->
								<div class="row mb-3">
									<label for="inputPassword" class="col-sm-2 col-form-label">비밀번호</label>
									<div class="col-sm-10">
										<input type="password" class="form-control" name="mPw">
									</div>
								</div>

								<!-- 이름 -->
								<div class="row mb-3">
									<label for="inputText" class="col-sm-2 col-form-label">이름</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" name="mName">
									</div>
								</div>

								<!-- 생년월일 -->
								<div class="row mb-3">
									<label for="inputDate" class="col-sm-2 col-form-label">생년월일</label>
									<div class="col-sm-3">
										<input type="date" class="form-control" name="mBirth">
									</div>
								</div>

								<!-- 성별 -->
								<fieldset class="row mb-3">
									<legend class="col-form-label col-sm-2 pt-0">성별</legend>
									<div class="col-sm-10">
										<div class="form-check">
											<input class="form-check-input" type="radio" id="gridRadios1"
												value="여" checked name="mGender"> <label
												class="form-check-label" for="gridRadios1"> 여성 </label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="radio" id="gridRadios2"
												value="남" name="mGender"> <label
												class="form-check-label" for="gridRadios2"> 남성 </label>
										</div>

									</div>
								</fieldset>

								<!-- 연락처 -->
								<div class="row mb-3">
									<label for="inputText" class="col-sm-2 col-form-label">연락처</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" name="mPhone">
									</div>
								</div>

								<!-- 주소 -->
								<div class="row mb-3">
									<label for="inputText" class="col-sm-2 col-form-label">주소</label>
									<div class="col-sm-10">
										<input type="text" id="sample6_postcode" placeholder="우편번호" class="form-control "
											name="addr1"> <input type="button" class="btn btn-primary "
											onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
										<input type="text" id="sample6_address" placeholder="주소"
											class="form-control " name="addr2"><br> <input
											type="text" id="sample6_detailAddress" placeholder="상세주소"
											name="addr3" class="form-control">
									</div>
									
								</div>

								<!-- 이메일 -->
								<div class="row mb-3">
									<label for="inputEmail" class="col-sm-2 col-form-label">이메일</label>
									<div class="col-sm-10">
										<input type="email" class="form-control" name="mEmail"
											id="mEmail">
									</div>
								</div>
								<!-- 프로필사진 -->
								<div class="row mb-3">
									<label for="inputEmail" class="col-sm-2 col-form-label">프로필사진</label>
									<div class="col-sm-10">
										<input type="file" class="form-control" name="mProfile">
									</div>
								</div>

								<div class="row mb-3">
									<label class="col-sm-2 col-form-label"></label>
									<div class="col-sm-10">
										<button type="submit" class="btn btn-primary">가입</button>
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
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	function checkId() {

		var mId = document.getElementById('mId').value;
		var confirmId = document.getElementById('confirmId');

		$.ajax({
			type : 'POST',
			url : "checkId",
			data : {
				"mId" : mId,
			},
			dataType : "text",

			success : function(result) {
				if (result == "OK") {
					confirmId.style.colcr = "0000ff";
					confirmId.innerHTML = "사용가능한 아이디";
				} else {
					confirmId.style.colcr = "ff0000";
					confirmId.innerHTML = "사용중인 아이디";
				}
			},
			error : function() {
				alert('checkId()함수 통신실패!');
			}

		});
	}

</script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
<script>
	function sample6_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 각 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var addr = ''; // 주소 변수
						var extraAddr = ''; // 참고항목 변수

						//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
						if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
							addr = data.roadAddress;
						} else { // 사용자가 지번 주소를 선택했을 경우(J)
							addr = data.jibunAddress;
						}

						// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
						if (data.userSelectedType === 'R') {
							// 법정동명이 있을 경우 추가한다. (법정리는 제외)
							// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
							if (data.bname !== ''
									&& /[동|로|가]$/g.test(data.bname)) {
								extraAddr += data.bname;
							}
							// 건물명이 있고, 공동주택일 경우 추가한다.
							if (data.buildingName !== ''
									&& data.apartment === 'Y') {
								extraAddr += (extraAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
							if (extraAddr !== '') {
								extraAddr = ' (' + extraAddr + ')';
							}

						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('sample6_postcode').value = data.zonecode;
						document.getElementById("sample6_address").value = addr;
						// 커서를 상세주소 필드로 이동한다.
						document.getElementById("sample6_detailAddress")
								.focus();
					}
				}).open();
	}
</script>
</html>