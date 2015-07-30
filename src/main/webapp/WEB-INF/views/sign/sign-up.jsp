<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Complex Portal Index</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript" src=<c:url value ='/resources/jquery.zipcode.js'/> ></script>
<script type="text/javascript" src=<c:url value ='/resources/jquery.idCheck.js'/> ></script>
</head>
<body>
<!-- Menu-bar Start -->
	<div class="container">
		<div class="panel panel-info">
			<div class="panel-heading"><h3>Sing-up form</h3></div>
			<div class="panel-body">
				<form class="form-horizontal" role="form" action="/singup/form" Method="post">
					<div class="form-group">
						<label class="control-label col-sm-3" for="id">*ID:</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="id" name="id" placeholder="Enter id">
						</div>
						<div class="col-sm-3">
							<button type="button" id="id_Check_Btn" class="btn btn-success btn-block">Check useability</button>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-3" for="password">*Password:</label>
						<div class="col-sm-9">
							<input type="password" class="form-control" id="password" name ="password" placeholder="Enter password">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-3" for="repwd">*Retype password:</label>
						<div class="col-sm-9">
							<input type="password" class="form-control" id="repwd" name="repwd" placeholder="Retype password">
						</div>
					</div>
					
					<br>
					
					<div class="form-group">
						<label class="control-label col-sm-3" for="name">Name:</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" id="name" name="name" placeholder="Enter name">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-3" for="postnum">Post number:</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="post" name="post"  placeholder="Search post number" readonly>
						</div>
						<div class="col-sm-3">
							<button type="button" class="btn btn-success btn-block" id="myBtn" onclick="select()">Search post number</button>
						</div>						
					</div>
					<div class="form-group">
						<label class="control-label col-sm-3" for="address">Address:</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" id="address" name="address" placeholder="Enter address" readonly>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-3" for="addrdetails">Address details:</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" id="addressDetail" name="addressDetail" placeholder="Enter address detail">
						</div>
					</div>															
					<br>
					
					<div class="form-group">
						<div class="col-sm-offset-3 col-sm-9">
							<button type="submit" class="btn btn-primary btn-block">Sign up</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
<!-- Menu-bar Start -->	

<!-- Modal -->
	<div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<h5>주소검색</h5>
				</div>
				<div class="modal-body" style="padding: 40px 50px;">
					시도 : 
					<select class="form-control" id="selectBox_sido" onchange="select_sido()">
						<option>선택하세요!</option>
						<option>세종특별자치시</option>
						<option>충청남도</option>
						<option>서울특별시</option>
						<option>경상북도</option>
						<option>대구광역시</option>
						<option>인천광역시</option>
						<option>충청북도</option>
						<option>강원도</option>
						<option>전라남도</option>
						<option>경기도</option>
						<option>대전광역시</option>
						<option>전라북도</option>
						<option>경상남도</option>
						<option>광주광역시</option>
						<option>부산광역시</option>
						<option>울산광역시</option>
						<option>제주특별자치도</option>
					</select> 
					 시군구 :
 					 <select class="form-control" id="selectBox_sigungu" style="width: 220px;"
						onchange="select_sigungu()">
						<option value="">- 선택 -</option>
					</select>
					읍면동 :
					 <select class="form-control" id="selectBox_dong" style="width: 230px"
						onchange="select_dong()">
						<option value="">- 선택 -</option>
					</select> 
					
					<br> 
					<select class="form-control" id="selectBox_address" style="width: 300px">
						<option value="">- 선택 -</option>
					</select>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn" onclick="select()" data-dismiss="modal">Select</button>
				</div>
			</div>

		</div>
	</div>
	<!-- Model end  -->
	
	<!-- ID Check Model Start  -->
	<div class="modal fade" id="id_Check_Modal" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<h5>중복 아이디 체크</h5>
				</div>
				<div class="modal-body" style="padding: 40px 50px;">
 				<input type="text" class="form-control" id="id_Check_input" placeholder="아이디를 입력하고 중복체크하세요">	
				<button type="button" class="btn" onclick="id_Check()" data-dismiss="modal">중복검사</button>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn" id="id_Check_Select_Btn" onclick="" data-dismiss="modal">Select</button>
				</div>
			</div>

		</div>
	</div>
	<!-- ID Check Model end  -->
	
	
</body>
</html>
