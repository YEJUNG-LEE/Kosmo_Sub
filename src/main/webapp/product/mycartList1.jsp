<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ include file="./../common/common3_common.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	
	<%
		// scriptlet = java 영역!!
		String pQty = request.getParameter("pQty");
		// System.out.println("pQty : "+pQty);
	%>
	
	<script>
		$(function() {
			
		});
	</script>
	
	<style type="text/css">
				
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
	            	<div data-v-5a97542d="">
	                	<h3>상품 템플릿 jsp</h3>
	                	<!-- 해당 내용 작성 -->
	                	<hr>
	                	<%=pQty%>
	                	<hr>
	            	</div>
	        	</div>
	        </div>
	        <jsp:include page="./../common/common3_footer.jsp"></jsp:include>
	    </div>
	    <div id="cart-icon__fade"></div>
	    <!---->
	</div>
	
</body>
</html>