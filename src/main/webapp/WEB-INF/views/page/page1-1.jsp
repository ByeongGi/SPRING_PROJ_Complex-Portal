<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

 	<!-- The jQuery library is a prerequisite for all jqSuite products -->
    <script type="text/ecmascript" src=<c:url value ='/resources/js/jquery-ui.min.js'/> ></script> 
    <!-- We support more than 40 localizations -->
    <script type="text/ecmascript" src=<c:url value ='/resources/js/i18n/grid.locale-en.js'/> ></script>
    <!-- This is the Javascript file of jqGrid -->   
    <script type="text/ecmascript" src=<c:url value ='/resources/js/jquery.jqGrid.min.js'/> ></script>
    
    <!-- This is the localization file of the grid controlling messages, labels, etc.
    <!-- A link to a jQuery UI ThemeRoller theme, more than 22 built-in and many more custom -->
    <link rel="stylesheet" type="text/css" media="screen" href=<c:url value ='/resources/css/jquery-ui.css'/> />
    <!-- The link to the CSS that the grid needs -->
    <link rel="stylesheet" type="text/css" media="screen" href=<c:url value ='/resources/css/ui.jqgrid.css'/> />
</head>
<body>
<h1>page 1-1 입니다.</h1>
<table id="jqGrid"></table>
    <div id="jqGridPager"></div>

    <script type="text/javascript"> 
        $(document).ready(function () {
            $("#jqGrid").jqGrid({
                url: 'http://trirand.com/blog/phpjqgrid/examples/jsonp/getjsonp.php?callback=?&qwery=longorders',
                mtype: "GET",
                datatype: "jsonp",
                colModel: [
                    { label: 'OrderID', name: 'OrderID', key: true, width: 75 },
                    { label: 'Customer ID', name: 'CustomerID', width: 150 },
                    { label: 'Order Date', name: 'OrderDate', width: 150 },
                    { label: 'Freight', name: 'Freight', width: 150 },
                    { label:'Ship Name', name: 'ShipName', width: 150 }
                ],
				viewrecords: true,
                width: 780,
                height: 250,
                rowNum: 20,
                pager: "#jqGridPager"
            });
        });
 
   </script>
</body>
</html>