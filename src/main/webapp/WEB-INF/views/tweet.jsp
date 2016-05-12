<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf8">
	<title><spring:message code="label.title" /></title>
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
</head>
<body>

<a href="<c:url value="/logout" />">
	<spring:message code="label.logout" />
</a>
<br>  
<h2><spring:message code="label.title" /></h2>

<form:form method="post" action="add" commandName="tweet">

	<table>
		<tr>
            <td>
                <form:label path="text">
                    <spring:message code="label.text"/>
                </form:label>
            </td>
            <td><form:textarea path="text" /></td>
		</tr>

		<tr>
			<td colspan="2"><input type="submit"
				value="<spring:message code="label.addtweet"/>" /></td>
		</tr>
	</table>
</form:form>

<h3><spring:message code="label.tweets" /></h3>
<c:if test="${!empty tweetList}">
	<table class="data">
		<tr>
			<th><spring:message code="label.text" /></th>
			<th>&nbsp;</th>
		</tr>
		<c:forEach items="${tweetList}" var="tweet">
			<tr>
				<td>${tweet.text}</td>
				<td><a href="delete/${tweet.id}"><spring:message code="label.delete" /></a></td>
			</tr>
		</c:forEach>
	</table>
</c:if>

</body>
</html>