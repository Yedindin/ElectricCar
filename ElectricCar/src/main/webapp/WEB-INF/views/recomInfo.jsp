<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
				<h6 class="text-white-50 mx-auto mt-2">
					좋은 정보들을 선별하여 추천합니다. 전기차를 구매하실 때 참고하세요 <br>제목을 클릭하면 상세 페이지로
					넘어갑니다!
				</h6>
			</div>
		</div>
	</section>
	<!-- Contact-->
	<form>
		<section class="condition-section bg-black">
			<div class="container">
				<div class="card w-100" style="border-radius: 2rem;">
					<div class="row">
						<div class=" card-body"
							style="display: flex; flex-direction: column; justify-content: space-around; padding: 20px 40px;">
							<div class="col-6 card-body"
								style="display: flex; flex-direction: column; justify-content: space-around; text-align: left">
								<h5 class="text-black-50 text-left">추천 정보 글 작성하기</h5>
							</div>
							<div class=" card-body"
								style="display: flex; margin-left: 0.3rem; padding: 0.5rem 0.7rem;">
								<div class="input-group-prepend">
									<label class="input-group-text" for="inputGroupSelect01">카테고리</label>
								</div>
								<select class="custom-select col-2" id="category_id">
									<option selected>Choose...</option>
									<c:forEach items="${readCategory}" var="readCategory">
										<option value="${readCategory.category_id}">${readCategory.category_name}</option>
									</c:forEach>
								</select>
								<div class="input-group-prepend" style="margin-left: 1.0rem;">
									<label class="input-group-text" for="inputGroupSelect01">제목</label>
								</div>
								<input id="title" name="title" type="text"
									class="validate col-4" style="border: 1px solid #ced4da;"
									placeholder="글의 제목을 입력해 주세요." required />
								<div class="input-group-prepend" style="margin-left: 1.0rem;">
									<label class="input-group-text" for="inputGroupSelect01">P.W</label>
								</div>
								<input id="password" name="password" type="password"
									class="validate col-auto"
									style="padding: 0px 0px; border: 1px solid #ced4da;"
									placeholder=" 비밀번호를 입력해 주세요." required />
							</div>
							<div class="card-body"
								style="display: flex; padding: 0.5rem 1rem;">
								<div class="input-group-prepend">
									<label class="input-group-text" for="inputGroupSelect01">URL</label>
								</div>
								<input id="url" name="url" type="text"
									class="validate col" style="border: 1px solid #ced4da;"
									placeholder="해당 정보의 출처 URL을 입력해 주세요." required />
							</div>
							<div class="card-body"
								style="display: flex; padding: 0.5rem 1rem;">
								<div class="input-group-prepend">
									<label class="input-group-text" for="inputGroupSelect01">내용</label>
								</div>
								<textarea id="content" class="col"
									style="resize: vertical; min-height: 39px; border: 1px solid #ced4da;"
									placeholder="내용을 작성해 주세요." required></textarea>
							</div>
							<div class="card-body"
								style="text-align: right; padding: 0.5rem 1rem;">
								<div align="right" class="btn-group">
									<a id="findCharger" class="btn btn-primary js-scroll-trigger"
										style="border-radius: 1.5rem; padding: 15px;"
										onclick="findCharger_id()">글 작성하기</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</form>
	<section class="condition-section bg-black" >
            <div class="container bg-black" style='padding:5rem 0;'>
			               		<table class="table text-white bg-black" >
								  	<tr>
								  		<th scope='col' style = "display: inline-block; width: 5%;">No.</th>	
										<th scope='col' style = "display: inline-block; width: 10%;">카테고리</th>
				               			<th scope='col' style = "display: inline-block; width: 22%;">제목</th>
				               			<th scope='col' style = "display: inline-block; width: 50%;">내용</th>
				               			<th scope='col' style = "display: inline-block; width: 13%;">등록일</th>
			               			</tr>
 								<c:forEach items="${recomInfo}" var="recomInfo" varStatus="status">
								<fmt:formatDate value="${recomInfo.regdate}" var="dateValue" pattern="yyyy-MM-dd"/>
								    <tr>
								      <td style = "display: inline-block; width: 5%;">${recomInfo.post_id}</td>
								      <td style = "display: inline-block; width: 10%;">${recomInfo.category_name}</td>
								      <td style = "display: inline-block; width: 22%;"><a href="${recomInfo.url}" target='_blank'>${recomInfo.title}</a></td>
								      <td style = "display: inline-block; width: 50%;">${recomInfo.content}</td>
								      <td style = "display: inline-block; width: 13%;">${dateValue}</td>
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
