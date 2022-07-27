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
  <link href="https://fonts.googleapis.com/css2?family=EB+Garamond:wght@400;500&family=Inter:wght@400;500&family=Playfair+Display:ital,wght@0,400;0,700;1,400;1,700&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="resources/assets//vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="resources/assets//vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="resources/assets//vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link href="resources/assets//vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="resources/assets//vendor/aos/aos.css" rel="stylesheet">

  <!-- Template Main CSS Files -->
  <link href="resources/assets//css/variables.css" rel="stylesheet">
  <link href="resources/assets//css/main.css" rel="stylesheet">
<style>
h1,h2,h3,h4,h5,p{
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

<body>
<%@ include file="Header.jsp"%>

  <main>
    <div class="container">

      <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

              <!-- End Logo -->

              <div class="card mb-3">

                <div class="card-body">

                  <div class="pt-4 pb-2">
                    <h5 class="card-title text-center pb-0 fs-4">Login</h5>
                    
                  </div>

                  <form class="row g-3 needs-validation" action="mLogin" method="post" >

                    <div class="col-12">
                      <label for="yourUsername" class="form-label">아이디</label>
                      <div class="input-group has-validation">
                        <!-- <span class="input-group-text" id="inputGroupPrepend">@</span> -->
                        <input type="text" name="mId" class="form-control" id="yourUsername" required>
                        <div class="invalid-feedback">Please enter your username.</div>
                      </div>
                    </div>

                    <div class="col-12">
                      <label for="yourPassword" class="form-label">비밀번호</label>
                      <input type="password" name="mPw" class="form-control" id="yourPassword" required>
                      <div class="invalid-feedback">Please enter your password!</div>
                    </div>

                  
                    <div class="col-12">
                      <button class="btn btn-primary w-100" type="submit">Login</button>
                    </div>
                    
                  </form>

                </div>
              </div>

              
            </div>
          </div>
        </div>

      </section>

    </div>
  </main>

	<%@ include file="Footer.jsp"%>
</body>

</html>