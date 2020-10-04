<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form"  prefix="spring-form"%>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashboard</title>
</head>
<body>
<%@ include file="header.jsp" %>
<h1>This is Admin dashboard</h1>
<div> <span></span><span><a href="${pageContext.request.contextPath}/admin/product-entry"> Create New Product </a></span> | <span></span><span><a href="${pageContext.request.contextPath}/admin/product-list"> Product List </a></span>


</body>
</html>