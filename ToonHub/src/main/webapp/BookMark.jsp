<%@page import="java.util.ArrayList"%>
<%@page import="model.BookMarkDTO"%>
<%@page import="model.BookMarkDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	width:15%;
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
	width:120px;
	height:30px;
	text-align: center;
	vertical-align: middle;
	margin-top: 10px;
	margin-left: 20%;
	font-size: 15px;
	line-height: 30px;
	color:#b3b3b3;
}
.genre span{
	text-align:center;
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
<%
String nick = (String)session.getAttribute("nick");
String writter = (String)request.getAttribute("writter");
BookMarkDAO dao = new BookMarkDAO();
ArrayList<BookMarkDTO> list = dao.SelectMark(nick);
String img;%>
		<div class="container">
			<div class="content">

				<!-- 메인 머리  demo.css 에 있음-->
				<header class="codrops-header">  
					<!--디폴트로 toonhub 가 들어와있도록 하는방법 물어보기 ! -->
                    <div class="codrops-menu">
                        <strong><a href="ToonMain.jsp" style="color:#42C690">Toonhub</a></strong>    <strong>|</strong> <strong ><a href="Community.jsp">커뮤니티</a></strong> <!-- 맨위 상단-->
                    </div>
					
					<!-- h1 태그 말고 다른걸로 바꿀것 !  -->
					<br><br>
					<!-- 주간  -->
				</header>
				<div id="wrap">
                    <ul class="codrops-demos">
						<a href="ToonMain.jsp"> 요일별 </a>
						<a href="ToonGenre.jsp"> 장르 </a>
						<a href="platform.jsp"> 플랫폼 </a>
                    </ul>
				<div class = "cont_head">
					<div class = "cont_header">
					<strong style="font-size: 20px;">찜 목록</strong></div>
				</div>
				<div class = "cont_list">
				<%for(int i = 0 ; i < list.size(); i++){ %>
				<div>
					<a href="#">
					<div class="img_place">
						<img src="./toon_img/<%=list.get(i).getFile()%>">
					</div>
					<div class="cont_place">
						<p><strong><%=list.get(i).getWebTitle() %></strong></p>
						<p style="font-size: 15px;"><%=list.get(i).getWritter() %></p>
					</div>
					<div class="genre">
						<span>#<%=list.get(i).getGenre() %></span>
					</div>
					</a>
					<hr>
				</div>
				<%} %>
				</div>				
				</div>
			</div><!-- /content -->
		</div><!-- /container -->
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
		<a href = "BookMark.jsp">
			<img src = "img/bookmark.png">
			<span>북마크</span></a>
			</td>
			<td>
		<a href = "Mypage.jsp" >
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

