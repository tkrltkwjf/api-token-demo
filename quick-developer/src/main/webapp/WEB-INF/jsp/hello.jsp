<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link href="<c:url value="css/app.css" />" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="/webjars/bootstrap/3.3.4/dist/css/bootstrap.min.css">
<script src="/webjars/jquery/2.1.3/dist/jquery.min.js"></script>
<script src="/webjars/bootstrap/3.3.4/dist/js/bootstrap.min.js"></script>
<title>Hello World!</title>
</head>
<body class="security-app">
	<div class="details">
		<h2>QUICK API DEVELOPER</h2>
		<form action="/logout" method="post">
			<input type="submit" class="button red big" value="Sign Out" /> 
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		</form>
	</div>

	<div class="lc-block">
		<h1>
			Hello <b><c:out value="${pageContext.request.remoteUser}"></c:out></b>
		</h1>
		<p> 
			<button type="button" class="btn btn-lg btn-default">디폴트트</button>
			<button type="button" class="btn btn-lg btn-success">성공적</button> 
		</p>
	</div>

</body>
</html>