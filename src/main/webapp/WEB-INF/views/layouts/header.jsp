<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Complex Portal Index</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				
				<!-- Top Menu Category : Service Name = Home -->
				<a class="navbar-brand" href="/">ComplexPortal</a>
				
			</div>
			
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
				
					<!-- Top Menu Category : Home -->
					<li id="cat-home"><a href="/">Home</a></li>
					
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li class="active"><a href="/page/page1-1">Page 1-1</a></li>
							<li><a href="/page/page1-2">Page 1-2</a></li>
							<li><a href="/page/page1-3">Page 1-3</a></li>
							<li><a href="/page/page1-4">Page 1-4</a></li>
							<li><a href="/page/page1-5">Page 1-5</a></li>
							<li><a href="/page/page1-6">Page 1-6</a></li>
							<li><a href="/page/page1-7">Page 1-7</a></li>
							<li><a href="/page/page1-8">Page 1-8</a></li>
							<li><a href="/page/page1-9">Page 1-9</a></li>
							<li><a href="/page/page1-10">Page 1-10</a></li>
							<li><a href="/page/page1-11">Page 1-11</a></li>
							<li><a href="/page/page1-12">Page 1-12</a></li>							
						</ul></li>
						
					<li><a href="/board/board01">Page 2</a></li>
					
					<li id="cat-cat3"><a href="/cat3/cat3.jsp">Cat 3</a></li>
					<li><a href="/board/board01">Board</a></li>
					
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="/menu/sign-up"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>					
					<li><a href="/menu/log-in"><span class="glyphicon glyphicon-log-in"></span> Log-in</a></li>				
				</ul>
			</div>
		</div>
	</nav>

		
</body>
</html>
