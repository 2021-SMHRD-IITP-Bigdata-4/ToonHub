<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!doctype html>
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
    <script src="js/modernizr.custom.js"></script>

<style>
body {
	background: #eee;
}
img{
	width:100px;
	height:100px;
}
.img_place{
	float:left;
}
.cont_list{
	margin: 0px 5%;
}
.cont_place p{
	margin-bottom: 3px;
	padding-left:15%;
	font-size: 20px;
	color:#b3b3b3;
	width:80%;
	position:relative;
}
.genre{
	background-color: #eee;
	width:100px;
	height:30px;
	text-align: center;
	vertical-align: middle;
	margin-left:15%;
	margin-top: 10px;
	font-size: 15px;
	line-height: 30px;
	color:#b3b3b3;
}
.cont_list a{
	text-decoration: none;
}
hr{
	width:100%;
}
</style>
</head>
<body oncontextmenu='return false' class='snippet-body skin-3'>
		<div class="container">
			<div class="content">

				<!-- ���� �Ӹ�  demo.css �� ����-->
				<header class="codrops-header">  
					<!--����Ʈ�� toonhub �� �����ֵ��� �ϴ¹�� ����� ! -->
                    <div class="codrops-menu">
                        <strong><a href="ToonMain.html" style="color:#42C690">Toonhub</a></strong>    <strong>|</strong> <strong ><a href="#">Ŀ�´�Ƽ</a></strong> <!-- ���� ���-->
                    </div>
					
					<!-- h1 �±� ���� �ٸ��ɷ� �ٲܰ� !  -->
					<br><br>
					<!-- �ְ�  -->
				</header>
				<div id="wrap">
                    <ul class="codrops-demos">
						<a href="ToonMain.jsp"> ���Ϻ� </a>
						<a href="ToonGenre.jsp"> �帣 </a>
						<a href="platform.jsp"> �÷��� </a>
                    </ul>
				<div class = "cont_head">
					<div class = "cont_header">
					<strong style="font-size: 20px;">�� ���</strong></div>
				</div>
				<div class = "cont_list">
				<div>
					<a href="#">
					<div class="img_place">
						<img src="nemo.png">
					</div>
					<div class="cont_place">
						<p><strong>123</strong></p>
						<p style="font-size: 15px;">123</p>
					</div>
					<div class="genre">
						<span>#����/������</span>
					</div>
					</a>
					<hr>
				</div>
				<div>
					<a href="#">
					<div class="img_place">
						<img src="nemo.png">
					</div>
					<div class="cont_place">
						<p><strong>123</strong></p>
						<p style="font-size: 15px;">123</p>
					</div>
					<div class="genre">
						<span>#����/������</span>
					</div>
					</a>
					<hr>
				</div>				<div>
					<a href="#">
					<div class="img_place">
						<img src="nemo.png">
					</div>
					<div class="cont_place">
						<p><strong>123</strong></p>
						<p style="font-size: 15px;">123</p>
					</div>
					<div class="genre">
						<span>#����/������</span>
					</div>
					</a>
					<hr>
				</div>				<div>
					<a href="#">
					<div class="img_place">
						<img src="nemo.png">
					</div>
					<div class="cont_place">
						<p><strong>123</strong></p>
						<p style="font-size: 15px;">123</p>
					</div>
					<div class="genre">
						<span>#����/������</span>
					</div>
					</a>
					<hr>
				</div>
				</div>
			</div><!-- /content -->
		</div><!-- /container -->
		</div>
		<div class="foot">
			<table>
				<tl>
					<td>
		<a href = "ToonMain.html">
			<img src = "img/home.png">
			<span>Home</span></a>
			</td>
			<td>
		<a href = "bookmarkpage.html">
			<img src = "img/bookmark.png">
			<span>�ϸ�ũ</span></a>
			</td>
			<td>
		<a href = "Login.html" >
			<img src = "img/my.png">
			<span>My������</span></a>
			</td>
			</tl>
			</table>
		</div>

		<script src="js/jquery-3.6.0.min.js"></script>
		<script type='text/javascript'>

			var selected_menu = $('.codrops-head a');
			selected_menu.click(function(){
				$(this).css('color','#42C690');
				selected_menu.not($(this)).css('color','#b3b3b3');
			});
       
		</script>
</body>
</html>
