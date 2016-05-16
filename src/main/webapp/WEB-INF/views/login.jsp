<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<c:set var="root" value="${pageContext.request.contextPath}" />
	<meta http-equiv="X-UA-Compatible" content="text/html; charset=utf8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title><spring:message code="label.title" /></title>
	<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.3.min.js"></script>
	<script type="text/javascript" src="http://cdn.jsdelivr.net/momentjs/2.13.0/moment.min.js"></script>
	<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

	<link href="/resources/css/login.css" rel="stylesheet">

</head>
<body>
	<div class="container text-center">
		<c:if test="${not empty param.error}">
			<font color="red"> <spring:message code="label.loginerror" />
				: ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message} </font>
		</c:if>
		<form method="POST" class="form-singin" action="<c:url value="/j_spring_security_check" />">
			<h2 class="form-signin-heading">Please sing in</h2>
			<label for="inputEmail" class="sr-only">Email address</label>
			<input type="text" id="inputEmail" class="form-control" placeholder="Email" name="j_username" required autofocus/></td>
			<label for="inputPassword" class="sr-only">Password</label>
			<input type="password" id="inputPassword" class="form-control" placeholder="Password" name="j_password" required/></td>
			<div class="checkbox">
				<label>
					<input type="checkbox" value="remember-me" name="_spring_security_remember_me"><spring:message code="label.remember"/>
				</label>
			</div>
			<input class="btn btn-primary btn-lg btn-block" type="submit" value="Login" />
		</form>
	</div>
</body>
</html>