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
            	
                <a class="navbar-brand js-scroll-trigger" href="#page-top">Start Bootstrap</a>
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
										    <a class="dropdown-item" href="#">BMW</a>
										    <a class="dropdown-item" href="#">HYUNDAI</a>
										    <a class="dropdown-item" href="#">KIA</a>							
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
										    <a class="dropdown-item" href="#">BMW</a>
										    <a class="dropdown-item" href="#">HYUNDAI</a>
										    <a class="dropdown-item" href="#">KIA</a>							
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
										    <a class="dropdown-item" href="#">100</a>
										    <a class="dropdown-item" href="#">200</a>	
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
                	<a class="btn btn-primary js-scroll-trigger" href="#about">Pick your car NOW</a>
                </div>
            </div>
        </section>        
 
        <!-- About-->
        <section class="about-section text-center" id="about">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 mx-auto">
                        <h2 class="text-white mb-4">Built with Bootstrap 4</h2>
                        <p class="text-white-50">
                            Grayscale is a free Bootstrap theme created by Start Bootstrap. It can be yours right now, simply download the template on
                            <a href="https://startbootstrap.com/theme/grayscale/">the preview page</a>
                            . The theme is open source, and you can use it for any purpose, personal or commercial.
                        </p>
                    </div>
                </div>

         
            </div>
        </section>
        <!-- Projects-->
        <section class="projects-section bg-light" id="projects">
            <div class="container">
                <!-- Featured Project Row-->
                <div class="row align-items-center no-gutters mb-4 mb-lg-5">
                    <div class="col-xl-8 col-lg-7"><img class="img-fluid mb-3 mb-lg-0" src="./resources/assets/img/bg-masthead.jpg" alt="..." /></div>
                    <div class="col-xl-4 col-lg-5">
                        <div class="featured-text text-center text-lg-left">
                            <h4>Shoreline</h4>
                            <p class="text-black-50 mb-0">Grayscale is open source and MIT licensed. This means you can use it for any project - even commercial projects! Download it, customize it, and publish your website!</p>
                        </div>
                    </div>
                </div>
                <!-- Project One Row-->
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
                <!-- Project Two Row-->
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
        <!-- Signup-->
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
        <!-- Contact-->
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
        <!-- Footer-->
        <footer class="footer bg-black small text-center text-white-50"><div class="container">Copyright &copy; Your Website 2021</div></footer>
        <!-- Bootstrap core JS-->
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Third party plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/animejs/3.2.1/anime.min.js"></script>
        <!-- Core theme JS-->
        <script src="./resources/js/scripts.js"></script>
    </body>
</html>
