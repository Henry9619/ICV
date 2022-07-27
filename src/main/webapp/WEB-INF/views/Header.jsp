<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- ======= Header ======= -->
<header id="header" class="header d-flex align-items-center fixed-top">
	<div
		class="container-fluid container-xl d-flex align-items-center justify-content-between">

		<a href="index" class="logo d-flex align-items-center"> <!-- Uncomment the line below if you also wish to use an image logo -->
			<!-- <img src="resources/assets//img/logo.png" alt=""> -->
			<img
			src="resources/assets//img/icv.png" ><h1>ICV</h1>
		</a>

		<nav id="navbar" class="navbar">


			<c:choose>
				<c:when test="${login.mId eq 'admin'}">
					<ul>

						<li><a href="movInfo"><h5>영화</h5></a></li>
						<li><a href="thList"><h5>극장</h5></a></li>
						<li><a href="resPage"><h5>예매</h5></a></li>
						<li><a href="movRegForm"><h5>영화등록</h5></a></li>
						<li><a href="schaduleForm"><h5>상영시간등록</h5></a></li>
						<li><a href="SchaduleList"><h5>상영시간리스트</h5></a></li>
					</ul>
				</c:when>
				<c:otherwise>

					<ul>
						<li><a href="movInfo"><h5>영화</h5></a></li>
						<li><a href="thList"><h5>극장</h5></a></li>
						<li><a href="resPage"><h5>예매</h5></a></li>

					</ul>

				</c:otherwise>

			</c:choose>
		</nav>
		<!-- .navbar -->


		<div class="position-relative">
			<c:choose>
				<c:when test="${login.mId ne null}">
					<img src="resources/profile/${login.mProfileName}" width="50px">${login.mId} 
					<button type="button" class="btn btn-outline-danger"
						onclick="location.href='mLogout'" style="margin-right: 10px">로그아웃</button>
					<button type="button" class="btn btn-outline-primary"
						onclick="location.href='myPageForm'" style="margin-right: 10px">마이페이지</button>

					
				</c:when>

				<c:otherwise>

					<button type="button" class="btn btn-outline-success"
						onclick="location.href='mLoginForm'" style="margin-right: 10px">로그인</button>
					<button type="button" class="btn btn-outline-primary"
						onclick="location.href='mJoinForm'" style="margin-right: 10px">회원가입</button>

					
				</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test="${login.mId ne null}">

				</c:when>
			</c:choose>
			<a href="#" class="mx-2 js-search-open"><span class="bi-search"></span></a>
			<i class="bi mobile-nav-toggle bi-list"></i>
			<div class="search-form-wrap js-search-form-wrap">
			<form action="movSearch" class="search-form" method="POST">
				<span class="icon bi-search"></span> 
				<input type="text" name="movName" placeholder="검색할 제목을 입력해주세요." class="form-control">
				<button class="btn js-search-close">
					<span class="bi-x"></span>
				</button>
				<input type="submit" class="form-control" value="검색">
			</form>

		</div>
		</div>

		<!-- ======= Search Form ======= -->
		
		<!-- End Search Form -->

	</div>

	

</header>
<!-- End Header -->