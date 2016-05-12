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
	<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.3.min.js"></script>
	<script type="text/javascript" src="http://cdn.jsdelivr.net/momentjs/2.13.0/moment.min.js"></script>
	<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/js/bootstrap-datetimepicker.min.js"></script>
	<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/2.13.0/locales.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/css/bootstrap-datetimepicker.min.css">
</head>
<body>

<a href="<c:url value="/logout" />">
	<spring:message code="label.logout" />
</a>
<br>  
<h2><spring:message code="label.title" /></h2>

<div style="margin: 50px">
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
			<td>
				<form:label path="date">
					<spring:message code="label.date"/>
				</form:label>
			</td>
			<td>
				<div class="form-group">
					<div class='input-group date' id='datetimepicker2'>
						<form:input path="date" name="date" class="form-control" />
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
					</div>
				</div>
				<script type="text/javascript">
					$(function () {
						$('#datetimepicker2').datetimepicker({
							locale: 'ru'
						});
					});
				</script>
			</td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit"
				value="<spring:message code="label.addtweet"/>" /></td>
		</tr>
	</table>
</form:form>


<h3><spring:message code="label.tweets" /></h3>
<c:if test="${!empty tweetList}">
	<table class="data table table-bordered">
		<tr>
			<th><spring:message code="label.text" /></th>
			<th><spring:message code="label.status"/></th>
			<th><spring:message code="label.date"/> </th>
			<th>&nbsp;</th>
		</tr>
		<c:forEach items="${tweetList}" var="tweet">
			<tr>
				<td>${tweet.text}</td>
				<td>
					<c:if test="${tweet.status='written'}"><span class="badge bg-red">${tweet.status}</span></c:if>
					<c:if test="${tweet.status='correct'}"><span class="badge bg-yellow">${tweet.status}</span></c:if>
					<c:if test="${tweet.status='ready'}"><span class="badge bg-green">${tweet.status}</span></c:if>
					<c:if test="${tweet.status='published'}"><span class="badge bg-blue">${tweet.status}</span></c:if>
				</td>
				<td>${tweet.date}</td>

				<td><a href="delete/${tweet.id}"><spring:message code="label.delete" /></a></td>
			</tr>
		</c:forEach>
	</table>
</c:if>
</div>
</body>
</html>