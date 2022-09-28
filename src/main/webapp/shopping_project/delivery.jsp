<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./../common/common.jsp"%>

<%
	int label = 3 ; // 양식의 label 너비
	int content = twelve - label ; // 양식의 입력 상자(input, select, textarea 등)의 너비 
	
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>BootStrap</title>
	<style type="text/css">
		div{border: 1px solid black;}
		.box1 { width:787px; height:100px; padding-top:20px; border: 1px solid black;
				  color: black; font-size:13px;   }
		p{display: block; font-size:18px; font-weight:70; padding-top: 20px }
		 #addBtn{float: left; width:350px; height:50px;
		 		line-height:30px; background-color:white;
		 		 border:1px solid block; margin-left: 50px; margin-top: 25px;
		 		 }
		.box2{ border:1px solid black; width: 300px; height: 200px;}
		.panel-title{font-size: 50px; font-weight: 30px;}		
		.btn{float: right; width: 350px; height: 50px; display: block; background-color: white; border: 1px solid black;}
		.dateradio{float: left; display: block;}
		#div1{width: 100%;}
		#div2{height: 200px;}
		#div3{height: 200px;}
		/* .addP{float: left; display: block; font-size:18px;}
		 #addBtn{margin-left: auto; display: block;}
		.send2{padding-top : 15px;}
		.abcd{color: black; position: relative; line-height: 5px;
			 padding-top: 10px; padding-left: 20px;}
		 .panel-title{font-size: 50px; font-weight: 30px;} */
		 			
	</style>
	<script type="text/javascript">
	$(document).ready(function() {
	$("#btn").datepicker({dateFormat : "yy/mm/dd"});
		});		
	</script>
</head>
<body>
<br/>

	<p class="panel-title" align="center">주문 하기<p>
	<div class="container">
		<div class="panel">
			<div class="panel-header">
				<!-- 이미지 자리 -->
			</div>
		</div>
	</div>

	<div class="container">
		<div class="panel">
			<div id="div1" class="col-sm-offset-0 col-sm-4">
				<p class="addP1">도착 희망일</p>
					<button class="btn" onclick="">날짜</button>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="panel">
			<div id="div2" class="col-sm-offset-0 col-sm-12">
				<p class="addP1">배송방법</p>
				<div>
					<input class="dateradio" type="radio" name="del" value="날짜선택">ㅈㅈㅈㅈㅈ
				</div>
				<div>
					<input class="dateradio" type="radio" name="del" value="날짜선택">ㅈㅈㅈㅈ
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="panel">
			<div id="div3" class="col-sm-offset-0 col-sm-6">
				<p class="addP1">이번주문 배송비만으로</p>
			</div>
			<div id="div3" class="col-sm-offset-0 col-sm-6">
				<p class="addP1">기본배송비</p>
			</div>
		</div>
	</div>
</body>
</html>