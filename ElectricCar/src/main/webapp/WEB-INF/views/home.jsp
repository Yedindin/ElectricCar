<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Pick Car Chu</title>
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
                <a class="navbar-brand js-scroll-trigger" href="#page-top"><bold>Pick Car</bold></a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#about">About</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#projects">Projects</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#signup">Contact</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Masthead-->
        <header class="masthead">
        	<div class="container h-75" style="width: 50% !important; float : left;"></div>
            <div class="container d-flex h-75 align-items-center" style=" width: 50% !important;float : left;">
                <div class="mx-auto text-right">
                    <a class="btn btn-primary js-scroll-trigger" href="#about">Pick your car NOW</a>
                    <div style="text-align: left; margin : 10px;">
	                    <a class="js-scroll-trigger" style="margin-top:10px;" href="#about"> &gt; GO</a><br>
	                    <a class="js-scroll-trigger" style="margin-top:10px;" href="#about"> &gt; 구매 가이드 보기</a>
                    </div>
                </div>
            </div>
        </header>
        <section class="about-section text-center" id="about">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 mx-auto">
                        <h2 class="text-white mb-4">Pick Car Chu~&hearts; is...</h2>
                        <p class="text-white-50" style="font-size: 20px;">
                           This application aims to promote electric vehicle purchases by integrating and providing vast and scattered information in a situation where the demand and supply of electric vehicles increases, and recommending electric vehicles that satisfy all the conditions desired by the user in particular.
                        </p>
                    </div>
                </div>
            </div>
        </section>
        <!-- About-->
        <section class="about-section text-center" id="about">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 mx-auto">
                        <h2 class="text-white mb-4">구매 가이드</h2>
                           <div class="container">
				                <div class="row mb-4">
				                    <div class="col-md-4 mb-4 mb-md-1 ">
				                        <div class="card py-4 h-100" style="border-radius: 3.25rem;">
				                            <div class="card-body text-center" style="padding: 2rem;">
				                                <i class="fas fa-search text-primary mb-2"></i>
				                                <h5 class="text-uppercase m-0">1.원하는 모델 찾기</h5>
				                                <hr class="my-4" />
				                                <div class="small text-black-50">나한테 딱 맞는 <br>전기차는 어떤 차일까?<br><a href="#!">&gt; 찾으러 가기</a></div>
				 
				                            </div>
				                        </div>
				                    </div>
				                    <div class="col-md-4 mb-4 mb-md-1 ">
				                        <div class="card py-4 h-100" style="border-radius: 3.25rem;">
				                            <div class="card-body text-center" style="padding: 2rem;">
				                                <i class="far fa-check-circle text-primary mb-2"></i>
				                                <h5 class="text-uppercase m-0">2.맞춤 보조금 확인</h5>
				                                <hr class="my-4" />
				                                <div class="small text-black-50">나만의 전기차를 찾은 후 <br>내 지역에 맞는 보조금을 <br>확인하세요!</div>
				                            </div>
				                        </div>
				                    </div>
				                    
				                    <div class="col-md-4 mb-4 mb-md-1">
				                        <div class="card py-4 h-100" style="border-radius: 3.25rem;">
				                            <div class="card-body text-center" style="padding: 2rem;">
				                                <i class="fas fa-charging-station text-primary mb-2"></i>
				                                <h5 class="text-uppercase m-0">3.내주변 충전소 확인</h5>
				                                <hr class="my-4" />
				                                <div class="small text-black-50">내 주변에는 <br>충전소가 어디 있을까?<a href="#!"><br>&gt; 찾아보기</a></div>
				                            </div>
				                        </div>
				                    </div>
				                    
				                </div>
				                <div class="row mb-4">
					                <div class="col-md-4 mb-4 mb-md-1">
					                        <div class="card py-4 h-100" style="border-radius: 3.25rem;">
					                            <div class="card-body text-center" style="padding: 2rem;">
					                                <i class="far fa-handshake text-primary mb-2"></i>
					                                <h5 class="text-uppercase m-0">4. 차량 계약</h5>
					                                <hr class="my-4" />
					                                <div class="small text-black-50">동일 개인에게 2년(의무 운행기간) 내 보조금 중복 지원 제한</div>
					                            </div>
					                        </div>
						                </div>
					                    <div class="col-md-4 mb-4 mb-md-1 ">
					                        <div class="card py-4 h-100" style="border-radius: 3.25rem;">
					                            <div class="card-body text-center"style="padding: 2rem;">
					                                <i class="far fa-file-alt text-primary mb-2"></i>
					                                <h5 class="text-uppercase m-0">5. 공모 신청</h5>
					                                <hr class="my-4" />
					                                <div class="small text-black-50">-지자체 공모 서류 작성 <br>-공모 서류 지자체 접수 <br>-공모 대상자 선정 확인</div>
					                            </div>
					                        </div>
					                    </div>
					                    <div class="col-md-4 mb-4 mb-md-1 ">
					                        <div class="card py-4 h-100" style="border-radius: 3.25rem;">
					                            <div class="card-body text-center" style="padding: 2rem;">
					                                <i class="fas fa-car text-primary mb-2"></i>
					                                <h6 class="text-uppercase m-0" style = "padding: -30px; margin:-50px;">6.차량 출고 및 <br>충전카드 발급</h6>
					                                <hr class="my-4" />
					                                <div class="small text-black-50">-출고 10일 전 공모 대상자 <br>여부, 보조금 재확인 <br>-이상 없을 시 출고 후 보조금 신청 및 후불 금액 상계 처리</div>
					                            </div>
					                        </div>
					                    </div>
					                    
				                </div>
                    		</div>
                	</div>
                </div>
            </div>
        </section>
        <!-- Projects-->
 <!--        <section class="projects-section bg-light" id="projects">
            <div class="container">
                Featured Project Row
                <div class="row align-items-center no-gutters mb-4 mb-lg-5">
                    <div class="col-xl-8 col-lg-7"><img class="img-fluid mb-3 mb-lg-0" src="./resources/assets/img/bg-masthead.jpg" alt="..." /></div>
                    <div class="col-xl-4 col-lg-5">
                        <div class="featured-text text-center text-lg-left">
                            <h4>Shoreline</h4>
                            <p class="text-black-50 mb-0">Grayscale is open source and MIT licensed. This means you can use it for any project - even commercial projects! Download it, customize it, and publish your website!</p>
                        </div>
                    </div>
                </div>
                Project One Row
                <div class="row justify-content-center no-gutters mb-5 mb-lg-0">
                    <div class="col-lg-6"><img class="img-fluid" src="./resources/assets/img/demo-image-01.jpg" alt="..." /></div>
                    <div class="col-lg-6">
                        <div class="bg-black text-center h-100 project">
                            <div class="d-flex h-100">
                                <div class="project-text w-100 my-auto text-center text-lg-left">
                                    <h4 class="text-white">Misty</h4>
                                    <p class="mb-0 text-white-50">An example of where you can put an image of a project, or anything else, along with a description.</p>
                                    <hr class="d-none d-lg-block mb-0 ml-0" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                Project Two Row
                <div class="row justify-content-center no-gutters">
                    <div class="col-lg-6"><img class="img-fluid" src="./resources/assets/img/demo-image-02.jpg" alt="..." /></div>
                    <div class="col-lg-6 order-lg-first">
                        <div class="bg-black text-center h-100 project">
                            <div class="d-flex h-100">
                                <div class="project-text w-100 my-auto text-center text-lg-right">
                                    <h4 class="text-white">Mountains</h4>
                                    <p class="mb-0 text-white-50">Another example of a project with its respective description. These sections work well responsively as well, try this theme on a small screen!</p>
                                    <hr class="d-none d-lg-block mb-0 mr-0" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        Signup
        <section class="signup-section" id="signup">
            <div class="container">
                <div class="row">
                    <div class="col-md-10 col-lg-8 mx-auto text-center">
                        <i class="far fa-paper-plane fa-2x mb-2 text-white"></i>
                        <h2 class="text-white mb-5">Subscribe to receive updates!</h2>
                        <form class="form-inline d-flex">
                            <input class="form-control flex-fill mr-0 mr-sm-2 mb-3 mb-sm-0" id="inputEmail" type="email" placeholder="Enter email address..." />
                            <button class="btn btn-primary mx-auto" type="submit">Subscribe</button>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        Contact
        <section class="contact-section bg-black">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 mb-3 mb-md-0">
                        <div class="card py-4 h-100">
                            <div class="card-body text-center">
                                <i class="fas fa-map-marked-alt text-primary mb-2"></i>
                                <h4 class="text-uppercase m-0">Address</h4>
                                <hr class="my-4" />
                                <div class="small text-black-50">4923 Market Street, Orlando FL</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mb-3 mb-md-0">
                        <div class="card py-4 h-100">
                            <div class="card-body text-center">
                                <i class="fas fa-envelope text-primary mb-2"></i>
                                <h4 class="text-uppercase m-0">Email</h4>
                                <hr class="my-4" />
                                <div class="small text-black-50"><a href="#!">hello@yourdomain.com</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mb-3 mb-md-0">
                        <div class="card py-4 h-100">
                            <div class="card-body text-center">
                                <i class="fas fa-mobile-alt text-primary mb-2"></i>
                                <h4 class="text-uppercase m-0">Phone</h4>
                                <hr class="my-4" />
                                <div class="small text-black-50">+1 (555) 902-8832</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="social d-flex justify-content-center">
                    <a class="mx-2" href="#!"><i class="fab fa-twitter"></i></a>
                    <a class="mx-2" href="#!"><i class="fab fa-facebook-f"></i></a>
                    <a class="mx-2" href="#!"><i class="fab fa-github"></i></a>
                </div>
            </div>
        </section>
      -->   <!-- Footer-->
        <footer class="footer bg-black small text-center text-white-50"><div class="container">
        
        <span>Copyright &copy; Pick Car Chu ~ &hearts; 2021-1 Database System Term Project <br>정보문 홍승훈 김예진 양지후</div></footer>
        <!-- Bootstrap core JS-->
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Third party plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/animejs/3.2.1/anime.min.js"></script>
        <!-- Core theme JS-->
        <script src="./resources/js/scripts.js"></script>
    </body>
</html>
