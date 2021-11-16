<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	href="../../resources/assets/img/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js"
	crossorigin="anonymous"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Varela+Round"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="../../resources/css/styles.css" rel="stylesheet" />
</head>

<body id="page-top">
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-light fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand js-scroll-trigger"
				onclick="location.href='/eccar'"><bold>Pick Car</bold></a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						onclick="location.href='../../'">Home</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						onclick="location.href='../../search'">나만의 전기차</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						onclick="location.href='../../recomInfo'">추천 정보</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						onclick="location.href='../../app'">추천 어플</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						onclick="location.href='../../charger'">내 주변 충전소</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- Masthead-->
	<section class="header-section bg-black">
		<div class="container">
			<div>
				<h4 class="text-white">추천 정보 수정</h4>
				<h6 class="text-white-50 mx-auto mt-2">관리자를 위한 추천 정보 수정 페이지입니다.
				</h6>
			</div>
		</div>
	</section>
	<div id="edit" class="edit" >
		<form action="../editok" method="post">
		<input type="hidden" name="post_id" value="${post.post_id}"/>
			
			<section class="condition-section bg-black">
				<div class="container">
					<div class="card w-100" style="border-radius: 2rem;">
						<div class="row">
							<div class=" card-body"
								style="display: flex; flex-direction: column; justify-content: space-around; padding: 20px 40px;">
								<div class="col-6 card-body"
									style="display: flex; flex-direction: column; justify-content: space-around; text-align: left">
									<h5 class="text-black-50 text-left">추천 정보 글 수정하기</h5>
								</div>
								<div class=" card-body"
									style="display: flex; margin-left: 0.3rem; padding: 0.5rem 0.7rem;">
									<div class="input-group-prepend">
										<label class="input-group-text" for="inputGroupSelect01">카테고리</label>
									</div>
									<select class="custom-select col-2" name="category_id" id="category_id">
										<option value="${post.category_id }"selected>${post.category_name}</option>
										<c:forEach items="${readCategory}" var="readCategory">
											<option value="${readCategory.category_id}">${readCategory.category_name}</option>
										</c:forEach>
									</select>
									<div class="input-group-prepend" style="margin-left: 1.0rem;">
										<label class="input-group-text" for="inputGroupSelect01">제목</label>
									</div>
									<input id="title" name="title" type="text"
										class="validate col-4" value="${post.title}"
										style="border: 1px solid #ced4da;"
										placeholder="글의 제목을 입력해 주세요." required />
									
								</div>
								<div class="card-body"
									style="display: flex; padding: 0.5rem 1rem;">
									<div class="input-group-prepend">
										<label class="input-group-text" for="inputGroupSelect01">URL</label>
									</div>
									<input id="url" name="url" type="text" class="validate col"
										style="border: 1px solid #ced4da;" value="${post.url}"
										placeholder="해당 정보의 출처 URL을 입력해 주세요." required />
								</div>
								<div class="card-body"
									style="display: flex; padding: 0.5rem 1rem;">
									<div class="input-group-prepend">
										<label class="input-group-text" for="inputGroupSelect01">내용</label>
									</div>
									<textarea id="content" name="content" class="col"
										style="resize: vertical; min-height: 200px; border: 1px solid #ced4da;"
										placeholder="내용을 작성해 주세요." required>${post.content}</textarea>
								</div>
								<div class="card-body"
									style="text-align: right; padding: 0.5rem 1rem;">
									<div align="right" class="btn-group">
										<input type="submit" class="btn btn-primary js-scroll-trigger"
											style="border-radius: 1.5rem; padding: 15px;"
											value="글 수정하기"/>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</section>
		</form>
	</div>


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
	<script src="../../resources/js/scripts.js"></script>
</body>
</html>
