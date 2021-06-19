<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<section class="condition-section bg-black">
	<div class="container bg-black" style='padding: 3rem 0;'>
		<table class="table text-white bg-black">
			<tr>
				<th scope='col' style="display: inline-block; width: 5%;">No.</th>
				<th scope='col' style="display: inline-block; width: 10%;">카테고리</th>
				<th scope='col' style="display: inline-block; width: 22%;">제목</th>
				<th scope='col' style="display: inline-block; width: 50%;">내용</th>
				<th scope='col' style="display: inline-block; width: 13%;">등록일</th>
			</tr>
			<c:forEach items="${recomInfo}" var="recomInfo" varStatus="status">
				<fmt:formatDate value="${recomInfo.regdate}" var="dateValue"
					pattern="yyyy-MM-dd" />
				<tr>
					<td style="display: inline-block; width: 5%;">${recomInfo.post_id}</td>
					<td style="display: inline-block; width: 10%;">${recomInfo.category_name}</td>
					<td style="display: inline-block; width: 22%;"><a
						href="${recomInfo.url}" target='_blank'>${recomInfo.title}</a></td>
					<td style="display: inline-block; width: 50%;">${recomInfo.content}</td>
					<td style="display: inline-block; width: 13%;">${dateValue}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</section>
