<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>Insert title here</title>
	<style>
		@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap');
		*{padding:0; margin:0;}
		body{font-family: 'Noto Sans KR', sans-serif;}
		header{width:100%; min-width:1184px; height:96px; background-color:#000000;}
		.list-banner{border:0px solid; box-sizing:border-box;
					 width:100%; min-width:1184px; height:520px;
					 background-image:url("./../images/pcpork.png"); background-size:cover;
					 background-position-x:50%; background-position-y:50%; background-repeat-x:no-repeat; background-repeat-y:no-repeat;
					 background-origin: initial; ckground-clip: initial; background-color: initial;}
		.list-tab{border:0px solid; bobox-sizing:border-box;
				  width:1184px;
				  margin-top:72px; margin-left:auto; margin-right:auto; text-align:center;}
	  	.list-tab li:hover p{color:#fff; background-color:#212121;}
	  	.ul01{border:0px solid; width:1184px }
	    .ul01 li{border:0px solid; list-style:none; display:inline-block; width:143.63px; height:56px; line-height:56px; background-color:#f5f5f5;
	    	  border-radius:2px; /*position:relative; margin-right: 5px;*/}
   	    .ul01 p{font-size:16px; font-weight:700; color:#212121;}
   	    .list-data{border:0px solid; box-sizing:border-box;
   	    		   width:1184px; margin-top:72px; margin-left:auto; margin-right:auto;}
		.ul02 li{border:0px solid; box-sizing:border-box; list-style:none; float:left; width:376px; height:481.6px; margin-bottom:61px;}
		.li02{border:0px solid; box-sizing:border-box; margin-left:28px; margin-right:28px; }
		.ul02 div{width:376px; height:416px; background-color:#f9f7f8; }
		.noproim{width:208px; height:208px; margin-top:104px; margin-left:84px; cursor:pointer;}
		.proim{width:208px; height:208px; margin-top:104px; cursor:pointer; position:relative;}
		.adx{width:75px; height:30px; position:relative; top:-260px; left:20px  }
		.ul02 button{border:2px solid #eee; width:72px; height:72px; margin-top:10px; margin-left:288px;
					 background-color:#fff; border-radius: 50%; box-shadow: 0 25px 10px -15px rgb(0 0 0 / 12%);
					 cursor: pointer;}
		.ul02 i{background-image:url("./../images/bacart.png"); width:68px; height:68px; display:block; background-size:cover;}
		.ul02 button:hover{background-color:#000;}
		.ul02 button:hover i{background-image:url("./../images/wicart.png");}
		.ul02 h6{font-size:18px; margin-top:16px; cursor: pointer;}
		.ul02 p{font-size:14px; color:#9b9b9b; cursor: pointer;}
		footer{width:100%;  height:248px; background-color:#000000; display: inline-block; margin-top:150px; }
		.footer_navigation{width:1184px; height:40px; background-color:#fff; margin-top:11px; margin-left:auto; margin-right:auto; }
		.footer_split{width:100%; height:1px; background-color:#eee; margin-top:10px; }
		.footer_main{width:1184px; height:176px; }
		
	</style>
</head>
<body>
	<header></header>
	<div class="list-banner"></div>
	<div class="list-tab">
		<ul class="ul01">
			<li><p><span>돼지</span></p></li>
			<li><p><span>소</span></p></li>
			<li><p><span>닭</span></p></li>
			<li><p><span>수산</span></p></li>
			<li><p><span>밀키트</span></p></li>
			<li><p><span>우유</span></p></li>
			<li><p><span>달걀</span></p></li>
			<li><p><span>이유식</span></p></li>
		</ul>
	</div>
	<div class="list-data">
		<ul class="ul02">
			<li>
				<div>
					<img class ="noproim" src="./../images/porkbelly-fresh-list.png">
					<br>
					<button>
						<i></i>			
					</button>
				</div>
				<h6>초신선 돼지 삼겹살 구이용</h6>
				<p>기준가 16,800원/600g</p>
			</li>
			<li class="li02">
				<div>
					<img class="adx" src="./../images/adx.png">
					<img class ="proim" src="./../images/porkbelly-clean-list.png">
					<br>
					<button>
						<i></i>			
					</button>
				</div>
				<h6>초신선 무항생제 돼지 삼겹살 구이용</h6>
				<p>기준가 19,800원/600g</p>
			</li>
			<li>
				<div>
					<img class ="noproim" src="./../images/porkbelly-fresh-whole-list.png">
					<br>
					<button>
						<i></i>			
					</button>
				</div>
				<h6>초신선 돼지 삼겹살 수육용</h6>
				<p>기준가 16,800원/600g</p>
			</li>
			<li>
				<div>
					<img class="adx" src="./../images/adx.svg">
					<img class ="proim" src="./../images/porkbelly-clean-whole-list.png">
					<br>
					<button>
						<i></i>			
					</button>
				</div>
				<h6>초신선 무항생제 돼지 삼겹살 수육용</h6>
				<p>기준가 19,800원/600g</p>
			</li>
			<li class="li02">
				<div>
					<img class ="noproim" src="./../images/porkleg-fresh-list.png">
					<br>
					<button>
						<i></i>			
					</button>
				</div>
				<h6>초신선 돼지 앞다리 제육용</h6>
				<p>기준가 12,000원/600g</p>
			</li>
			<li>
				<div>
					<img class="adx" src="./../images/adx.svg">
					<img class ="proim" src="./../images/porkleg-clean-list.png">
					<br>
					<button>
						<i></i>			
					</button>
				</div>
				<h6>초신선 무항생제 돼지 앞다리 제육용</h6>
				<p>기준가 13,500원/600g</p>
			</li>
			<li>
				<div>
					<img class ="noproim" src="./../images/porkleg-fresh-boil-list.png">
					<br>
					<button>
						<i></i>			
					</button>
				</div>
				<h6>초신선 돼지 앞다리 수육용</h6>
				<p>기준가 12,000원/600g</p>
			</li>
			<li class="li02">
				<div>
					<img class="adx" src="./../images/adx.png">
					<img class ="proim" src="./../images/porkleg-clean-boil-list.png">
					<br>
					<button>
						<i></i>			
					</button>
				</div>
				<h6>초신선 무항생제 돼지 앞다리 수육용</h6>
				<p>기준가 13,500원/600g</p>
			</li>
			<li>
				<div>
					<img class ="noproim" src="./../images/porksirloin-fresh-list.png">
					<br>
					<button>
						<i></i>			
					</button>
				</div>
				<h6>초신선 돼지 등심 돈까스용</h6>
				<p>기준가 10,500원/600g</p>
			</li>
			<li>
				<div>
					<img class="adx" src="./../images/adx.svg">
					<img class ="proim" src="./../images/porksirloin-clean-list.png">
					<br>
					<button>
						<i></i>			
					</button>
				</div>
				<h6>초신선 무항생제 돼지 등심 돈까스용</h6>
				<p>기준가 12,000원/600g</p>
			</li>
			<li class="li02">
				<div>
					<img class ="noproim" src="./../images/porktender-fresh-list.png">
					<br>
					<button>
						<i></i>			
					</button>
				</div>
				<h6>초신선 돼지 안심 요리용</h6>
				<p>기준가 10,500원/600g</p>
			</li>
			<li>
				<div>
					<img class="adx" src="./../images/adx.svg">
					<img class ="proim" src="./../images/porktender-clean-list.png">
					<br>
					<button>
						<i></i>			
					</button>
				</div>
				<h6>초신선 무항생제 돼지 안심 요리용</h6>
				<p>기준가 12,000원/600g</p>
			</li>
			<li>
				<div>
					<img class ="noproim" src="./../images/porkend-fresh-list.png">
					<br>
					<button>
						<i></i>			
					</button>
				</div>
				<h6>초신선 돼지 찌개용</h6>
				<p>기준가 5,500원/300g</p>
			</li>
			<li class="li02">
				<div>
					<img class="adx" src="./../images/adx.svg">
					<img class ="proim" src="./../images/porkend-clean-list.png">
					<br>
					<button>
						<i></i>			
					</button>
				</div>
				<h6>초신선 무항생제 돼지 찌개용</h6>
				<p>기준가 6,500원/300g</p>
			</li>
			<li>
				<div>
					<img class ="noproim" src="./../images/porkrear-ground-fresh-list.png">
					<br>
					<button>
						<i></i>			
					</button>
				</div>
				<h6>초신선 돼지 분쇄육</h6>
				<p>기준가 5,500원/300g</p>
			</li>
			<li>
				<div>
					<img class="adx" src="./../images/adx.svg">
					<img class ="proim" src="./../images/porkrear-ground-clean-list.png">
					<br>
					<button>
						<i></i>			
					</button>
				</div>
				<h6>초신선 무항생제 돼지 분쇄육</h6>
				<p>기준가 6,500원/300g</p>
			</li>
			<li class="li02">
				<div>
					<img class ="noproim" src="./../images/porkhang-fresh-list.png">
					<br>
					<button>
						<i></i>			
					</button>
				</div>
				<h6>초신선 돼지 항정살 구이용</h6>
				<p>기준가 15,300원/600g</p>
			</li>
			<li>
				<div>
					<img class="adx" src="./../images/adx.svg">
					<img class ="proim" src="./../images/porkhang-clean-list.png">
					<br>
					<button>
						<i></i>			
					</button>
				</div>
				<h6>초신선 무항생제 돼지 항정살 구이용</h6>
				<p>기준가 16,800원/600g</p>
			</li>
			<li>
				<div>
					<img class ="noproim" src="./../images/porkrib-fresh-list.png">
					<br>
					<button>
						<i></i>			
					</button>
				</div>
				<h6>초신선 돼지 등갈비 요리용</h6>
				<p>기준가 16,800원/600g</p>
			</li>
			<li class="li02">
				<div>
					<img class="adx" src="./../images/adx.svg">
					<img class ="proim" src="./../images/porkrib-clean-list.png">
					<br>
					<button>
						<i></i>			
					</button>
				</div>
				<h6>초신선 무항생제 돼지 등갈비 요리용</h6>
				<p>기준가 19,800원/600g</p>
			</li>
		</ul>
	</div>
	<footer>
		<div class="footer_navigation">
			
		</div>
		<div class="footer_split"></div>
		<div class="footer_main">
			<div class="footer_main_info"></div>
			<div class="footer_main_cs"></div>
		</div>
	</footer>
</body>

</html>