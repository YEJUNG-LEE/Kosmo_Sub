<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./../common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>BootStrap</title>
	<style type="text/css">
		/* div{overflow: auto;}  스크롤바*/
		table, tbody, td{border : 1px solid darkgrey; }
		.colorgray { width:177.99px; padding-top:20px;
				 background-color:#f7f7f7;  color: black; font-size:13px;
				  font-weight:30px; 
					 }
		.addP{float: left; display: block; font-size:18px;}
		 #addBtn{margin-left: auto; display: block;}
		.send2{padding-top : 15px;}
		.abcd{color: black; position: relative; line-height: 5px;
			 padding-top: 10px; padding-left: 20px;}
		 .panel-title{font-size: 50px; font-weight: 30px;}
		 			
	</style>
	<script type="text/javascript">
	
		});		
	</script>
</head>
<body>
<br/>
	<h2 class="panel-title" align="center">주문 하기</h2>
	<div class="container">
		<div class="panel">
			<div class="panel-heading">
			</div>
			<div class="panel-body"><!-- 이미지 자리 --></div>
		</div>
		
		<div class="col-sm-offset-1 col-sm-10">
		<p class="addP">보내시는 분</p>
		<table class="table" id="infotable">
			<tbody>
				<tr height="30">
					<td id="send1" class="colorgray"><p class="abcd">이름</p></td>
					<td class="send2" align="left"><p class="abcd">주병훈</p></td>
				</tr>
				<tr>
					<td class="colorgray"><p class="abcd">전화번호</p></td>
					<td  class="send2" align="left"><p class="abcd">123131321</p></td>
				</tr>
				<tr>
					<td class="colorgray"><p class="abcd">이메일</p></td>
					<td class="send2" align="left"><p class="abcd">ㅈㅈㅈㅈㅈㅈㅈ</p></td>
				</tr>
		</table>
		
		<br/> <br/>
				<p class="addP">받으시는 분</p>
			
				<input id="addBtn" type="button" name="address" value="주소선택">
		<table class="table" id="infotable">
			<tbody>
				<tr>
					<td id="send1" class="colorgray"><p class="abcd">이름</p></td>
					<td  id="send1" class="send2" align="left"><p class="abcd">주병훈</p></td>
				</tr>
				<tr>
					<td class="colorgray"><p class="abcd">전화번호</p></td>
					<td class="send2" align="left"><p class="abcd">65465454</p></td>
				</tr>
				<tr>
					<td class="colorgray"><p class="abcd">주소</p></td>
					<td class="send2" align="left"><p class="abcd">54654654</p></td>
				</tr>
			</tbody>
		</table>
		</div>
	</div>
</body>
</html>