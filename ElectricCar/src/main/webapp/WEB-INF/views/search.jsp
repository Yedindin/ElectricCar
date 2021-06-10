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
					<h4 class="text-white">나만의 전기차 찾기</h4>
                   	<h6 class="text-white-50 mx-auto mt-2">항목별로 원하는 조건을 선택하세요.</h6>
               	</div>             	
            </div>
        </section>
        <!-- Contact-->
        <section class="condition-section bg-black">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 mb-3 mb-md-0">
                        <div class="card py-4 h-100" style = "border-radius: 2rem;">
                            <div class="card-body text-center">
                                <i class="fas fa-building text-primary mb-2"></i>
                                <h4 class="text-uppercase m-0 btn-title">브랜드명</h4>
                                <div class="btn-group">
									  <button class="btn btn-secondary btn-lg dropdown-toggle" style = "background-color: rgba(0, 0, 0, 0.5) !important;" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
									    브랜드를 선택하세요
									  </button>
									  <div class="dropdown-menu">
										   <c:forEach items="${brand}" var="brand" varStatus="status">
									    	<a class="dropdown-item" href="#">${brand.brand_name}</a>
									    </c:forEach>							
									  </div>
								</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mb-3 mb-md-0">
                        <div class="card py-4 h-100" style = "border-radius: 2rem;">
                            <div class="card-body text-center">
                                <i class="fas fa-dollar-sign text-primary mb-2"></i>
                                <h4 class="text-uppercase m-0 btn-title">가격</h4>
                                <div class="btn-group">
									  <button class="btn btn-secondary btn-lg dropdown-toggle" style = "background-color: rgba(0, 0, 0, 0.5) !important;" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
									    가격대를 입력하세요
									  </button>
									  <div class="dropdown-menu">
										    <a class="dropdown-item" href="#">0 ~ 1000</a>
										    <a class="dropdown-item" href="#">1000 ~ 2000</a>
										    <a class="dropdown-item" href="#">2000 ~ 3000</a>
										    <a class="dropdown-item" href="#">3000 ~ 4000</a>
										    <a class="dropdown-item" href="#">4000 ~ 5000</a>
										    <a class="dropdown-item" href="#">5000 ~ 6000</a>
										    <a class="dropdown-item" href="#">6000 ~ 7000</a>
										    <a class="dropdown-item" href="#">7000 ~ 8000</a>
										 	<a class="dropdown-item" href="#">8000 ~ 9000</a>
										 	<a class="dropdown-item" href="#">9000 ~ 10000</a>
										 	<a class="dropdown-item" href="#">1억 이상</a>						
									  </div>
								</div>                                
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mb-3 mb-md-0">
                        <div class="card py-4 h-100" style = "border-radius: 2rem;">
                            <div class="card-body text-center">
                                <i class="fas fa-users text-primary mb-2"></i>
                                <h4 class="text-uppercase m-0 btn-title">인승</h4>
                                <div class="btn-group">
									  <button class="btn btn-secondary btn-lg dropdown-toggle" style = "background-color: rgba(0, 0, 0, 0.5) !important;" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
									    인승을 선택하세요
									  </button>
									  <div class="dropdown-menu">
										    <a class="dropdown-item" href="#">1인승</a>
										    <a class="dropdown-item" href="#">2인승</a>
										    <a class="dropdown-item" href="#">3인승</a>
										    <a class="dropdown-item" href="#">4인승</a>							
										    <a class="dropdown-item" href="#">5인승</a>							
										    <a class="dropdown-item" href="#">6인승</a>							
										    <a class="dropdown-item" href="#">7인승</a>		
										    <a class="dropdown-item" href="#">8인승</a>																	    							
										    <a class="dropdown-item" href="#">9인승</a>																	    																	    															    							
									  </div>
								</div> 
<!--                                 <hr class="my-4" />								 
 -->                            </div>
                        </div>
                    </div>
                </div>
                <div class="row" style = "padding-top: 20px;">
                    <div class="col-md-4 mb-3 mb-md-0">
                        <div class="card py-4 h-100" style = "border-radius: 2rem;">
                            <div class="card-body text-center">
                                <i class="fas fa-wallet text-primary mb-2"></i>
                                <h4 class="text-uppercase m-0 btn-title">보조금 지원 여부</h4>
                                <div class="btn-group">
									  <button class="btn btn-secondary btn-lg dropdown-toggle" 
									  			style = "background-color: rgba(0, 0, 0, 0.5) !important;" 
									  			type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
									  지원 여부를 선택하세요.								    
									  </button>
									  <div class="dropdown-menu">
										    <a class="dropdown-item" href="#">지원 가능</a>
										    <a class="dropdown-item" href="#">상관 없음</a>	
									  </div>
								</div>                                
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mb-3 mb-md-0">
                        <div class="card py-4 h-100" style = "border-radius: 2rem;">
                            <div class="card-body text-center">
                                <i class="fas fa-road text-primary mb-2"></i>
                                <h4 class="text-uppercase m-0 btn-title">최대 주행 거리</h4>
                                <div class="btn-group">
									  <button class="btn btn-secondary btn-lg dropdown-toggle" 
									  			style = "background-color: rgba(0, 0, 0, 0.5) !important;" 
									  			type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
									  최대 주행 거리를 선택하세요							    
									  </button>
									  <div class="dropdown-menu">
									        <a class="dropdown-item" href="#"> 고려안함 </a>
										    <a class="dropdown-item" href="#">100 ~ 200</a>
										    <a class="dropdown-item" href="#">200 ~ 300</a>
										    <a class="dropdown-item" href="#">300 ~ 400</a>	
										    <a class="dropdown-item" href="#">400 ~ 500</a>	
										    <a class="dropdown-item" href="#">500 ~ 600</a>	
										    <a class="dropdown-item" href="#">600 ~ 700</a>
										    <a class="dropdown-item" href="#">700 이상</a>
										    	
									  </div>
								</div>                                 
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mb-3 mb-md-0">
                        <div class="card py-4 h-100" style = "border-radius: 2rem;">
                            <div class="card-body text-center">
                                <i class="fas fa-map-marked-alt text-primary mb-2"></i>
                                <h4 class="text-uppercase m-0 btn-title">거주 지역</h4>
                                 <div class="btn-group">
									  <button class="btn btn-secondary btn-lg dropdown-toggle" 
									  			style = "background-color: rgba(0, 0, 0, 0.5) !important;" 
									  			type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
									  도/광역시							    
									  </button>
									  <div class="dropdown-menu">
										    <a class="dropdown-item" href="#">경상북도</a>
									  </div>									  
									  <button class="btn btn-secondary btn-lg dropdown-toggle" 
									  			style = "background-color: rgba(0, 0, 0, 0.5) !important;" 
									  			type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
									  시/구							    
									  </button>									  
									  <div class="dropdown-menu">
										    <a class="dropdown-item" href="#">포항시</a>
									  </div>
								</div>                                  
                            </div>
                        </div>
                    </div>
                </div>                    
                
                <div class="text-center" style = "padding-top: 5%;">
                	<a class="btn btn-primary js-scroll-trigger" onclick = "location.href='./result'">Pick your car NOW</a>
                </div>
            </div>
        </section>        
 
        <!-- Footer-->
       <footer class="footer bg-black small text-center text-white-50">
       <div class="container">
      	 Copyright &copy; Pick Car Chu ~ &hearts; 2021-1 Database System Term Project <br>정보문 홍승훈 김예진 양지후
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
