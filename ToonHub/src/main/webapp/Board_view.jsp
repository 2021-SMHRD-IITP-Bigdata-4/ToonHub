<%@page import="model.BoardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.BoardDAO"%>
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
</style>
</head>
<body oncontextmenu='return false' class='snippet-body skin-3'>
<%
String seq = request.getParameter("num");
System.out.println(seq);
BoardDAO dao = new BoardDAO();
ArrayList<BoardDTO> list = dao.Selectone(seq);%>
		<div class="container">
			<div class="content">

				<!-- ���� �Ӹ�  demo.css �� ����-->
				<header class="codrops-header">  
					<!--����Ʈ�� toonhub �� �����ֵ��� �ϴ¹�� ����� ! -->
                    <div class="codrops-menu">
                        <strong><a href="ToonMain.html">Toonhub</a></strong>    <strong>|</strong> <strong ><a href="#" style="color:#42C690">Ŀ�´�Ƽ</a></strong> <!-- ���� ���-->
                    </div>
					
					<!-- h1 �±� ���� �ٸ��ɷ� �ٲܰ� !  -->
					<br><br>
					<nav class="codrops-head" style = "letter-spacing: 5px;">
						<a href="today_writter.jsp"> ������ �۰� </a>
						<a href="Community.jsp" style="color: #42C690 "> Ŀ�´�Ƽ </a>
						<a href="WinnerToday.jsp"> �������� </a>
						<!-- <a class="current-demo" href="modal.html">Modal</a>  �ϴ� ���� ���� �� �ּ�
						<a href="icons.html">Icons</a>
						<a href="bottoms-lide.html">Bottom Slide</a>
						<a href="reveal.html">Reveal</a> -->
					</nav>
					<br>
					<!-- �ְ�  -->
				</header>
				<div class = "cont_head">
					<div class = "cont_header">
					<strong>�����Խ���</strong></div>
					</div>
					<hr align="center" width="88%">
					<div class="view_title">
						<span class = "title"><%=list.get(0).getBoardTitle() %></span>
						<div class = "view_writter">
						<span class = "writter"><%=list.get(0).getNick() %></span>
						<p class = "date"><%=list.get(0).getBoardDate() %></p>
						</div>
					</div>
				<hr align="center" width="88%">
				<div class="view_cont">
				<span><%=list.get(0).getBoardContent() %></span>
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
