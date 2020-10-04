<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="core"%>    
<%@taglib uri="http://www.springframework.org/tags/form"  prefix="spring-form"%>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product List</title>
</head>
<body>
<%@ include file="header.jsp" %>
<h2>Product List</h2>
<table border="1" width="100%">
		<thead>
			<th>Product Name</th>
			<th>Product Description</th>
			<th>Cost</th>
		</thead>
		<tbody>
		<core:forEach var="product" items="${products}">
			<tr>
				<td>${product.productName}</td> 
				<td>${product.productDescription}</td> 
				<td>${product.cost}</td> 
				<td width="5%"><a href="${pageContext.request.contextPath}/admin/product-delete/${product.id}"><button>Delete</button></a></td>
			</tr>
		</core:forEach>	
		</tbody>
	</table>
</body>
</html>