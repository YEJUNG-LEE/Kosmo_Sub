<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ include file="./../common/common3_common.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	
	<!-- 
		<link href=/static/css/app.ae978d15780f27c9c5080fd56542dda0.css rel="stylesheet">
	 -->

	<script>
		$(function() {
			
		});
	</script>
	
	<style type="text/css">
		div[data-v-123j]{
			width: 80%;
			margin-top: 5%;
			margin-left: 10%;
			text-align: center;
		}
		
		
	</style>
	
</head>

<body style="overflow: auto;">
	<div id="app">
    	<div id="modals-container">
    	</div>
    	<div class="app__desktop">
        	<div class="app__desktop-scroll">
            	<div>
                	<!--
                	-->
                	<jsp:include page="./../common/common3_header.jsp"></jsp:include>
	            	<div data-v-123j="">
	                	
	                	<!-- 해당 내용 작성 -->
	                	<div class="panel panel-default">
							<div class="panel-heading">
								<h2 class="panel-title">회원 목록 조회</h2>
							</div>
		                	<table id="infotable" class="table table-hover">
							    <thead>
								<tr>
									<th style="text-align: center;">아이디</th>
									<th style="text-align: center;">비밀번호</th>
									<th style="text-align: center;">이름</th>
									<th style="text-align: center;">성별</th>
									<th style="text-align: center;">생일</th>
								</tr>
							    </thead>
							    <tbody>
									<c:forEach var="bean" items="${requestScope.lists}">			    	
										<tr>
											<td>${bean.cId}</td>
											<td>${bean.cPassword}</td>
											<td>${bean.cName}</td>
											<td>${bean.cGender}</td>
											<td>${bean.cBirth}</td>
										</tr>		
									</c:forEach>	      		      
							    </tbody>
							</table>
						</div>

	            	</div>
	        	</div>
	        </div>
	        <jsp:include page="./../common/common3_footer2.jsp"></jsp:include>
	    </div>
	    <div id="cart-icon__fade"></div>
	    <!---->
	</div>
	
	<!-- 
		<script type="text/javascript" src=/static/js/manifest.f3c6f536a5970b3b01fe.js></script>
		<div id="criteo-tags-div" style="display: none;"></div>
		<script type="text/javascript" src=/static/js/vendor.b9779ff96c2a7d56b4a4.js></script>
		<script type="text/javascript" src=/static/js/app.82827e98469bd56f5745.js></script>
	 -->
	
</body>
</html>