<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html class="no-js">
<head>
<meta charset='utf-8'>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<title>Snippet - BBBootstrap</title>
<link
	href='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css'
	rel='stylesheet'>
<link href='https://use.fontawesome.com/releases/v5.8.1/css/all.css'
	rel='stylesheet'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<meta name="description" content="Inspiration for drag and drop interactions for the modern UI" />
		<meta name="keywords" content="drag and drop, interaction, inspiration, web design, ui" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.2.0/css/font-awesome.min.css" />
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/modal.css" />
<script type='text/javascript'
	src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
    <script src="js/modernizr.custom.js"></script>

<style>
body {
	background: #eee;
}

/* ���� ���� �׸�ĭ  */
.brands {
	width: 100%;
	padding-top: 2px;
	padding-bottom: 10px
}

.brands_slider_container {
	height: 150px;
	border: solid 1px #eeeeee;
	/*     box-shadow: 0px 1px 5px rgba(0, 0, 0, 0.1); */
	padding-left: 3px;
	padding-right: 3px;
	background: #eeeeee;
}

/* �����̵� �ڽ� �� ���� ���� */
.brands_slider {
	height: 100%;
	margin-top: 3px
}

.brands_item {
	height: 100%
}

/* �̹��� ������ */
.brands_item img {
	max-width: 100%
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

		<div class="container">
			<!-- Top Navigation -->
			<div class="codrops-top clearfix">
				<a class="codrops-icon codrops-icon-prev" href="#"><span>�ڷΰ���</span></a>
			</div>
			<div class="content">

				<!-- ���� �Ӹ�  demo.css �� ����-->
				<header class="codrops-header">  
					<!--����Ʈ�� toonhub �� �����ֵ��� �ϴ¹�� ����� ! -->
                    <div class="codrops-menu">
                        <strong><a href="#">Toonhub</a></strong>    <strong>|</strong> <strong ><a href="#">Ŀ�´�Ƽ</a></strong> <!-- ���� ���-->
                    </div>
					
					<!-- h1 �±� ���� �ٸ��ɷ� �ٲܰ� !  -->
					<br><br>
					<nav class="codrops-demos">
						<a href="#"> ���Ϻ� </a>
						<a href="#"> �帣 </a>
						<a href="#"> �÷��� </a>
						<!-- <a class="current-demo" href="modal.html">Modal</a>  �ϴ� ���� ���� �� �ּ�
						<a href="icons.html">Icons</a>
						<a href="bottoms-lide.html">Bottom Slide</a>
						<a href="reveal.html">Reveal</a> -->
					</nav>
					<br>
					<!-- �ְ�  -->
					<nav class = "week">
						<a href="#">��</a>
						<a href="#">ȭ</a>
						<a href="#">��</a>
						<a href="#">��</a>
						<a href="#">��</a>
						<a href="#">��</a>
						<a href="#">��</a>
					</nav>
				</header>
					
				<div id="grid" class="grid clearfix">
                    <div class ="checkbox">
                        <input type="checkbox" value="������" name = "����" checked >������
                        <input type="checkbox" value="�ϰ�" name ="����2" >�ϰ�
                    </div>
                    

					<nav class = "best">
						<strong>���� ! ����Ʈ</strong><br><br>
						<div class ="toon_slider_box">
                            <div class="brands">
                                <div class="container">
                                    <div class="brands_slider_container">
                                        <div class="owl-carousel owl-theme brands_slider">
                                            <div class="owl-item">
                                                <div class="brands_item d-flex flex-column justify-content-center">
                                                    <a href="https://www.naver.com"><img src="nemo.png" width="120px" height = "120px"></a>
                                                    <!-- �׸� ������ ���̹��� �̵� �� �� �ֵ��� �ϱ�  -->
                                                </div>
                                                <div class = "info">
                                                    <strong>����111</strong><br>
                                                    <span>�۰� �̸�</span><br>
                                                </div>
                                            </div>
                                            <div class="owl-item">
                                                <div class="brands_item d-flex flex-column justify-content-center">
                                                    <img src="nemo.png" width="120px" height = "120px">
                                                </div>
                                                <div class = "info">
                                                    <strong>����</strong><br>
                                                    <span>�۰� �̸�</span><br>
                                                </div>
                                            </div>
                                            <div class="owl-item">
                                                <div class="brands_item d-flex flex-column justify-content-center">
                                                    <img src="nemo.png" width="120px" height = "120px">
                                                </div>
                                                <div class = "info">
                                                    <strong>����</strong><br>
                                                    <span>�۰� �̸�</span><br>
                                                </div>
                                            </div>
                                            <div class="owl-item">
                                                <div class="brands_item d-flex flex-column justify-content-center">
                                                    <img src="nemo.png" width="120px" height = "120px">
                                                </div>
                                                <div class = "info">
                                                    <strong>����</strong><br>
                                                    <span>�۰� �̸�</span><br>
                                                </div>
                                            </div>
                                            <div class="owl-item">
                                                <div class="brands_item d-flex flex-column justify-content-center">
                                                    <img src="nemo.png" width="120px" height = "120px"">
                                                </div>
                                                <div class = "info">
                                                    <strong>����</strong><br>
                                                    <span>�۰� �̸�</span><br>
                                                </div>
                                            </div>
                                            <div class="owl-item">
                                                <div class="brands_item d-flex flex-column justify-content-center">
                                                    <img src="nemo.png" width="120px" height = "120px"">
                                                </div>
                                                <div class = "info">
                                                    <strong>����</strong><br>
                                                    <span>�۰� �̸�</span><br>
                                                </div>
                                            </div>
                                            <div class="owl-item">
                                                <div class="brands_item d-flex flex-column justify-content-center">
                                                    <img src="nemo.png" width="120px" height = "120px"">
                                                </div>
                                                <div class = "info">
                                                    <strong>����</strong><br>
                                                    <span>�۰� �̸�</span><br>
                                                </div>
                                            </div>
                                            <div class="owl-item">
                                                <div class="brands_item d-flex flex-column justify-content-center">
                                                    <img src="nemo.png" width="120px" height = "120px"">
                                                </div>
                                                <div class = "info">
                                                    <strong>����</strong><br>
                                                    <span>�۰� �̸�</span><br>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Brands Slider Navigation -->
                                        <!-- <div class="brands_nav brands_prev"><i></i></div>
                                            <div class="brands_nav brands_next"><i></i></div> -->
                                    </div>
                                    <!-- </div>
                                </div> -->
                                </div>
                            </div>
						</div>
					</nav><br>

					<nav class = "toon1">
						<strong>����</strong><span> | BoomToon</span><br><br>
                                <div class="brands">
                                    <div class="container">
                                        <div class="brands_slider_container">
                                            <div class="owl-carousel owl-theme brands_slider">
                                                <div class="owl-item">
                                                    <div class="brands_item d-flex flex-column justify-content-center">
                                                        <img src="nemo.png" width="120px" height = "120px">
                                                    </div>
                                                </div>
                                                <div class="owl-item">
                                                    <div class="brands_item d-flex flex-column justify-content-center">
                                                        <img src="nemo.png" width="120px" height = "120px">
                                                    </div>
                                                </div>
                                                <div class="owl-item">
                                                    <div class="brands_item d-flex flex-column justify-content-center">
                                                        <img src="nemo.png" width="120px" height = "120px">
                                                    </div>
                                                </div>
                                                <div class="owl-item">
                                                    <div class="brands_item d-flex flex-column justify-content-center">
                                                        <img src="nemo.png" width="120px" height = "120px">
                                                    </div>
                                                </div>
                                                <div class="owl-item">
                                                    <div class="brands_item d-flex flex-column justify-content-center">
                                                        <img src="nemo.png" width="120px" height = "120px"">
                                                    </div>
                                                </div>
                                                <div class="owl-item">
                                                    <div class="brands_item d-flex flex-column justify-content-center">
                                                        <img src="nemo.png" width="120px" height = "120px"">
                                                    </div>
                                                </div>
                                                <div class="owl-item">
                                                    <div class="brands_item d-flex flex-column justify-content-center">
                                                        <img src="nemo.png" width="120px" height = "120px"">
                                                    </div>
                                                </div>
                                                <div class="owl-item">
                                                    <div class="brands_item d-flex flex-column justify-content-center">
                                                        <img src="nemo.png" width="120px" height = "120px"">
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Brands Slider Navigation -->
                                            <!-- <div class="brands_nav brands_prev"><i></i></div>
                                                <div class="brands_nav brands_next"><i></i></div> -->
                                        </div>
                                        <!-- </div>
                                    </div> -->
                                    </div>
                                </div>

						
					</nav><br>

					<nav class = "toon2">
						<strong>ž��</strong><span> | AToon</span><br><br>
						<div class ="toon_slider_box">
                            <div class="brands">
                                <div class="container">
                                    <div class="brands_slider_container">
                                        <div class="owl-carousel owl-theme brands_slider">
                                            <div class="owl-item">
                                                <div class="brands_item d-flex flex-column justify-content-center">
                                                    <img src="nemo.png" width="120px" height = "120px">
                                                </div>
                                            </div>
                                            <div class="owl-item">
                                                <div class="brands_item d-flex flex-column justify-content-center">
                                                    <img src="nemo.png" width="120px" height = "120px">
                                                </div>
                                                <div class = "info">
                                                    <strong>����</strong><br>
                                                    <span>�۰� �̸�</span><br>
                                                </div>
                                            </div>
                                            <div class="owl-item">
                                                <div class="brands_item d-flex flex-column justify-content-center">
                                                    <img src="nemo.png" width="120px" height = "120px">
                                                </div>
                                                <div class = "info">
                                                    <strong>����</strong><br>
                                                    <span>�۰� �̸�</span><br>
                                                </div>
                                            </div>
                                            <div class="owl-item">
                                                <div class="brands_item d-flex flex-column justify-content-center">
                                                    <img src="nemo.png" width="120px" height = "120px">
                                                </div>
                                                <div class = "info">
                                                    <strong>����</strong><br>
                                                    <span>�۰� �̸�</span><br>
                                                </div>
                                            </div>
                                            <div class="owl-item">
                                                <div class="brands_item d-flex flex-column justify-content-center">
                                                    <img src="nemo.png" width="120px" height = "120px"">
                                                </div>
                                                <div class = "info">
                                                    <strong>����</strong><br>
                                                    <span>�۰� �̸�</span><br>
                                                </div>
                                            </div>
                                            <div class="owl-item">
                                                <div class="brands_item d-flex flex-column justify-content-center">
                                                    <img src="nemo.png" width="120px" height = "120px"">
                                                </div>
                                                <div class = "info">
                                                    <strong>����</strong><br>
                                                    <span>�۰� �̸�</span><br>
                                                </div>
                                            </div>
                                            <div class="owl-item">
                                                <div class="brands_item d-flex flex-column justify-content-center">
                                                    <img src="nemo.png" width="120px" height = "120px"">
                                                </div>
                                                <div class = "info">
                                                    <strong>����</strong><br>
                                                    <span>�۰� �̸�</span><br>
                                                </div>
                                            </div>
                                            <div class="owl-item">
                                                <div class="brands_item d-flex flex-column justify-content-center">
                                                    <img src="nemo.png" width="120px" height = "120px"">
                                                </div>
                                                <div class = "info">
                                                    <strong>����</strong><br>
                                                    <span>�۰� �̸�</span><br>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Brands Slider Navigation -->
                                        <!-- <div class="brands_nav brands_prev"><i></i></div>
                                            <div class="brands_nav brands_next"><i></i></div> -->
                                    </div>
                                    <!-- </div>
                                </div> -->
                                </div>
                            </div>
						</div>
					</nav><br>
                    
                    <nav class = "toon2">
						<strong>A��</strong><span> | AToon</span><br><br>
						<div class ="toon_slider_box">
                            <div class="brands">
                                <div class="container">
                                    <div class="brands_slider_container">
                                        <div class="owl-carousel owl-theme brands_slider">
                                            <div class="owl-item">
                                                <div class="brands_item d-flex flex-column justify-content-center">
                                                    <img src="nemo.png" width="120px" height = "120px">
                                                </div>
                                                <div class = "info">
                                                    <strong>����</strong><br>
                                                    <span>�۰� �̸�</span><br>
                                                </div>
                                            </div>
                                            <div class="owl-item">
                                                <div class="brands_item d-flex flex-column justify-content-center">
                                                    <img src="nemo.png" width="120px" height = "120px">
                                                </div>
                                                <div class = "info">
                                                    <strong>����</strong><br>
                                                    <span>�۰� �̸�</span><br>
                                                </div>
                                            </div>
                                            <div class="owl-item">
                                                <div class="brands_item d-flex flex-column justify-content-center">
                                                    <img src="nemo.png" width="120px" height = "120px">
                                                </div>
                                                <div class = "info">
                                                    <strong>����</strong><br>
                                                    <span>�۰� �̸�</span><br>
                                                </div>
                                            </div>
                                            <div class="owl-item">
                                                <div class="brands_item d-flex flex-column justify-content-center">
                                                    <img src="nemo.png" width="120px" height = "120px">
                                                </div>
                                                <div class = "info">
                                                    <strong>����</strong><br>
                                                    <span>�۰� �̸�</span><br>
                                                </div>
                                            </div>
                                            <div class="owl-item">
                                                <div class="brands_item d-flex flex-column justify-content-center">
                                                    <img src="nemo.png" width="120px" height = "120px"">
                                                </div>
                                                <div class = "info">
                                                    <strong>����</strong><br>
                                                    <span>�۰� �̸�</span><br>
                                                </div>
                                            </div>
                                            <div class="owl-item">
                                                <div class="brands_item d-flex flex-column justify-content-center">
                                                    <img src="nemo.png" width="120px" height = "120px"">
                                                </div>
                                                <div class = "info">
                                                    <strong>����</strong><br>
                                                    <span>�۰� �̸�</span><br>
                                                </div>
                                            </div>
                                            <div class="owl-item">
                                                <div class="brands_item d-flex flex-column justify-content-center">
                                                    <img src="nemo.png" width="120px" height = "120px"">
                                                </div>
                                                <div class = "info">
                                                    <strong>����</strong><br>
                                                    <span>�۰� �̸�</span><br>
                                                </div>
                                            </div>
                                            <div class="owl-item">
                                                <div class="brands_item d-flex flex-column justify-content-center">
                                                    <img src="nemo.png" width="120px" height = "120px"">
                                                </div>
                                                <div class = "info">
                                                    <strong>����</strong><br>
                                                    <span>�۰� �̸�</span><br>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Brands Slider Navigation -->
                                        <!-- <div class="brands_nav brands_prev"><i></i></div>
                                            <div class="brands_nav brands_next"><i></i></div> -->
                                    </div>
                                    <!-- </div>
                                </div> -->
                                </div>
                            </div>
						</div>
					</nav><br>

				</div>

			</div><!-- /content -->
		</div><!-- /container -->

		<script src="js/jquery-3.6.0.min.js"></script>
		<script src="js/draggabilly.pkgd.min.js"></script>
		<script src="js/dragdrop.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.js"></script>
		<script type='text/javascript' src='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js'></script>
        <script type='text/javascript'>
            /*  �ƴ� ���ڱ� �־ȵ� .. ^^ */
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
/* �ڵ����� �Ѿ�� �ϴ°� ! */
nav:false,
dots:false,

autoWidth:false,
/* �ڵ� �̹��� ������ ���� */
items:3, 
/* default �� �������� ������ ����  */
margin:2
/* �����۰� ����  */
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