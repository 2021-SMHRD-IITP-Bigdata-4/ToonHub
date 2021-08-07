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

</style>
</head>
<body oncontextmenu='return false' class='snippet-body skin-3'>
		<div class="container">
			<div class="content">

				<!-- 메인 머리  demo.css 에 있음-->
				<header class="codrops-header">  
					<!--디폴트로 toonhub 가 들어와있도록 하는방법 물어보기 ! -->
                    <div class="codrops-menu">
                        <strong><a href="ToonMain.jsp">Toonhub</a></strong>    <strong>|</strong> <strong ><a href="#" style="color:#42C690">커뮤니티</a></strong> <!-- 맨위 상단-->
                    </div>
					
					<!-- h1 태그 말고 다른걸로 바꿀것 !  -->
					<br><br>
					<nav class="codrops-head" style = "letter-spacing: 5px;">
						<a href="#"> 오늘의 작가 </a>
						<a href="Community.jsp" style="color: #42C690 "> 커뮤니티 </a>
						<a href="#"> 명예의전당 </a>
						<!-- <a class="current-demo" href="modal.html">Modal</a>  일단 세개 빼고 다 주석
						<a href="icons.html">Icons</a>
						<a href="bottoms-lide.html">Bottom Slide</a>
						<a href="reveal.html">Reveal</a> -->
					</nav>
					<br>
					<!-- 주간  -->
				</header>
				<div class = "cont_head">
					<div class = "cont_header">
					<strong>추천해요</strong></div>
					<div class = "cont_shortcut">
					<button>게시하기</button>
					</div>
					</div>
					<hr align="center" width="88%">
					<div class = "write_title">
				<input type="text" placeholder="제목">
				<select>
					<option value="none">장르</option>
					<option>로맨스</option>
					<option>액션</option>
					<option>판타지</option>
				</select>
				</div>
				<hr align="center" width="88%">
				<div class="write_cont">
					<textarea  placeholder = "내용을 입력하세요"></textarea>
				</div>
		<div class="foot">
			<table>
				<tl>
					<td>
		<a href = "ToonMain.jsp">
			<img src = "img/home.png">
			<span>Home</span></a>
			</td>
			<td>
		<a href = "bookmarkpage.jsp">
			<img src = "img/bookmark.png">
			<span>북마크</span></a>
			</td>
			<td>
		<a href = "Login.jsp" >
			<img src = "img/my.png">
			<span>My페이지</span></a>
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