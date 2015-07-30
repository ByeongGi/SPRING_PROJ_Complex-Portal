/**
 * 
 * zipcodetest.jsp 파일에 있는 엘리멘트들을 제어하는 js(자바스트립트 파일)
 * 
 * 
 */
/*var add ='서울특별시';
$.post("/Zipcode01", {
				select_Providence : add,
			}, function(data, status) {
				var str = "";
				$.each(data, function(index, value) {
					str += ", "+ index + ": " + value.SIGUNGU;
				});
				alert("Data: " + str + "\nStatus: " + status);
			});
*/




// container call controller
var select_Providence = "";
function select_sido() {
	select_Providence = $("#selectBox_sido option:selected").text();
	sigungulist();

};

var select_sigungu1 = "";
function select_sigungu() {
	select_Providence = $("#selectBox_sido option:selected").text();
	select_sigungu1 = $("#selectBox_sigungu option:selected").text();
	donglist(select_Providence, select_sigungu1);

};

var select_dong1 = "";
function select_dong() {
	select_Providence = $("#selectBox_sido option:selected").text();
	select_sigungu1 = $("#selectBox_sigungu option:selected").text();
	select_dong1 = $("#selectBox_dong option:selected").text();
	addresslist(select_Providence, select_sigungu1, select_dong1);

};


// 시군구 출력 
var addr = "";
function sigungulist() {
	addr = escape(encodeURIComponent(select_Providence));
	$.ajax({
		type : "POST",
		url : "/Zipcode01",
		data : "select_Providence=" + addr,
		contentType : "application/x-www-form-urlencoded; charset=UTF-8",
		success : function(resultData) {
			$("#selectBox_sigungu option:not(option:eq(0))").remove();
			var str = "";
			$.each(resultData, function(index, value) {
				$("#selectBox_sigungu").append('<option>' + value.SIGUNGU + '</option>');
			});
			
		}

	});
}



 // 동 리스트 출력
function donglist(select_Providence, select_sigungu1) {
	var addr1 = encodeURIComponent(select_Providence);
	var addr2 = encodeURIComponent(select_sigungu1);


	$.ajax({
		type : "POST",
		url : "/Zipcode02",
		data : {
			select_Providence : addr1,
			select_sigungu : addr2
		},
		contentType : "application/x-www-form-urlencoded; charset=UTF-8",
		success : function(resultData) {
			$("#selectBox_dong option:not(option:eq(0))").remove();
			$.each(resultData, function(index, value) {
				$("#selectBox_dong").append('<option>' + value.DONG + '</option>');
			
			});

		}

	});

}


// 주소 리스트 출력 
function addresslist(select_Providence, select_sigungu1, select_dong1) {
	var addr1 = encodeURIComponent(select_Providence);
	var addr2 = encodeURIComponent(select_sigungu1);
	var addr3 = encodeURIComponent(select_dong1);

	$.ajax({
		type : "POST",
		url : "/Zipcode03",
		data : {
			select_Providence : addr1,
			select_sigungu : addr2,
			select_dong : addr3
		},
		contentType: "application/x-www-form-urlencoded; charset=UTF-8",
		success : function(resultData) {
			$("#selectBox_address option:not(option:eq(0))").remove();
			
			$.each(resultData, function(index, value) {
				$("#selectBox_address").append('<option value='+value.ZIPCODE+'>' +value.ADDRESS+'</option>');
				
			});

		}

	});

}



// modal event 리스너 
function select() {

	var adderess_Select = $("#selectBox_address option:selected").text();
	var adderess_Select_Zipcode = $("#selectBox_address option:selected").val();
	$("#address").val(adderess_Select);
	$("#post").val(adderess_Select_Zipcode);
}



// 주소 검색 model controller
$(document).ready(function() {
	$("#myBtn").click(function() {
		$("#myModal").modal();
	});
});




