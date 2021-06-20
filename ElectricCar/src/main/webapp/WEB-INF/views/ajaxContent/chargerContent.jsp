<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

 <section class="about-section bg-black" id="about">
     <div class="container">      
             
 		<div class = row style="padding-top: 2rem; padding-bottom: 2rem; margin: 0; background-color: black">
			<c:set var="resultYN" value="${resultYN}" />
 			<c:choose>
 			<c:when test="${ resultYN eq 0 }">
				<h6 class="text-white-50">해당 지역에는 충전소가 없습니다.</h6>
			</c:when>
 			<c:otherwise>
					<table class="table text-white">
						<thead>
							<tr>
								<th scope='col'
									style="display: inline-block; width: 40%; text-align: center;">충전소명</th>
								<th scope='col'
									style="display: inline-block; width: 30%; text-align: center;">주소</th>
								<th scope='col'
									style="display: inline-block; width: 15%; text-align: center;">급속충전여부</th>
								<th scope='col'
									style="display: inline-block; width: 15%; text-align: center;">완속충전여부</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${charger}" var="charger" varStatus="status">
								<tr>
									<td style="display: inline-block; width: 40%;">${charger.station_name}</td>
									<td
										style="display: inline-block; width: 30%; text-align: center;">${charger.address_name}</td>
									<c:if test="${charger.fast_yn eq 1}">
										<td
											style="display: inline-block; width: 15%; text-align: center;">O</td>
									</c:if>
									<c:if test="${charger.fast_yn eq 0}">
										<td
											style="display: inline-block; width: 15%; text-align: center;">X</td>
									</c:if>
									<%-- <td style = "display: inline-block; width: 15%;">${charger.fast_yn}</td>
						    --%>
									<c:if test="${charger.normal_yn eq 1}">
										<td
											style="display: inline-block; width: 15%; text-align: center;">O</td>
									</c:if>
									<c:if test="${charger.normal_yn eq 0}">
										<td
											style="display: inline-block; width: 15%; text-align: center;">X</td>
									</c:if>
								</tr>
							</c:forEach>
						</tbody>
					</table>
 				</c:otherwise>
			</c:choose> 
		</div> 
	</div>
</section>   