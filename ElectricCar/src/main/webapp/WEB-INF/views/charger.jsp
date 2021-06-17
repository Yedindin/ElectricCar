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
					<h4 class="text-white">내 주변 충전소 찾기</h4>
                   	<h6 class="text-white-50 mx-auto mt-2">거주지 정보를 입력하세요.</h6>
               	</div>             	
            </div>
        </section>
        <!-- Contact-->
        <section class="condition-section bg-black">
            <div class="container">
	          	<div class="card w-100" style = "border-radius: 2rem;">
	          		<div class = "row">
		            	<div class="col-3 card-body" style = "display: flex; flex-direction: column; justify-content: space-around; padding-left: 0.3rem;">
	                          	<h6 class="text-black-50 text-center">거주지 정보를 입력하세요.</h6>
	                    </div>
		             	<div class = "col-5 card-body" style = "display: flex; flex-direction: column; justify-content: space-around">
							<div class="input-group mb-3">
							  <div class="input-group-prepend">
							    <label class="input-group-text" for="inputGroupSelect01">도/광역시</label>
							  </div>
							  <select class="custom-select" id = "input_special_do_id" onchange = "findSigoongoo_id_test()">
							    <option selected>Choose...</option>
							  <c:forEach items="${address}" var="address">							    
								<option value="${address.special_do_id}">${address.special_do_name}</option>
							  </c:forEach>								
							  </select>
							  
							</div>
							<p id="demo"></p>
							<div id="sigoongoo">
								<%@ include file="./ajaxContent/sigoongooContent.jsp"%> 
							</div>
							
<%-- 							<div class="input-group mb-3">
							  <div class="input-group-prepend">
							    <label class="input-group-text" for="inputGroupSelect01">시/구</label>
							  </div>
							  <select class="custom-select" id="inputGroupSelect01">
							    <option selected>Choose...</option>
							  <c:forEach items="${sigoongoo}" var="sigoongoo">							    
								<option value="${sigoongoo.sigoongoo_id}">${sigoongoo.sigoongoo_name}</option>
							  </c:forEach>							  								
							  </select>
							</div >	 --%>						
<%-- 	                        <div class="btn-group">
							<div id="selectHtml" class="button col s4 btn btn-secondary btn-lg dropdown-toggle" 
							style = "background-color: rgba(0, 0, 0, 0.5) !important; margin: 0.3rem;">
								<select id="siteName" required>
									<optgroup label="코딩사이트 선택">
										<c:forEach items="${address}" var="address">
											<option value="${address.sigoongoo_id}">${address.special_do_name}</option>
										</c:forEach>
									</optgroup>
									<optgroup label="링크로 입력">
										<option value="0">링크로 입력</option>
									</optgroup>
								</select>
								<label>코딩사이트 선택</label> 
							</div>	 --%>	                        	
<%-- 								  <button class="btn btn-secondary btn-lg dropdown-toggle" 
								  			style = "background-color: rgba(0, 0, 0, 0.5) !important; margin: 0.3rem;" 
								  			type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								  도/광역시							    
								  </button>
								  <div class="dropdown-menu">
								  		<c:forEach items="${address}" var="address" varStatus="status">
									    	<a class="dropdown-item" href="#">${address.special_do_name }</a>
									    </c:forEach>
								  </div>									  
								  <button class="btn btn-secondary btn-lg dropdown-toggle" 
								  			style = "background-color: rgba(0, 0, 0, 0.5) !important; margin: 0.3rem;" 
								  			type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								  시/구							    
								  </button>									  
								  <div class="dropdown-menu">
									    <a class="dropdown-item" href="#">포항시</a>
									    <a class="dropdown-item" href="#">포항시</a>
									    
								  </div> --%>
								  
<!-- 							</div> 
 -->						 
						</div> 				
					</div>
		            <div class="btn-group">
                    	  <a id = "findCharger" class="btn btn-primary js-scroll-trigger" style = "border-radius: 1.5rem;"
                    	  onclick = "findCharger_id()" >찾아보기</a>
					</div>		
				</div>			
            </div>
        </section>  
         <div id="charger">
			<%@ include file="./ajaxContent/chargerContent.jsp"%> 
		</div>
 
        <!-- Footer-->
       <footer class="footer bg-black small text-center text-white-50">
       <div class="container">
      	 Copyright &copy; Pick Car Chu ~ &hearts; 2021-1 Database System Term Project <br>정보문 홍승훈 김예진 양지후
       </div>
       </footer>
       
       <!-- Bootstrap core JS-->
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
        <!--   Third party plugin JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/animejs/3.2.1/anime.min.js"></script>
        <!-- Core theme JS -->
        <script src="./resources/js/scripts.js"></script>
    </body>
    
</html>