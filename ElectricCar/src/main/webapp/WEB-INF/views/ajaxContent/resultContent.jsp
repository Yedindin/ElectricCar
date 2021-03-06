<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="resultYN" value="${resultYN}" />

<section class="header-section bg-black"
	style="padding-bottom: 0; min-height: 100%;">
	<div class="container" style="padding-top: 1rem;">
		<div>
			<h4 class="text-white">나만의 전기차</h4>
			<c:choose>
				<c:when test="${ resultYN eq 0 }">
					<h6 class="text-white-50">
						<br> <br>조건을 만족하는 전기차가 없습니다.<br> <br>다른 조건으로
						다시 검색해보세요!
					</h6>
					<div style="padding: 7rem;"></div>
				</c:when>
				<c:otherwise>
					<h6 class="text-white-50 mx-auto mt-2">
						조건을 만족하는 전기차 목록입니다. 추천 결과를 확인하세요.<br>
					</h6>

					<div class="container" style="padding-top: 0.5rem; color: #65a09d;">
						<!-- <a id="btnTwitter" class="link-icon twitter" href="javascript:shareTwitter();">트위터</a>
					<a id="btnFacebook" class="link-icon facebook" href="javascript:shareFacebook();">페이스북</a>    
					<a id="btnKakao" class="link-icon kakao" href="javascript:sendLink();">카카오톡</a> 
					<a id="btnAlbum" class="link-icon album" onclick="PrintDiv($('#result_car'));">이미지로 저장</a> -->

						<i class="far fa-image"></i> <a id="btnAlbum"
							onclick='PrintDiv($("#page-top")[0]);'>이미지로 저장<br> <br></a>
						<h6 class="text-white-50 ">모델명을 클릭하면 더 자세히 알아볼 수 있습니다.</h6>

					</div>
				</c:otherwise>
			</c:choose>
		</div>
	</div>


</section>

<section class="condition-section bg-black" id="printResult">
	<div id="resultImg">
		<div class="container">


			<%-- 		<div class = row style="padding-top: 2rem; padding-bottom: 0.5rem; margin: 0; background-color: black">
		<c:choose>
			<c:when test="${ resultYN eq 0 }">
				<h6 class="text-white-50">조건을 만족하는 전기차가 없습니다.<br><br>다른 조건으로 다시 검색해보세요!</h6>
				<div style = "padding: 7rem;"></div>
			</c:when>
			<c:otherwise>
			</c:otherwise>		
		</c:choose>
		</div> --%>
			<c:forEach items="${result}" var="result" varStatus="status">
				<div
					style="padding-top: 1%; border-radius: 3rem; background-color: black;">
					<div class="card w-100"
						style="margin-top: 3%; border-radius: 2rem;">

						<div class="row" style="justify-content: center">

							<div class="col-3 card-img"
								style="display: flex; flex-direction: column; justify-content: space-around !important; padding-left: 0.3rem;">

								<img src="${result.picture}" alt="" />
							</div>
							<div class="col-3"
								style="display: flex; flex-direction: column; justify-content: space-around">
								<div class="btn-group">
									<button class="btn btn-secondary btn-lg \"
										style="background-color: rgba(0, 0, 0, 0.5) !important; color: white !important;"
										type="button" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false"
										onclick="location.href = '${result.homepage_url}'"
										formtarget="_blank">
										<p>[${result.brand_name}]</p>
										<h6>${result.car_name}(${result.model_name})</h6>
									</button>
								</div>
							</div>

							<div class="col-6">
								<div class="card-body text-center">
									<table class="table">
										<tbody>
											<c:set var="type" value="${result.car_type}" />
											<tr>
												<td>가격</td>
												<td>${result.price}만원</td>
												<c:if test="${ type eq 0 }">
													<td>크기</td>
													<td>초소형</td>
												</c:if>
												<c:if test="${ type eq 1 }">
													<td>크기</td>
													<td>승용</td>
												</c:if>
												<c:if test="${ type eq 2 }">
													<td>크기</td>
													<td>화물</td>
												</c:if>
											</tr>
											<tr>
												<td>제로백</td>
												<td>${result.zero_to_hundred}s</td>
												<td>전비</td>
												<td>${result.km_kwh}km/kwh</td>
											</tr>
											<tr>
												<td>주행거리</td>
												<td>${result.max_mileage}km</td>
												<td>최대출력</td>
												<td>${result.power_kw}kw</td>
											</tr>
											<tr>
												<td>보조금 지원 범위</td>
												<td>${result.calculated_max}만원 </td>
												<td>~</td>
												<td>${result.calculated_min}만원</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>


						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</section>
