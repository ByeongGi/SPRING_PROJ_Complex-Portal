<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Complex Portal Index</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<h1>
	프로젝트 스프링 COMPLEX - Portal
</h1>

<P>  The time on the server is ${serverTime}. </P>
<!-- body -->
	<div class="container">
		<div class="jumbotron">
			<h1># index.jsp</h1>
		</div>
		<div class="row">
			<div class="col-sm-6" style="background-color:lavender;" align="center">
				<video id="video1" width="480" controls>
					<source src="/movie/GIRLS_GENERATION_Catch_Me_If_You_Can.mp4" type="video/mp4">
				</video>
			</div>		
			<div class="col-sm-6" style="background-color:lavenderblush;" align="center">
				<video id="video1" width="480" controls>
					<source src="/movie/Girls_Generation_PARTY.mp4" type="video/mp4">
				</video>		
			</div>		
		</div>
		<div class="row">
			<div class="col-sm-6" style="background-color:lavender;">
				<h1># most popular</h1>
				<p>가장 인기 있는 포스트를 노출 시키는 공간</p>
				<p>게시판에서 가장 조회수가 높은 포스트들을 선택</p>
				<p><br></p>
			</div>		
			<div class="col-sm-6" style="background-color:lavenderblush;">
				<h1># most recently</h1>
				<p>가장 최근에 등록된 포스트를 노출 시키는 공간</p>
				<p>게시판에서 date-time이 가장 최신인 포스트들을 선택</p>
				<p><br></p>				
			</div>
		</div>		
	</div>

</body>
</html>
