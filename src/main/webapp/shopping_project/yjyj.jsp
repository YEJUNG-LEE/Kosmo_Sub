<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./../common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>BootStrap</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style type="text/css">
    #finish1{
        width:1500px;
        margin:auto;
       margin-top: 150px;
       height:600px;
       border: 1px solid black;
       background-color:#DCDCDC; 
    }
    p{padding-top: 200px;}
    #txtContact{font-size: 30px; }
    
     #btnSubmit{
        width:250px;
        height:75px;
        margin:auto;
        display:block;
/*         font-size: 30px; */
    }
    .btn-basic{
    	font-size:25px;
    }
</style>
	<script type="text/javascript">
	$(document).ready(function(){
			
	});		
	</script>
</head>
<body>
	
	<div id="finish1">
	    <h1 id="txtContact"><p align="center"> 거래 완료! 신선하고 꼼꼼하게 배송해드리겠습니다. 감사합니다.</p> </h1>
	    <br/><br/><br/>
	    <button type="submit" id="btnSubmit" class="btn-basic" onclick="location.href='./../main/main.jsp'"> 메인으로가기 </button>
	</div>
	
</body>
</html>