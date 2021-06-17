<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="input-group mb-3">
	<div class="input-group-prepend">
    	<label class="input-group-text" for="inputGroupSelect01">시/구</label>
  	</div>
  	<select class="custom-select" id="input_sigoongoo_id">
    <option selected>Choose...</option>
  	<c:forEach items="${sigoongoo}" var="sigoongoo">						    
		<option value="${sigoongoo.sigoongoo_id}">${sigoongoo.sigoongoo_name}</option>
	</c:forEach>	
  	</select>  	
</div >	
