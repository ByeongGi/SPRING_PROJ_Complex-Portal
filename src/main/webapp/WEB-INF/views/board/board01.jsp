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
				<h3>Complex-Portal User List
				<button id="boardwrite" type="button" class="btn btn-primary" onclick="javascript:goWriteForm();">
				<span class="glyphicon glyphicon-plus"></span> add memo</button>
				</h3>
			</div>
			<div class="panel-body">
			
				<table class="table table-striped">
					<thead>
						<tr>
							<th>Num</th>
							<th>Author</th>
							<th>Subject</th>
							<th>R-Count</th>
							<th>C-Date</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${data}" var="list">
						<tr>
							<td>${list.nid}</td>
							<td>${list.author}</td>
							<td>${list.subject}</a></td>
							<td>${list.r_count}</td>
							<td>${list.c_date}</td>
						</tr>
					</c:forEach>	
					</tbody>
				</table>

				<div align="center">
					<ul class="pagination">
						<li><a href="#" onclick="javascript:pagination('1')">«</a></li>
						<c:forEach var="iter" begin="1" end="${totalpage}">
						<li id="pagination${iter}"><a href="#" onclick="javascript:pagination('${iter}')"><b>${iter}</b></a></li>
						</c:forEach>
						<li><a href="#" onclick="javascript:pagination('${totalpage}')">»</a></li>
					</ul>
				</div>
				
			</div>
		</div>		
	</div>

</body>
</html>
