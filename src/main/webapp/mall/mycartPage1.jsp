<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 제이쿼리 등등.. 요소 넣는 곳 -->
<%@ include file="/common_yj/jecommon.jsp"%>
<%-- 
	<%@ include file="./../common/common3_header.jsp"%>

--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 폰트 넣는 곳 -->
<!--<link rel="stylesheet" type="text/css" href="cartPage1_css.css"> -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">
<style>
.cart_container{
	width:1180px;
	margin-left: auto;
	margin-right: auto;
	margin-top:100px;
	padding-bottom: 100px;
	overflow:hidden;
}
.cart_container_title{
  font-size: 32px;
  line-height: 26px;
  text-align: center;
  font-family: 'Noto Sans KR', sans-serif;
}
.leftcart{
    float: left;
    width: 860px;
    margin-top: 51px;
    border-top: 1px solid black;
}
.leftcart tbody h5{
	width:150px;
	font-size: 16px;
	line-height: 24px;
	cursor: pointer;
	word-break: keep-all;
	margin-top:15px;
	margin-bottom:0px;
}
.leftcart tbody p{
	margin-left: 1px;
	font-size: 13px;
	line-height: 24px;
	color: #9b9b9b;
}

.leftcart_standard{
	font-size: 14px;
	line-height: 24px;
	color: #9b9b9b;
}
.leftcart{
	border-collapse:collapse;
}
.leftcart > tbody tr{
	border-top: 1px solid #ddd;
	border-bottom: 1px solid #ddd;
}
.leftcart_standard p{
	margin-top:20px;
}
.leftcart_amount{
	padding-left:5px;
}
.leftcart_amount_clickarea{
	box-sizing: border-box;
	border:1px solid #aaa;
	margin-top:10px;
	display: block;
	width: 120px;
	height: 100%;
	height: 38px;
}
.leftcart_amount_clickarea .minusArea{
	background-image: url("<%=contextPath%>/images/counterminus.svg");
	background-repeat:no-repeat;
	background-size: 15px 15px;
	background-position: center center;
	float: left;
	display: block;
	width: 44px;
	height: 38px;
	cursor: pointer;
}
.leftcart_amount_clickarea .amountArea{
	float: left;
	width: 30px;
	height: 38px;
	text-align: center;
	line-height: 38px;
	font-family: 'Noto Sans KR', sans-serif;
}
.leftcart_amount_clickarea .plusArea{
	background-image: url("<%=contextPath%>/images/counterplus.svg");
	background-repeat:no-repeat;
	background-size: 15px 15px;
	background-position: center center;
	float: left;
	display: block;
	width: 44px;
	height: 38px;
	cursor: pointer;
}

.leftcart_price{
    text-align: center;
    font-size: 16px;
    line-height: 24px;
}

.closeButton{
	background-image:url("<%=contextPath%>/images/closeButton.svg");
	background-size:cover no-repeat;
    width: 40px;
    height: 40px;
    margin-top:5px;
    cursor:pointer;
}

.leftcart thead{
	height:80px;
	text-align:center;
}
.leftcart > thead > tr > td{
	vertical-align:middle;
}

.container {
	margin-top: 100px;
}


.leftcart img{
	width:109px;
	height:109px;
}


.rightcart{
    float: left;
    margin-top: 51px;
    margin-left: 39px;
    padding-bottom: 30px;
    border-top: 1px solid black;
    width: 280px;
    background-color: #f8f8f8;
}
.rightcart > div{
	margin:0 auto;
	width:220px;
	display:block;
}
.rightcart_productprice{
	height:55px;
	padding-top: 15px;
}
.rightcart_div_1{
    float: left;
	width:150px;
    font-size: 15px;
    line-height: 24px;
}
.rightcart_div_2{
	width:70px;
    float: left;
    font-size: 15px;
    line-height: 24px;
    text-align:right;
}
.rightcart_delivery{
	height:100px;
	border-top:1px solid #e1dedf;
	border-bottom:1px solid #e1dedf;
	padding:15px 0;
}
.delivery_total{
	margin-bottom:15px;
	height:15px;
}
.delivery_normal{
	width:220px;
}
.delivery_normal, .delivery_first{
	font-size:13px;
	line-height: 24px;
}
.rightcart_delivery > div > div:nth-child(2){
	width:70px;
    float: left;
    text-align:right;
}
.delivery_normal{
	color: #9b9b9b;
}
.delivery_first{
	color: #4a90e2;
}
.delivery_normal_inform{
	width:150px;
    float: left;
    text-align:right;
}

.delivery_first_inform{
	width:150px;
    float: left;
    text-align:right;
}

.delivery_first_message{
	text-align: center;
    font-size: 12px;
    line-height: 24px;
    color: #4a90e2;
    margin-top: 6px;
    margin-bottom: 26px;
}
.rightcart_totalprice{
	height:60px;
	text-align:right;
}
.rightcart_totalprice div{
	width:220px;
	font-size: 13px;
    font-weight: bold;
    line-height: 24px;
}
.rightcart_totalprice span{
	width:220px;
	margin-top: 2px;
    font-size: 24px;
    font-weight: bold;
    line-height: 24px;
    color: #d0021b;
}

.rightcart_order{
	display: block;
    width: 100%;
    height: 50px;
    border: none;
    color: white;
    font-size: 15px;
    font-weight: bold;
    margin-top: 10px;
    background-color: #d0021b;
}
.rightcart_cancel{
    display: block;
    width: 100%;
    height: 50px;
    border: none;
    color: white;
    font-size: 15px;
    font-weight: bold;
    margin-top: 10px;
	background-color: #acacac;
}
</style>

<title>Insert title here</title>
</head>
<body>
	<main>
		<div class="cart_container">
			<p class="cart_container_title">장바구니</p>
			<div class="row">
				<div class="col-sm-8">
					<table class="table table-hover leftcart">
						<colgroup>
							<col style="width: 15%">
							<col style="width: 35%">
							<col style="width: 10%">
							<col style="width: 15%">
							<col style="width: 15%">
							<col style="width: 10%">
						</colgroup>
						<thead>
							<tr>
								<td></td>
								<td>상품정보</td>
								<td></td>
								<td>수량</td>
								<td>가격</td>
								<td></td>
							</tr>
						</thead>
						<tbody>
							<c:set var="totalPrice" value="0" />
							
							<c:forEach var="bean" items="${requestScope.lists}">
								<tr id ="cart${bean.mid}">
									<td class="leftcart_img">
										<img src="${applicationScope.realPath}/${bean.image}"> <!-- 이부분 해야돼!!!!! -->
									</td>
									<td class="leftcart_content">
										<h5>${bean.pname}</h5>
										<p>보통(16mm)</p>
									</td>
									<td class="leftcart_standard"><p>단가<br><fmt:formatNumber value="${bean.price}" pattern="###,###"/>원</p></td>
									<td class="leftcart_amount">
										<div class="leftcart_amount_clickarea">
											<div class="minusArea" onclick='location.href = "<%=noForm%>maMinus&mid=${bean.mid}"'></div>
											<div class="amountArea">${bean.qty}</div>
											<div class="plusArea" onclick='location.href = "<%=noForm%>maPlus&mid=${bean.mid}"'></div>
										</div>
									</td>
									<td class="leftcart_price" style="vertical-align: middle"><fmt:formatNumber value="${bean.price * bean.qty}" pattern="###,###"/>원</td>
									<c:set var="totalPrice" value="${totalPrice + bean.price * bean.qty}" />
									<td class="leftcart_button">
										<div class="closeButton" onclick='location.href = "<%=noForm%>maDelete&mid=${bean.mid}"' ></div>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<div class="col-sm-3 rightcart">
					<div class="rightcart_productprice">
						<div class="rightcart_div_1">총 상품 금액</div>
						<div class="rightcart_div_2 beforeTotalPrice"><fmt:formatNumber value="${totalPrice}" pattern="###,###"/>원</div>
					</div>
					<div class="rightcart_delivery">
						<div class="delivery_total">
							<div class="rightcart_div_1">총 배송비</div>
							<div class="rightcart_div_2">0원</div>
						</div>
						<div class="delivery_normal">
							<div class="delivery_normal_inform">기본 배송비</div>
							<div class="delivery_normal_price">3,500원</div>
						</div>
						<div class="delivery_first">
							<div class="delivery_first_inform">첫 구매 무료배송</div>
							<div class="delivery_first_price">-100%</div>
						</div>
					</div>
					
					<div class="delivery_first_message">첫 구매 무료배송 혜택이
						적용되었습니다.</div>
					<div class="rightcart_totalprice">
						<div>예상 결제 금액</div>
						<span class="redspan"><fmt:formatNumber value="${totalPrice}" pattern="###,###"/>원</span>
					</div>
					<div>
						<button class="rightcart_order" onclick="location.href = '<%=noForm%>maNext'">전체 상품 주문하기</button>
					</div>
					<div>
						<button class="rightcart_cancel" onclick='location.href = "<%=noForm%>prList"'>쇼핑 계속하기</button>
					</div>
				</div>
			</div>
		</div>
	</main>
	<div class="app__desktop">
		<jsp:include page="./../common/common3_footer2.jsp"></jsp:include>
	</div>
</body>
</html>