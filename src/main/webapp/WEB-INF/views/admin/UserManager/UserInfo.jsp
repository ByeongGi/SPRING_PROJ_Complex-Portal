<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Complex Portal Index</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript">
/* $(document).ready( function () {
    $('#table_id').DataTable({
    	paging: false
    	,searching: false,
    });
    
} ); */


</script>
</head>
<body>


<!-- body -->
	<div class="container">
		<div class="panel panel-info">
			<div class="panel-heading">
				<h3>User List </h3>
				  <!-- Trigger the modal with a button -->
				<button id="boardwrite" type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
				<span class="glyphicon glyphicon-plus"></span> add User</button>
			</div>
			<div class="panel-body">
			
				<table id="user-list" class="table table-striped" >
					<thead>
						<tr>
							<td><input type="checkbox" id=""value=""></td>
							<th>ID</th>
							<th>PASSWORD</th>
							<th>NAME</th>
							<th>POSTNUM</th>
							<th>ADDRESS</th>
							<th>ADDRDETAILS</th>	
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${UserInfo}" var="list">
						<tr>
							<td><input type="checkbox" id="" value=""></td>
							<td>${list.ID}</td>
							<td>${list.PASSWORD}</td>
							<td>${list.NAME}</td>
							<td>${list.POSTNUM}</td>
							<td>${list.ADDRESS}</td>
							<td>${list.ADDRDETAILS}</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
				
				<div align="center">
					<ul class="pagination">
						<li><a href="#">«</a></li>
						<li><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#">»</a></li>
					</ul>
				</div>
				
			</div>
		</div>		
	</div>
	
	
<div class="container">
  

   

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">Modal Header</h4>
        </div>
      	 <!-- form  -->  
        <div class="modal-body">
          <p>Add User</p>
		<form class="form-horizontal" role="form" action="/singup/form" Method="post">
          <!-- id -->
			<label class="control-label" for="id">id</label>
			<input type="text" id="id" name="id" placeholder="" class="form-control">
          <!-- Password -->
			<label class="control-label" for="password">Password</label>
			<input type="text" id="password" name="password" placeholder="" class="form-control">
          <!-- NAME -->
			<label class="control-label" for="name">NAME</label>
			<input type="text" id="name" name="name" placeholder="" class="form-control">
          <!-- POSTNUM -->
			<label class="control-label" for="post">POSTNUM</label>
			<input type="text" id="post" name="post" placeholder="" class="form-control">
          <!-- ADDRESS -->
			<label class="control-label" for="address">ADDRESS</label>
			<input type="text" id="address" name="address" placeholder="" class="form-control">
          <!-- ADDRDETAILS -->
			<label class="control-label" for="username">ADDRDETAILS</label>
			<input type="text" id="addressDetail" name="username" placeholder="" class="form-control">
          <button type="submit" class="btn btn-primary btn-block" data-dismiss="modal"> add </button>
		</form>
        </div>
        <div class="modal-footer">
        </div>
        
      </div>
      
    </div>
  </div>
  
</div>	


</body>
</html>
