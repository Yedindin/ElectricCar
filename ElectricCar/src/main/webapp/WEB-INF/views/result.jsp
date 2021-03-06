<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page session="false" %>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>pickCar</title>
        <link rel="icon" type="image/x-icon" href="./resources/assets/img/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="./resources/css/styles.css" rel="stylesheet" />
    </head>
    <body id="page-top" class="bg-black">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" onclick = "location.href='./'"><bold>Pick Car</bold></a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" onclick = "location.href='./'">Home</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" onclick = "location.href='./search'">나만의 전기차</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" onclick = "location.href='./recomInfo'">추천 정보</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" onclick = "location.href='./app'">추천 어플</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" onclick = "location.href='./charger'">내 주변 충전소</a></li>    
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Masthead-->
        <section class="header-section bg-black">
            <div class="container">
                <div>
					<h4 class="text-white">나만의 전기차</h4>
                   	<h6 class="text-white-50 mx-auto mt-2">조건을 만족하는 전기차 목록입니다. 추천 결과를 확인하세요.</h6>
               	</div>             	
            </div>
        </section>
        <!-- Result Card -->
		<div id="result_car">
			<%@ include file="./ajaxContent/resultContent.jsp"%> 
		</div>      
        
        <!-- Footer-->
       <footer class="footer bg-black small text-center text-white-50">
       <div class="container">
      	 Copyright &copy; Pick Car Chu ~ &hearts; <br>정보문 홍승훈 김예진 양지후
       </div>
       </footer>
       <!-- Bootstrap core JS-->
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Third party plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/animejs/3.2.1/anime.min.js"></script>
        <!-- Core theme JS-->
        <script src="./resources/js/scripts.js"></script>
    </body>
</html>