<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>
<%@ page import="org.springframework.security.core.Authentication" %>
<%@ page import="com.portal.complex.security.UserInfo" %>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Complex Portal Admin Mode</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>
<%
	Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	Object principal = auth.getPrincipal();
	String userName = "";
	String name = "";
	String password ="";
	if (principal != null && principal instanceof UserInfo) {
		userName = ((UserInfo) principal).getId();
		name = ((UserInfo) principal).getName();
		password = ((UserInfo) principal).getPassword();
	}
%>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				
				<!-- Top Menu Category : Service Name = Home -->
				<a class="navbar-brand" href="/">Admin Mode</a>
				
			</div>
			
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
				
					<!-- Top Menu Category : Home -->
					<li id="cat-home"><a href="/">Home</a></li>
					
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="/admin/UserManager/UserInfo">UserManager</a></li>
							<li><a href="/admin/UserManager/UserInfo">UserManager</a></li>	
						</ul>
					</li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<sec:authorize access="isAuthenticated()">
						<%=name%>	님 반갑습니다<br/>
					<li><a href="<c:url value="/logout" />">Log Out</a><li>
					</sec:authorize>
				</ul>
			</div>
		</div>
	</nav>

		
</body>
</html>
