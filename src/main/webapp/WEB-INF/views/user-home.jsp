<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form"  prefix="spring-form"%>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Dashboard</title>
</head>
<body>
<%@ include file="header.jsp" %>
<h1>This is User dashboard</h1>
<div><span><a href="${pageContext.request.contextPath}/user/show-kit"> Show Kit </a></span> | <span></span><span><a href="${pageContext.request.contextPath}/user/show-list">Show All Items</a></span>
</body>
</html>