<%@taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@taglib uri="http://www.springframework.org/tags/form"  prefix="spring-form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
</head>
<body>
<br>
<security:authorize access="hasRole('ADMIN')">
	<hr/>
	<a href="${pageContext.request.contextPath}/admin/home">Home</a>
</security:authorize>

<security:authorize access="hasRole('USER')">
	<hr/>
	<a href="${pageContext.request.contextPath}/user/home">Home</a>
</security:authorize>
<div align="right"><spring-form:form action="${pageContext.request.contextPath}/logout" method="POST">
<input type="submit" value="Logout">
</spring-form:form>
</div>
</body>
</html>