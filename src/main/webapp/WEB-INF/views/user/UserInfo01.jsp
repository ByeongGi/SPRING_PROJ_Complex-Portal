<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Complex Portal Index</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>


<!-- body -->
	<div class="container">
		<div class="panel panel-info">
			<div class="panel-heading">
				<h3>User List </h3>
			</div>
			<div class="panel-body">
			
				<table class="table table-striped">
					<thead>
						<tr>
							<th>ID</th>
							<th>PASSWORD</th>
							<th>NAME</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${UserInfo}" var="list">
						<tr>
							<td>${list.ID}</td>
							<td>${list.PASSWORD}</td>
							<td>${list.NAME}</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>

				<div align="center">
					<ul class="pagination">
					
					</ul>
				</div>
				
			</div>
		</div>		
	</div>

</body>
</html>
