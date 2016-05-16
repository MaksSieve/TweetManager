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

    <link href="<c:url value="/WEB-INF/views/css/navbar-fixed-top.css"/>" rel="stylesheet">
	<script type="text/javascript" src="<c:url value="/WEB-INF/views/js/datetimepicker.js"/>"></script>
</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Defter</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse" aria-expanded="false" style="height: 1px;">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">Home</a></li>
                <li><a href="#about">About</a></li>
                <li><a href="#contact">Contact</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Action</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li role="separator" class="divider"></li>
                        <li class="dropdown-header">Nav header</li>
                        <li><a href="#">Separated link</a></li>
                        <li><a href="#">One more separated link</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="<c:url value="/logout" />"><spring:message code="label.logout" /></a></li>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</nav>

<div class="container">
<div class="panel panel-default" style="width: 400px;">
<form:form method="post" action="add" commandName="tweet">
	<div class="form-group">
		<label><spring:message code="label.text"/></label><br>
		<form:textarea class="form-contol" rows="3" path="text" placeholder="Enter . . . "/>
	</div>
	<form:label path="date"/>
	<div class="form-group">
		<div class='input-group date' id='datetimepicker2'>
			<span class="input-group-addon"><spring:message code="label.date"/></span>
			<form:input path="date" name="date" class="form-control" />
			<span class="input-group-addon">
				<span class="glyphicon glyphicon-calendar"></span>
			</span>
		</div>
	</div>

	<input class="btn btn-primary btn-lg" type="submit" value="<spring:message code="label.addtweet"/>" />
</form:form>

<div class="panel-heading"><h3><spring:message code="label.tweets"/></h3></div>
<c:if test="${!empty tweetList}">
	<table class="data table table-bordered box-body">
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
					<c:if test="${tweet.status=='written'}"><span class="label label-danger">${tweet.status}</span></c:if>
					<c:if test="${tweet.status=='correct'}"><span class="label label-warning">${tweet.status}</span></c:if>
					<c:if test="${tweet.status=='ready'}"><span class="label label-success">${tweet.status}</span></c:if>
					<c:if test="${tweet.status=='published'}"><span class="label label-primary">${tweet.status}</span></c:if>
				</td>
				<td>${tweet.date}</td>
				<td><a href="delete/${tweet.id}"><spring:message code="label.delete" /></a></td>
			</tr>
		</c:forEach>
	</table>
</c:if>
</div>
</div>
</body>
</html>