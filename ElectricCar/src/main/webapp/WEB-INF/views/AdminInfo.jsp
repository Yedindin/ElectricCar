<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page session="false"%>


<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>pickCar</title>
<link rel="icon" type="image/x-icon"
	href="./resources/assets/img/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Varela+Round"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="./resources/css/styles.css" rel="stylesheet" />
</head>
<body id="page-top">
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-light fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand js-scroll-trigger"
				onclick="location.href='./'"><bold>Pick Car</bold></a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						onclick="location.href='./'">Home</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						onclick="location.href='./search'">나만의 전기차</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						onclick="location.href='./recomInfo'">추천 정보</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						onclick="location.href='./app'">추천 어플</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						onclick="location.href='./charger'">내 주변 충전소</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- Masthead-->
	<section class="header-section bg-black">
		<div class="container">
			<div>
				<h3 class="text-white">Creator Info.</h3>
				<h5 class="text-white-50 mx-auto mt-2">Pick Car Chu~&hearts; 를
					만든 SMART PEOPLE 에 대한 정보를 확인하세요.</h5>
			</div>
		</div>
	</section>
	<!-- Contact-->
	<section class="about-section text-center" id="about">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 mx-auto">
					<div class="container">
						<div class="row mb-6" style="margin-bottom: 20px;">
							<div class="col-md-6 mb-6 mb-md-1 ">
								<div class="card py-6 h-100" style="border-radius: 3.25rem;">
									<div class="card-body text-center" style="padding: 2rem;">
										<img src="./resources/assets/img/bomoon.jpg"
											style="border-radius: 70%; overflow: hidden; width: 200px; height: 200px; object-fit: cover; border: 1px solid #65a09d;">
										<h5 class="text-uppercase m-4">정보문</h5>
										<hr class="my-4" />
										<div class="medium text-black-50">
											한동대학교 16학번 <br>전산전자공학부 <br>Arise LAB <br> 토레이 RC<br>
											1997.10.21<br> 
											<br> <a href="https://github.com/neobomoon"
												target="_blank">GitHub 방문하기 &gt;</a>
										</div>

									</div>
								</div>
							</div>
							<div class="col-md-6 mb-6 mb-md-1 ">
								<div class="card py-6 h-100" style="border-radius: 3.25rem;">
									<div class="card-body text-center" style="padding: 2rem;">
										<img src="./resources/assets/img/seunghoon.jpg"
											style="border-radius: 70%; overflow: hidden; width: 200px; height: 200px; object-fit: cover; border: 1px solid #65a09d;">
										<h5 class="text-uppercase m-4">홍승훈</h5>
										<hr class="my-4" />
										<div class="medium text-black-50">
											한동대학교 16학번  <br>전산전자공학부 <br>MCNL<br> 카이퍼 RC<br>
											1997.03.03<br> 
											<br> <a href="https://github.com/Hunia777"
												target="_blank">GitHub 방문하기 &gt;</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row mb-6">
							<div class="col-md-6 mb-6 mb-md-1">
								<div class="card py-6 h-100" style="border-radius: 3.25rem;">
									<div class="card-body text-center" style="padding: 2rem;">
										<img src="./resources/assets/img/yejin.jpg"
											style="border-radius: 70%; overflow: hidden; width: 200px; height: 200px; object-fit: cover; border: 1px solid #65a09d;">
										<h5 class="text-uppercase m-4">김예진</h5>
										<hr class="my-4" />
										<div class="medium text-black-50">
											한동대학교 19학번 <br> 전산전자공학부 <br>자존감 LAB <br>손양원 RC<br>
											2000.04.13<br> <br> <a
												href="https://github.com/Yedindin" target="_blank">GitHub
												방문하기 &gt;</a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6 mb-6 mb-md-1 ">
								<div class="card py-6 h-100" style="border-radius: 3.25rem;">
									<div class="card-body text-center" style="padding: 2rem;">
										<img src="./resources/assets/img/jihoo.jpg"
											style="border-radius: 70%; overflow: hidden; width: 200px; height: 200px; object-fit: cover; border: 1px solid #65a09d;">
										<h5 class="text-uppercase m-4">양지후</h5>
										<hr class="my-4" />
										<div class="medium text-black-50">
											한동대학교 19학번 <br>전산전자공학부 <br> WALAB<br>장기려 RC <br>
											1999.04.29<br> 
											<br> <a href="https://github.com/JihuYang"
												target="_blank">GitHub 방문하기 &gt;</a>
										</div>
									</div>
								</div>
							</div>


						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Footer-->
	<footer class="footer bg-black small text-center text-white-50">
		<div class="container">
      	 Copyright &copy; Pick Car Chu ~ &hearts; <br>정보문 홍승훈 김예진 양지후
		</div>
	</footer>
	<!-- Bootstrap core JS-->
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Third party plugin JS-->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/animejs/3.2.1/anime.min.js"></script>
	<!-- Core theme JS-->
	<script src="./resources/js/scripts.js"></script>
</body>
</html>