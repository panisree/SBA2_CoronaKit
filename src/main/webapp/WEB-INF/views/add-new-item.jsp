<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<%@taglib uri="http://www.springframework.org/tags/form" prefix="spring" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Create Product</title>
		<style type="text/css">
			.error{
				color : red;
			}
		</style>
	</head>
	<body>
	<%@ include file="header.jsp" %>
		<h1>Enter New Product</h1>
		<hr/>
		<spring:form action="${pageContext.request.contextPath}/admin/product-save" method="post" modelAttribute="product">
			<div>
				<div><spring:label path="productName">Enter Product Name</spring:label></div>
				<div>
					<spring:input path="productName"/>
					<spring:errors path="productName" cssClass="error"/>
				</div>
			</div>
			</br></br>
			<div>
				<div><spring:label path="productDescription">Enter Product Desc</spring:label></div>
				<div><spring:input path="productDescription"/>
					<spring:errors path="productDescription" cssClass="error"/>
				</div>
			</div>			
			</br></br>
			<div>
				<div><spring:label path="cost">Enter Product Cost</spring:label></div>
				<div>
					<spring:input path="cost"/>
					<spring:errors path="cost" cssClass="error"/>
				</div>
			</div>
			</br></br>
				<div><input type="submit" value="Submit" /></div>
			</div>
		</spring:form>
	</body>
</html>







