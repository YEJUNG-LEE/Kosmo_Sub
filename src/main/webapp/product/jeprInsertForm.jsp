<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./../common_yj/jecommon.jsp"%>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style type="text/css">
		@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap');
		*{padding:0; margin:0;}
		body{font-family: 'Noto Sans KR', sans-serif;}
		header{width:100%; min-width:1184px; height:96px; background-color:#000000;}
		a{text-decoration:none; color:inherit;}
		a:hover,a:active{text-decoration: none; color:inherit;}
		.prinsert-main{width:980px; height:500px; margin-left:auto; margin-right:auto; margin-top:80px; 
								border-radius:4px; border:1px solid;}
		.prinsert-header{width:100%; height:80px; background-color:#000; }
		.pri-00{width:100%; height:80px;}	
		.pri-01{width:170px; border-bottom:1px solid #fff;  margin-left:20px; float:left;}					
		p{text-align:center; font-size:28px; font-weight:700; color:#fff; padding-top:16px; margin-bottom:1px;}
		.close-icon img{width: 50px; height:50px ; float:right;
							margin-top:8px; margin-right:5px; cursor:pointer;}
		.pri-02{border:0px solid; margin-top:20px; }	
		.pri-03{border:0px solid; width:530px; height:380px; display:inline-block; float:left;}	
		.form-name{padding-left:10px; font-size:13px;}			
		input{width: 400px; height:30px; border-radius:4px; margin-left:5px; margin-top:1px;
										 line-height :normal;  border: 1px solid #999;  
										 outline-style: none; -webkit-appearance: none; -moz-appearance:none; appearance: none;}	
		input[type="file"]{width:395px; height:25px; padding-top:3px; padding-bottom:2px; padding-left:5px;}	
		select{width: 400px; height:30px; border-radius:4px; margin-left:5px; margin-top:1px; border: 1px solid #999;}							 
		.inimage-view{float:left; border:1px solid #999; box-sizing:border-box; width:300px; height:300px; margin-left:72px; margin-top: 5px;}
		.inimage-view-01{ border:1px solid; box-sizing:border-box; width:250px; height:250px; margin-left: 23px; margin-top:23px;}
		#image_container img{width:220px; height:220px; margin-left:14px; margin-top:12px}
		
		button{width:80px; height:30px; border:1px solid #999; outline:0; border-radius:2px; font-size:14px; font-weight:600;   background-color:#f5f5f5; color:#212121; font-family: 'Noto Sans KR', sans-serif;
					margin-top:20px; margin-left:120px;}
   	  	button:hover{background-color:#000; color:#fff; border-radius:2px; cursor:pointer;}
					 
	
		footer{width:100%;  height:248px; background-color:#000000; display: inline-block; margin-top:150px; }
	</style>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#fakeaddress').attr('disabled', true); // ?????? ?????? ???????????? ??????
			$('.radio-inline').addClass('radio-inline') ; // ????????? ?????? ????????? ??????
			
			$("#inputdate").datepicker({dateFormat:"yy/mm/dd"}); // ?????? ?????????
			
			$('option[value="${requestScope.bean.category}"]').attr('selected', true); //select ?????? ?????????
		
		});
		
		//????????? preview ??????
		function setThumbnail(event){
			var reader = new FileReader();
			
			reader.onload = function(event){
			var img = document.createElement("img");
			
			img.setAttribute("src", event.target.result);
			document.querySelector("div#image_container").innerHTML = ''; //appendChild?????? ????????? ???????????? ?????? div#image_container??? ???????????? ??????.
			document.querySelector("div#image_container").appendChild(img);
				
			};
			reader.readAsDataURL(event.target.files[0]);
		};
					 
	</script>
</head>
<body>
	<div class="prinsert-main">
	<div class="prinsert-header">
		<div class="pri-00">
			<div class="pri-01">
				<p>?????? ????????????</p>
			</div>
			<div class="close-icon"><a href="<%=noForm%>prList"><img alt="" src="<%=contextPath%>/images/close.png"></a></div>
		</div>	
		<div class="pri-02">
			<div class="pri-03">
				<form class="form-horizontal" action="<%=yesForm%>" method="post" enctype="multipart/form-data">
				<input type="hidden" name="command" value="prInsert">					   
					
					<table>
				<%--<tr>
							<td class="form-name">?????? ??????</td>
							<td ><input type="text" class="form-control" id="pnum" name="punm"></td>
						</tr>  --%>		
						<tr>
							<td class="form-name">?????? ??????</td>
							<td ><input type="text" class="form-control" id="name" name="name"></td>
						</tr>
						<tr>
							<td  class="form-name">?????? ?????????</td>
							<td><input type="file"  class="form-control form-control-user" id="image" name="image" value="" onchange="setThumbnail(event)">
								<script>
										var fileCheck = document.getElementById("#image").value;
							   			 if(!fileCheck){
							       		 alert("????????? ????????? ?????????");
							        	return false; }
								</script>		
							</td>
						</tr>
						<tr>
							<td class="form-name">?????? ?????????</td>
							<td ><input type="text" class="form-control" id="stock" name="stock"></td>
						</tr>
						<tr>
							<td  class="form-name">?????? ??????</td>
							<td><input type="text" class="form-control" id="price" name="price"></td>
						</tr>
						<tr>
							<td class="form-name">?????? ??????</td>
							<td><input type="text" class="form-control" id="gram" name="gram"></td>
						</tr>
						<tr>
							<td  class="form-name">?????? ????????????</td>
							<td><select class="form-control" id="category" name="category">
									    <option value="-">------------------ ????????? ??????????????? ????????? ????????? ------------------</option>		
									    <option value="Pork">??????</option>		
									    <option value="Beef">???</option>		
									    <option value="Chicken">???</option>	
									    <option value="Seafood">??????</option>
									    <option value="Mealkit">?????????</option>
									    <option value="Milk">??????</option>
									    <option value="Egg">??????</option>
									    <option value="Baby">?????????</option>
							  	</select>	</td>
						</tr>
						<tr>
							<td class="form-name" >?????? ?????????</td>
							<td><input type="text" class="form-control" id="point" name="point"></td>
						</tr>
						<tr>
							<td  class="form-name">?????? ??????</td>
							<td><input type="date" class="form-control" id="inputdate" name="inputdate"></td>
						</tr>
						<tr>
							<td colspan="2">
								<button id="submit" type="submit" class="btn btn-default">????????????</button>
								<button type="reset" class="btn btn-default">??????</button>
							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
		<div class="inimage-view" >
			<div class="inimage-view-01">
				<div id="image_container" ></div>
			</div>
		</div>
	</div>
	</div>
	<footer></footer>
</body>
</html>