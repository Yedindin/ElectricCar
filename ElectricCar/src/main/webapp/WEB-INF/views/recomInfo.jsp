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
    <body id="page-top">
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
					<h4 class="text-white">추천 정보</h4>
                   	<h6 class="text-white-50 mx-auto mt-2">좋은 정보들을 선별하여 추천합니다. 전기차를 구매하실 때 참고하세요 <br>제목을 클릭하면 상세 페이지로 넘어갑니다!</h6>
               	</div>             	
            </div>
        </section>
        <!-- Contact-->
        <section class="condition-section bg-black" >
            <div class="container bg-black" style='padding:5rem 0;'>
			               		<table class="table text-white bg-black" >
								  	<tr>	
										<th scope='col' style = "display: inline-block; width: 20%;">카테고리</th>
				               			<th scope='col' style = "display: inline-block; width: 20%;">제목</th>
				               			<th scope='col' style = "display: inline-block; width: 50%;">내용</th>
				               			<th scope='col' style = "display: inline-block; width: 10%;">등록일</th>
			               			</tr>
 								<c:forEach items="${recomInfo}" var="recomInfo" varStatus="status">
								    <tr>
								      <td style = "display: inline-block; width: 20%;">${recomInfo.category_name}</td>
								      <td style = "display: inline-block; width: 20%;"><a href="${recomInfo.url}">${recomInfo.title}</a></td>
								      <td style = "display: inline-block; width: 50%;">${recomInfo.content}</td>
								      <td style = "display: inline-block; width: 10%;">${recomInfo.regdate}</td>
								    </tr>			               					               		
			               		</c:forEach>
<!-- 			               			
								    <tr>
								      <td>사용후기</td><td><a href="#about">누구누구의 리뷰</a></td>
								      <td>어어떤어떤어어떤 내용입니다.</td><td>2021-06-04</td>
								    </tr>
								    <tr>
								      <td>전문가리뷰</td><td>전문가 누구누구의 리뷰</td>
								      <td>어어떤어떤어어떤 내용입니다.</td><td>2021-06-05</td>
								    </tr>
								    <tr>
								      <td>기타</td><td>무슨무슨차에 관련된 기사</td>
								      <td>어어떤어떤어어떤 내용입니다.</td><td>2021-06-06</td>
								    </tr> -->
								</table>
		                	</div>
		              	
        </section>        

		<footer class="footer bg-black small text-center text-white-50"><div class="container">
        
        Copyright &copy; Pick Car Chu ~ &hearts; 2021-1 Database System Term Project <br>정보문 홍승훈 김예진 양지후</div></footer>
        <!-- Bootstrap core JS-->
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Third party plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/animejs/3.2.1/anime.min.js"></script>
        <!-- Core theme JS-->
        <script src="./resources/js/scripts.js"></script>
    </body>
</html>
