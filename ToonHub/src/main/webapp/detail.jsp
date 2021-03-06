<%@page import="java.net.URLEncoder"%>
<%@page import="model.WebtoonDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.WebtoonDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js">
<head>
<meta charset='utf-8'>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<title>Snippet - BBBootstrap</title>
<link
	href='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css'
	rel='stylesheet'>
<!-- <link href='https://use.fontawesome.com/releases/v5.8.1/css/all.css'
	rel='stylesheet'> -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description" content="Inspiration for drag and drop interactions for the modern UI" />
		<meta name="keywords" content="drag and drop, interaction, inspiration, web design, ui" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="css/normalize.css" />
		<!-- <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.2.0/css/font-awesome.min.css" /> -->
		<link rel="stylesheet" type="text/css" href="css/demo3.css" />
		<link rel="stylesheet" type="text/css" href="css/modal3.css" />

<script type='text/javascript'
	src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
    <script src="js/modernizr.custom.js"></script>

<style>
body {
	background: #eee;
}

/* 웹툰 들어가는 네모칸  */
.brands {
	width: 100%;
	padding-top: 2px;
	padding-bottom: 10px
}

.brands_nav {
	position: absolute;
	top: 50%;
	-webkit-transform: translateY(-10%);
	-moz-transform: translateY(-50%);
	-ms-transform: translateY(-50%);
	-o-transform: translateY(-50%);
	transform: translateY(-50%);
	padding: 5px;
	/*     cursor: pointer */
}

.brands_nav i {
	color: #e5e5e5;
	-webkit-transition: all 0ms ease;
	-moz-transition: all 0ms ease;
	-ms-transition: all 0ms ease;
	-o-transition: all 0ms ease;
	transition: all 0ms ease
}

.brands_nav:hover i {
	color: #676767
}

.brands_prev {
	left: 10px
}

.brands_next {
	right: 10px
}

.a_color {
	color: #62b989;
}


.modal .btn{cursor: pointer;border: 1px solid #999999;text-align: center;border-radius: 5px;outline: none;font-weight: 500;}
.dimLayer{
	display: block;
	width: 100%;
	background-color: rgba(0, 0, 0, 0.3);
	position: fixed;
	left: 0;
	top: 0px;
	margin: 0;
	padding: 0;
	z-index: 9998;}
.modal{
	width: 600px;
	height: 252px;
	border-radius: 10px;
	padding: 80px 24px;
	box-sizing: border-box;
	text-align: center;}
.modal-section{
	background: #ffffff;
	box-sizing: border-box;
	display: none;
	position: absolute;
	top: 50%;
	left: 50%;
	-webkit-transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
	-moz-transform: translate(-50%, -50%);
	-o-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
	display: none;
	z-index: 9999;
}
.menu_msg{
	font-size: 21px;
	font-weight: 600;
	color: #676767;}
.enroll_box p{
	padding-bottom: 56px;
}
.gray_btn {
	width: 90px;
	background: #ffffff;
	color: #999999;
	line-height: 36px;
	transition: 0.5s;
	font-size: 17px;}
.pink_btn {
	width: 90px;
	background: #62b989;
	color: #fff;
	line-height: 36px;
	transition: 0.5s;
	font-size: 17px;
	border: none;}
.enroll_btn{
	text-align: center;
	padding: 5px;
}
</style>
</head>

<body oncontextmenu='return false' class='snippet-body skin-3'>
	<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
	<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.css">
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.js"></script>
	

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.css">

<%
WebtoonDAO dao = new WebtoonDAO();
ArrayList<WebtoonDTO> monlist = dao.monday();
ArrayList<WebtoonDTO> tuelist = dao.tuelist();
ArrayList<WebtoonDTO> wedlist = dao.wedlist();
ArrayList<WebtoonDTO> thulist = dao.thulist();
ArrayList<WebtoonDTO> frilist = dao.frilist();
ArrayList<WebtoonDTO> satlist = dao.satlist();
ArrayList<WebtoonDTO> sunlist = dao.sunlist();
	String img ;
	%>



		<div class="container">
			<!-- Top Navigation -->
			<div class="codrops-top clearfix">
<!-- 				<a class="codrops-icon codrops-icon-prev" href="#"><span>뒤로가기</span></a> -->
			</div>
			<div class="content">

				<!-- 메인 머리  demo.css 에 있음-->
				<header class="codrops-header">  
					<!--디폴트로 toonhub 가 들어와있도록 하는방법 물어보기 ! -->
                    <div class="codrops-menu">
                        <strong><a href="#" style="color:#42C690;">Toonhub</a></strong>    <strong>|</strong> <strong ><a href="#">커뮤니티</a></strong> <!-- 맨위 상단-->
                    </div>
					
					<!-- h1 태그 말고 다른걸로 바꿀것 !  -->
					<br><br>
					<nav class="codrops-demos">
						<a href="ToonMain.jsp" style="color:#42C690;"> 요일별 </a>
						<a href="#"> 장르 </a>
						<a href="platform.jsp"> 플랫폼 </a>
						<!-- <a class="current-demo" href="modal.html">Modal</a>  일단 세개 빼고 다 주석
						<a href="icons.html">Icons</a>
						<a href="bottoms-lide.html">Bottom Slide</a>
						<a href="reveal.html">Reveal</a> -->
					</nav>
					<br>
					<!-- 주간  -->
					<nav class = "week">
						<a href="#">월</a>
						<a href="#">화</a>
						<a href="#">수</a>
						<a href="#">목</a>
						<a href="#">금</a>
						<a href="#">토</a>
						<a href="#">일</a>
					</nav>
				</header>
				<!-- 컨펌창 -->

	
					
					<!-- confirm 모달을 쓸 페이지에 추가 start-->
					
					<!-- confirm 모달을 쓸 페이지에 추가 end-->
			
					<!-- alert 모달을 쓸 페이지에 추가 start-->
					
					<!-- alert 모달을 쓸 페이지에 추가 end-->

					<section class="modal modal-section type-confirm">
						<div class="enroll_box">
							<p class="menu_msg"></p>
						</div>
						<div class="enroll_btn">
							<button class="btn pink_btn btn_ok">네</button>
							<button class="btn gray_btn modal_close">아니오</button>
						</div>
					</section>

					<section class="modal modal-section type-alert">
						<div class="enroll_box">
							<p class="menu_msg"></p>
						</div>
						<div class="enroll_btn">
							<button class="btn pink_btn modal_close">확인</button>
						</div>
					</section>

				<div id="grid" class="grid clearfix_detail">
                    <div class="detail_info">
						<div><img src="nemo.png"></div>
                        
                        <div class="text_detail" style="padding: 15px;">
							<div>
								<strong></strong><span style = font-size:small;>작가이름</span><br>
								<span>시놉시스</span>
								
							</div>
                            
							<div>
								<button class ="detail_gen">장르1</button>
								<button class ="detail_gen">장르2</button>
								<button class ="detail_gen">장르3</button>
							</div>
                        </div>
						<div class= "gotolink" style="position: relative;
							 left: 100px;"><a href="" style="color: white !important;">보러가기</a>
						</div>
							<div class = "detail_book">
								<div>
									<button type = button class = "a_color"  id = "bookmark" style="border: none;">찜하기</button>
								</div>
								<a class = "a_color" href="">작가 커뮤니티</a>
							</div>
							
                    </div>
<br>
				<div class = "detail_bottom">
					<span style="font-size: large;">이웹툰 어때요?</span>
					<form action="#" style="display: inline;">
					<select class="star">
						<option>★★★★★</option>
						<option>★★★★☆</option>
						<option>★★★☆☆</option>
						<option>★★☆☆☆</option>
						<option>★☆☆☆☆</option>
					</select>
					<br>
					<table style="width: 100%">
						<tr>
							<td><input type="textarea" class= "input_review" style="border: #bbbbbb 1px solid;">
							</td>
							<td><input type="submit" value="등록" id = "submit_botton" >
							</td>
						</tr>
					</table>
					<table class="review_db">
						<tr>
							<td><img src="nemo.png" width="30px"height=30px style="display: inline-block;">
							<span>Ms.hong</span><br>
							<span>진짜 재밌어요!</span>
							<span style="float:right;">2021.08.04</span>
						</td>
						</tr>
					</table>
					<br>
					<table class="review_db">
						<tr>
							<td><img src="nemo.png" width="30px"height=30px style="display: inline;">
							<span>Ms.hong</span><br>
							<span>진짜 재밌어요!</span>
							<span style="float:right;">2021.08.04</span>
						</td>
						</tr>
					</table>
					
					</div>


					</form>



				</div>
            
                    

					

				</div>

			</div><!-- /content -->
		</div><!-- /container -->


        <div class="fixed-menu">
                <a href="ToonMain.jsp"><img src = "img/home.png">
                    <span class = "menu-text">   홈으로   </span>
                </a>
                <a href="bookmarkpage.jsp"><img src = "img/bookmark.PNG">
                    <span class = "menu-text">   북마크   </span>
                </a>
                <a href="Login.jsp"><img src = "img/my.PNG">
                    <span class = "menu-text">   my   </span>
                </a>
				<a href="font-family: "Open Sans", -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen-Sans, Ubuntu, Cantarell, "Helvetica Neue", Helvetica, Arial, sans-serif; ">이거 누르면 나오게 
					
						
					 
				</a>
            
        </div>

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>	
		<script src="js/sweetalert2.all.js"></script>
		<script src="js/jquery-3.6.0.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
		<script src="js/draggabilly.pkgd.min.js"></script>
		<script src="js/dragdrop.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.js"></script>
		<script type='text/javascript' src='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js'></script>
        <script type='text/javascript'>

/* 
				var bookmark = document.getElementById('bookmark'); */
				
/* 			$(bookmark).click(function (){
				var bookmark_click = confirm("찜목록으로 이동할 까요?");

				if(bookmark_click == true){
					alert("확인을 누르셨군요")
				} else{
					alert("취소를 누르셨군요")
				}
				})
 */

				$(function () {
    //사용 예시 **************************
    $(document).on("click", "#bookmark", function () {
        action_popup.confirm("찜하기 목록으로 이동할까요?", function (res) {
            if (res) {
				/* 찜목록으로 바꾸기 */
                location.href='bookmarkpage.jsp'
            }
        })
    });

    $(".modal_close").on("click", function () {
        action_popup.close(this);
    });
    //사용 예시 **************************
});



/**
 *  alert, confirm 대용 팝업 메소드 정의 <br/>
 *  timer : 애니메이션 동작 속도 <br/>
 *  alert : 경고창 <br/>
 *  confirm : 확인창 <br/>
 *  open : 팝업 열기 <br/>
 *  close : 팝업 닫기 <br/>
 */ 
var action_popup = {
    timer: 500,
    confirm: function (txt, callback) {
        if (txt == null || txt.trim() == "") {
            console.warn("confirm message is empty.");
            return;
        } else if (callback == null || typeof callback != 'function') {
            console.warn("callback is null or not function.");
            return;
        } else {
            $(".type-confirm .btn_ok").on("click", function () {
                $(this).unbind("click");
                callback(true);
                action_popup.close(this);
            });
            this.open("type-confirm", txt);
        }
    },

    alert: function (txt) {
        if (txt == null || txt.trim() == "") {
            console.warn("confirm message is empty.");
            return;
        } else {
            this.open("type-alert", txt);
        }
    },

    open: function (type, txt) {
        var popup = $("." + type);
        popup.find(".menu_msg").text(txt);
        $("body").append("<div class='dimLayer'></div>");
        $(".dimLayer").css('height', $(document).height()).attr("target", type);
        popup.fadeIn(this.timer);
    },

    close: function (target) {
        var modal = $(target).closest(".modal-section");
        var dimLayer;
        if (modal.hasClass("type-confirm")) {
            dimLayer = $(".dimLayer[target=type-confirm]");
        } else if (modal.hasClass("type-alert")) {
            dimLayer = $(".dimLayer[target=type-alert]")
        } else {
            console.warn("close unknown target.")
            return;
        }
        modal.fadeOut(this.timer);
        setTimeout(function () {
            dimLayer != null ? dimLayer.remove() : "";
        }, this.timer);
    }
}





			var selected_day = $('.week a');
			selected_day.click(function(){
				$(this).css('color','#42C690');
				selected_day.not($(this)).css('color','#b3b3b3');
			});
			
			var selected_menu = $('.codrops-demos a');
			selected_menu.click(function(){
				$(this).css('color','#42C690');
				selected_menu.not($(this)).css('color','#b3b3b3');
			});

			var selected_home = $('.codrops-menu a');
			selected_home.click(function(){
				$(this).css('color','#42C690');
			    selected_home.not($(this)).css('color','#b3b3b3');
			});

            var fixed_menu = $('.fixed-menu a');
			fixed_menu.click(function(){
				$(this).css('color','#42C690');
			    fixed_menu.not($(this)).css('color','#b3b3b3');

			});


       
		</script>


	<script type='text/javascript'
		src='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js'></script>
	<script type='text/javascript'>$(document).ready(function(){

if($('.brands_slider').length)
{
var brandsSlider = $('.brands_slider');

brandsSlider.owlCarousel(
{
loop:true,
autoplay:true,
autoplayTimeout:0, 
/* 자동으로 넘어가게 하는거 ! */
nav:false,
dots:false,

autoWidth:false,
/* 자동 이미지 사이즈 맞춤 */
items:3, 
/* default 로 보여지는 아이텡 갯수  */
margin:2
/* 아이템간 마진  */
});

if($('.brands_prev').length)
{
var prev = $('.brands_prev');
prev.on('click', function()
{
brandsSlider.trigger('prev.owl.carousel');
});
}

if($('.brands_next').length)
{
var next = $('.brands_next');
next.on('click', function()
{
brandsSlider.trigger('next.owl.carousel');
});
}
}

});</script>
</body>
</html>
