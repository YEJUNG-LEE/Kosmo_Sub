<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ include file="./../common/common3_common.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	
	<script>
		$(function() {
			
		});
	</script>
	
	<style type="text/css">
		
		.faq__container[data-v-2b15862e], .question__container[data-v-2b15862e] {
		  width: 980px;
		  margin-left: auto;
		  margin-right: auto;
		}
		.question__container .question__pagination .question__pagination-centered .question__pagination-btn[data-v-2b15862e] {
		  width: 40px;
		  height: 40px;
		  border: none;
		  background-color: transparent;
		  float: left;
		}
		.question__container .question__pagination .question__pagination-centered .question__pagination-btn .question__pagination-previous[data-v-2b15862e], .question__container .question__pagination .question__pagination-centered .question__pagination-btn .question__pagination-next[data-v-2b15862e] {
		  width: 10px;
		  height: 15px;
		  background-size: cover;
		  background-repeat: no-repeat;
		  display: inline-block;
		}
		.question__container .question__pagination .question__pagination-centered .question__pagination-current[data-v-2b15862e], .question__container .question__pagination .question__pagination-centered .question__pagination-max[data-v-2b15862e] {
		  float: left;
		  font-size: 18px;
		  font-weight: bold;
		  line-height: 26px;
		  margin-top: 4.5px;
		  width: 40px;
		}
		.question__container .question__pagination .question__pagination-centered .question__pagination-split[data-v-2b15862e] {
		  float: left;
		  width: 2px;
		  height: 22px;
		  margin-left: 14px;
		  margin-top: 7.8px;
		}
		.faq__container[data-v-2b15862e] {
		  margin-top: 100px;
		}
		.faq__container .faq__title[data-v-2b15862e] {
		    font-size: 32px;
		    line-height: 26px;
		}
		.faq__container .faq-tab__container[data-v-2b15862e] {
		    overflow: hidden;
		    margin-top: 45px;
		}
		.faq__container .faq-tab__container .faq-tab__text[data-v-2b15862e] {
		      float: left;
		      margin-right: 64px;
		      font-weight: bold;
		      cursor: pointer;
		      color: #cbcbcb;
		      font-size: 18px;
		      line-height: 21px;
		      margin-top: 12px;
		}
		.faq__container .faq-tab__container .faq-tab__active[data-v-2b15862e], .faq__container .faq-tab__container .faq-tab__text[data-v-2b15862e]:hover {
		      color: #000000;
		      border-bottom: 1px solid black;
		}
		.faq__container .faq-tab__container .faq-tab__question-btn[data-v-2b15862e] {
		      float: right;
		      width: 160px;
		      height: 45px;
		      border: none;
		      background-color: #000;
		      color: #fff;
		      font-size: 14px;
		      font-weight: 700;
		}
		.faq__container .faq-tab__sub-area[data-v-2b15862e] {
		    height: 20px;
		    margin-top: 15px;
		}
		.faq__container .faq-tab__sub-area .faq-tab__sub-text[data-v-2b15862e] {
		      float: left;
		      font-size: 14px;
		      font-weight: 700;
		      color: #cbcbcb;
		      margin-right: 40px;
		      cursor: pointer;
		}
		.faq__container .faq-tab__sub-area .faq-tab__sub-active[data-v-2b15862e], .faq__container .faq-tab__sub-area .faq-tab__sub-text[data-v-2b15862e]:hover {
		      color: black;
		}
		.faq__container .faq-accordion__container[data-v-2b15862e] {
		    margin-top: 21px;
		    border-top: 1px solid #c2c2c2;
		    margin-bottom: 100px;
		}
		.faq__container .faq-accordion__container .faq__accordion[data-v-2b15862e] {
		      background-color: white;
		      cursor: pointer;
		      padding: 24px;
		      width: 100%;
		      height: 80px;
		      border-style: solid;
		      border-color: #c2c2c2;
		      border-width: 0px 1px 1px 1px;
		      text-align: left;
		      outline: none;
		      font-size: 15px;
		      -webkit-transition: 0.4s;
		      transition: 0.4s;
		}
		.faq__container .faq-accordion__container .faq__accordion h5[data-v-2b15862e] {
		        float: left;
		        font-size: 15px;
		        width: 232.2px;
		}
		.faq__container .faq-accordion__container .faq__accordion p[data-v-2b15862e] {
		        float: left;
		}
		.faq__container .faq-accordion__container .faq__panel[data-v-2b15862e] {
		      background-color: #f7f7f7;
		      border-style: solid;
		      border-color: #c2c2c2;
		      border-width: 0px 1px 0px 1px;
		      max-height: 0;
		      overflow: hidden;
		      -webkit-transition: max-height 0.2s ease-out;
		      transition: max-height 0.2s ease-out;
		}
		.faq__container .faq-accordion__container .faq__panel div[data-v-2b15862e] {
		        padding: 0px 24px;
		        border-bottom: 1px solid #c2c2c2;
		}
		.faq__container .faq-accordion__container .faq__panel div p[data-v-2b15862e] {
		          padding: 22px 30px;
		          line-height: 29px;
		          width: calc(100% - 60px);
		          font-size: 14px;
		          word-break: keep-all;
		          white-space: pre-line;
		}
		.question__container[data-v-2b15862e] {
		  position: relative;
		  margin-top: 100px;
		}
		.question__container .question__title[data-v-2b15862e] {
		    text-align: center;
		    font-size: 32px;
		}
		.question__container .question__btn[data-v-2b15862e] {
		    margin-top: -41px;
		    position: absolute;
		    right: 0;
		    width: 104px;
		    height: 40px;
		    background-color: #fff;
		    border: 1px solid #d3d3d3;
		    font-size: 12px;
		    font-weight: 700;
		}
		.question__container .question-list__header[data-v-2b15862e] {
		    width: 978px;
		    height: 48px;
		    line-height: 48px;
		    margin-top: 45px;
		    font-size: 15px;
		    font-weight: bold;
		    background-color: #f7f7f7;
		    border: 1px solid #e1dedf;
		}
		.question__container .question-list__header .question-list__header-text[data-v-2b15862e] {
		      text-align: center;
		      float: left;
		}
		.question__container .question-list__header .question-list__header-text[data-v-2b15862e]:nth-child(odd) {
		        width: 230px;
		}
		.question__container .question-list__header .question-list__header-text[data-v-2b15862e]:nth-child(even) {
		        width: 518px;
		}
		.question__container ul[data-v-2b15862e] {
		    width: 980px;
		    min-height: 500px;
		}
		.question__container ul li[data-v-2b15862e] {
		      line-height: 49px;
		      border-left: 1px solid #e1dedf;
		      border-right: 1px solid #e1dedf;
		      border-bottom: 1px solid #e1dedf;
		      font-size: 13px;
		      text-align: center;
		      overflow: hidden;
		      cursor: pointer;
		}
		.question__container ul li[data-v-2b15862e]:hover {
		        background-color: #000000;
		        color: #cbcbcb;
		}
		.question__container ul li .question-list__body-text[data-v-2b15862e] {
		        width: 25%;
		        height: 49px;
		        float: left;
		}
		.question__container ul li .question-list__body-text[data-v-2b15862e]:nth-child(odd) {
		          width: 230px;
		}
		.question__container ul li .question-list__body-text[data-v-2b15862e]:nth-child(even) {
		          width: 518px;
		}
		.question__container .question__pagination[data-v-2b15862e] {
		    overflow: hidden;
		    margin-bottom: 100px;
		    margin-top: 45px;
		    text-align: center;
		}
		.question__container .question__pagination .question__pagination-centered[data-v-2b15862e] {
		      display: inline-block;
		}
		.question__container .question__pagination .question__pagination-centered .question__pagination-btn .question__pagination-previous[data-v-2b15862e] {
		        background: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDIxLjEuMCwgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPgo8c3ZnIHZlcnNpb249IjEuMSIgaWQ9IuugiOydtOyWtF8xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB4PSIwcHgiCgkgeT0iMHB4IiB2aWV3Qm94PSIwIDAgMTAgMTUiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDEwIDE1OyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSI+CjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyI+Cgkuc3Qwe2NsaXAtcGF0aDp1cmwoI1NWR0lEXzJfKTt9Cgkuc3Qxe2NsaXAtcGF0aDp1cmwoI1NWR0lEXzRfKTtmaWxsOm5vbmU7c3Ryb2tlOiM0QjRBNEE7c3Ryb2tlLXdpZHRoOjI7c3Ryb2tlLWxpbmVjYXA6c3F1YXJlO3N0cm9rZS1taXRlcmxpbWl0OjEwO30KPC9zdHlsZT4KPGc+Cgk8ZGVmcz4KCQk8cmVjdCBpZD0iU1ZHSURfMV8iIHg9IjAiIHk9IjAiIHdpZHRoPSIxMCIgaGVpZ2h0PSIxNSIvPgoJPC9kZWZzPgoJPGNsaXBQYXRoIGlkPSJTVkdJRF8yXyI+CgkJPHVzZSB4bGluazpocmVmPSIjU1ZHSURfMV8iICBzdHlsZT0ib3ZlcmZsb3c6dmlzaWJsZTsiLz4KCTwvY2xpcFBhdGg+Cgk8ZyBjbGFzcz0ic3QwIj4KCQk8ZGVmcz4KCQkJPHJlY3QgaWQ9IlNWR0lEXzNfIiB4PSItODcwIiB5PSItMjk1My43IiB3aWR0aD0iMTkyMCIgaGVpZ2h0PSIzNzAwIi8+CgkJPC9kZWZzPgoJCTxjbGlwUGF0aCBpZD0iU1ZHSURfNF8iPgoJCQk8dXNlIHhsaW5rOmhyZWY9IiNTVkdJRF8zXyIgIHN0eWxlPSJvdmVyZmxvdzp2aXNpYmxlOyIvPgoJCTwvY2xpcFBhdGg+CgkJPGxpbmUgY2xhc3M9InN0MSIgeDE9IjgiIHkxPSIyIiB4Mj0iMi41IiB5Mj0iNy41Ii8+CgkJPGxpbmUgY2xhc3M9InN0MSIgeDE9IjgiIHkxPSIxMyIgeDI9IjIuNSIgeTI9IjcuNSIvPgoJPC9nPgo8L2c+Cjwvc3ZnPgo=) no-repeat;
		}
		.question__container .question__pagination .question__pagination-centered .question__pagination-btn .question__pagination-next[data-v-2b15862e] {
		        background: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDIxLjEuMCwgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPgo8c3ZnIHZlcnNpb249IjEuMSIgaWQ9IuugiOydtOyWtF8xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB4PSIwcHgiCgkgeT0iMHB4IiB2aWV3Qm94PSIwIDAgMTAgMTUiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDEwIDE1OyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSI+CjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyI+Cgkuc3Qwe2NsaXAtcGF0aDp1cmwoI1NWR0lEXzJfKTt9Cgkuc3Qxe2NsaXAtcGF0aDp1cmwoI1NWR0lEXzRfKTtmaWxsOm5vbmU7c3Ryb2tlOiM0QjRBNEE7c3Ryb2tlLXdpZHRoOjI7c3Ryb2tlLWxpbmVjYXA6c3F1YXJlO3N0cm9rZS1taXRlcmxpbWl0OjEwO30KPC9zdHlsZT4KPGc+Cgk8ZGVmcz4KCQk8cmVjdCBpZD0iU1ZHSURfMV8iIHg9IjAiIHk9IjAiIHdpZHRoPSIxMCIgaGVpZ2h0PSIxNSIvPgoJPC9kZWZzPgoJPGNsaXBQYXRoIGlkPSJTVkdJRF8yXyI+CgkJPHVzZSB4bGluazpocmVmPSIjU1ZHSURfMV8iICBzdHlsZT0ib3ZlcmZsb3c6dmlzaWJsZTsiLz4KCTwvY2xpcFBhdGg+Cgk8ZyBjbGFzcz0ic3QwIj4KCQk8ZGVmcz4KCQkJPHJlY3QgaWQ9IlNWR0lEXzNfIiB4PSItMTA0MCIgeT0iLTI5NTMuNyIgd2lkdGg9IjE5MjAiIGhlaWdodD0iMzcwMCIvPgoJCTwvZGVmcz4KCQk8Y2xpcFBhdGggaWQ9IlNWR0lEXzRfIj4KCQkJPHVzZSB4bGluazpocmVmPSIjU1ZHSURfM18iICBzdHlsZT0ib3ZlcmZsb3c6dmlzaWJsZTsiLz4KCQk8L2NsaXBQYXRoPgoJCTxsaW5lIGNsYXNzPSJzdDEiIHgxPSIyIiB5MT0iMiIgeDI9IjcuNSIgeTI9IjcuNSIvPgoJCTxsaW5lIGNsYXNzPSJzdDEiIHgxPSIyIiB5MT0iMTMiIHgyPSI3LjUiIHkyPSI3LjUiLz4KCTwvZz4KPC9nPgo8L3N2Zz4K) no-repeat;
		}
		.question__container .question__pagination .question__pagination-centered .question__pagination-current[data-v-2b15862e] {
		        margin-left: 9px;
		        text-align: right;
		}
		
		
		
	</style>
	<link rel="stylesheet" type="text/css" href="./../css/reviewMain1.css">
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
	            	<div data-v-2b15862e="">
					    <div data-v-2b15862e="" id="modals-container"></div>
					    <div data-v-2b15862e="" class="faq__container">
					        <p data-v-2b15862e="" class="faq__title">후기 게시판</p>
					        <div data-v-2b15862e="" class="faq-tab__container">
					        	<!-- 
					        		삭제한 부분
						            <div data-v-2b15862e="" class="faq-tab__text faq-tab__active">상품관련</div>
					        	 -->
					            <button data-v-2b15862e="" class="faq-tab__question-btn">작성</button>
					        </div>
					        <div data-v-2b15862e="" class="faq-tab__sub-area">
					            <div data-v-2b15862e="">
					                <p data-v-2b15862e="" class="faq-tab__sub-text faq-tab__sub-active">돼지</p>
					                <p data-v-2b15862e="" class="faq-tab__sub-text">소</p>
					                <p data-v-2b15862e="" class="faq-tab__sub-text">닭</p>
					                <p data-v-2b15862e="" class="faq-tab__sub-text">수산</p>
					                <p data-v-2b15862e="" class="faq-tab__sub-text">밀키트</p>
					                <p data-v-2b15862e="" class="faq-tab__sub-text">우유</p>
					                <p data-v-2b15862e="" class="faq-tab__sub-text">달걀</p>
					                <p data-v-2b15862e="" class="faq-tab__sub-text">이유식</p>
					            </div>
					        </div>
					        <section data-v-2b15862e="" class="faq-accordion__container">
					            <article data-v-2b15862e="">
					                
					                <!-- 
						                <script>
											$('.js-pscroll').each(function(){
												var ps = new PerfectScrollbar(this);
									
												$(window).on('resize', function(){
													ps.update();
												})
											});
											
										</script>
					                 -->
					                
					                <div class="container-table100" style="padding: 0;">
										<div class="wrap-table100">
											<div class="table100 ver1 m-b-110">
												<div class="table100-head">
													<table>
														<thead>
															<tr class="row100 head">
																<th class="cell100 column1">글 번호</th>
																<th class="cell100 column2">상품명</th>
																<th class="cell100 column3">글 제목</th>
																<th class="cell100 column4">작성일자</th>
																<th class="cell100 column5">조회수</th>
															</tr>
														</thead>
													</table>
												</div>
							
												<div class="table100-body js-pscroll">
													<table>
														<tbody>
															<tr class="row100 body">
																<td class="cell100 column1">1</td>
																<td class="cell100 column2">Boxing</td>
																<td class="cell100 column3">9:00 AM - 11:00 AM</td>
																<td class="cell100 column4">Aaron Chapman</td>
																<td class="cell100 column5">10</td>
															</tr>
							
															<tr class="row100 body">
																<td class="cell100 column1">2</td>
																<td class="cell100 column2">Yoga</td>
																<td class="cell100 column3">8:00 AM - 9:00 AM</td>
																<td class="cell100 column4">Adam Stewart</td>
																<td class="cell100 column5">15</td>
															</tr>
							
															<tr class="row100 body">
																<td class="cell100 column1">3</td>
																<td class="cell100 column2">Gym</td>
																<td class="cell100 column3">9:00 AM - 10:00 AM</td>
																<td class="cell100 column4">Aaron Chapman</td>
																<td class="cell100 column5">10</td>
															</tr>
							
															<tr class="row100 body">
																<td class="cell100 column1">4</td>
																<td class="cell100 column2">Yoga</td>
																<td class="cell100 column3">7:00 AM - 8:30 AM</td>
																<td class="cell100 column4">Donna Wilson</td>
																<td class="cell100 column5">15</td>
															</tr>
							
															<tr class="row100 body">
																<td class="cell100 column1">5</td>
																<td class="cell100 column2">Yoga</td>
																<td class="cell100 column3">8:00 AM - 9:00 AM</td>
																<td class="cell100 column4">Donna Wilson</td>
																<td class="cell100 column5">10</td>
															</tr>
							
															<tr class="row100 body">
																<td class="cell100 column1">6</td>
																<td class="cell100 column2">Dance</td>
																<td class="cell100 column3">5:00 PM - 7:00 PM</td>
																<td class="cell100 column4">Donna Wilson</td>
																<td class="cell100 column5">20</td>
															</tr>
							
															<tr class="row100 body">
																<td class="cell100 column1">7</td>
																<td class="cell100 column2">Gym</td>
																<td class="cell100 column3">5:00 PM - 7:00 PM</td>
																<td class="cell100 column4">Randy Porter</td>
																<td class="cell100 column5">10</td>
															</tr>
															
															<tr class="row100 body">
																<td class="cell100 column1">8</td>
																<td class="cell100 column2">Gym</td>
																<td class="cell100 column3">5:00 PM - 7:00 PM</td>
																<td class="cell100 column4">Randy Porter</td>
																<td class="cell100 column5">10</td>
															</tr>
															
															<tr class="row100 body">
																<td class="cell100 column1">9</td>
																<td class="cell100 column2">Gym</td>
																<td class="cell100 column3">5:00 PM - 7:00 PM</td>
																<td class="cell100 column4">Randy Porter</td>
																<td class="cell100 column5">10</td>
															</tr>
															
															<tr class="row100 body">
																<td class="cell100 column1">10</td>
																<td class="cell100 column2">Gym</td>
																<td class="cell100 column3">5:00 PM - 7:00 PM</td>
																<td class="cell100 column4">Randy Porter</td>
																<td class="cell100 column5">10</td>
															</tr>
															
														</tbody>
													</table>
												</div>
											</div>
											
										</div>
									</div>
					                <script src="./../js/main.js"></script>
					                
					                
					            </article>
					        </section>
					    </div>
					    <!---->
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