<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 제이쿼리 등등.. 요소 넣는 곳 -->
<%@ include file="./../common/common_yj.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 폰트 넣는 곳 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="cartPage1_css.css">
<script>
		$(.closeButton).click(function(){
			$(this).parent().parent().remove('tr');
		});
	$(document).ready(function() {
	// 장바구니에 들어있는 행 삭제하는 프로그램 작성
	});
</script>

<title>Insert title here</title>
</head>
<body>
	<div id="app">
		<div id="modals-container"></div>
		<div class="app__desktop">
			<div class="app__desktop-scroll">
				<div>
					<jsp:include page="./../common/common3_header.jsp"></jsp:include>
					<main>
						<div class="cart_container">
							<p class="cart_container_title">장바구니</p>
							<div class="row">
								<div class="col-sm-8">
									<table class="table table-hover leftcart">
										<colgroup>
											<col style="width: 15%;">
											<col style="width: 35%;">
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
											<%--<c:foreach 를 사용해서 담겨둔 상품마다 tr을 만들면 될듯 --%>
											<tr>
												<td class="leftcart_img"><img
													src="./../images/pork.png"></td>
												<td class="leftcart_content">
													<h5>초신선 무항생제 돼지 삼겹살 구이용</h5>
													<p>보통(16mm)</p>
												</td>
												<td class="leftcart_standard"><p>600g기준</p></td>
												<td class="leftcart_amount">
													<div class="leftcart_amount_clickarea">
														<div class="minusArea" OnClick="location.href =''">
														</div>
														<div class="amountArea">1</div>
														<div class="plusArea"></div>
													</div>
												</td>
												<td class="leftcart_price" style="vertical-align: middle;">19,800원</td>
												<td class="leftcart_button">
													<div class="closeButton"></div>
												</td>
											</tr>
											<%--<c:foreach 를 사용해서 담겨둔 상품마다 tr을 만들면 될듯 --%>
										</tbody>
									</table>
								</div>
								<div class="col-sm-3 rightcart">
									<div class="rightcart_productprice">
										<div class="rightcart_div_1">총 상품 금액</div>
										<div class="rightcart_div_2">19,800원</div>
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
										<%-- <c:if test="id로 조회했을때 order가 0이 나오면"> --%>
										<div class="delivery_first">
											<div class="delivery_first_inform">첫 구매 무료배송</div>
											<div class="delivery_first_price">-100%</div>
										</div>
										<%-- </c:if> --%>
									</div>
									<%-- <c:if test="id로 조회했을때 order가 0이 나오면"> --%>
									<div class="delivery_first_message">첫 구매 무료배송 혜택이
										적용되었습니다.</div>
									<%-- </c:if> --%>
									<div class="rightcart_totalprice">
										<div>예상 결제 금액</div>
										<span class="redspan">19,800원</span>
									</div>
									<div>
										<button class="rightcart_order" onclick='location.href = "./../shopping_project/Joo1.jsp"'>전체 상품 주문하기</button>
									</div>
									<div>
										<button class="rightcart_cancel" onclick="">쇼핑 계속하기</button>
									</div>
								</div>
							</div>
						</div>
					</main>
				</div>
			</div>
			<jsp:include page="./../common/common3_footer.jsp"></jsp:include>
		</div>
	</div>

</body>
</html>