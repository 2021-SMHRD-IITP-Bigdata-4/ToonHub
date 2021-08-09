<%@page import="model.ToonMemberDTO"%>
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

.today_writer{
	width:88%;
	height: 270px;
	background-color: #eeeeee;
	color: #616161;
	margin:auto;

}

.today_wrter_bottom{
	width:100%;
	height: flex;
	color: #616161;

}
textarea{
	width:80%;
	columns: 55;
	height: 40px;
	resize: none;
	font-size: 12px;
	padding: 5px;
	margin-left: 6%;
	border: none;
	background-color: #eeeeee;
	outline: none;
	
}
.for_writer{
	margin-top: 10px;
	font-size: 13px;
	font-weight: 300;
	margin-left:6%;
}
.for_writer ul{
	list-style: none;
	padding: 0;
	margin-bottom: 5px;
}
hr{
    width:94%;
    margin-left: 0;
    margin-top:2px;
    margin-bottom:2px;
}
</style>
</head>
<body oncontextmenu='return false' class='snippet-body skin-3'>
<%ToonMemberDTO info = (ToonMemberDTO) session.getAttribute("info"); %>
		<div class="container">
			<div class="content">

				<!-- ���� �Ӹ�  demo.css �� ����-->
				<header class="codrops-header">  
					<!--����Ʈ�� toonhub �� �����ֵ��� �ϴ¹�� ����� ! -->
                    <div class="codrops-menu">
                        <strong><a href="ToonMain.html">Toonhub</a></strong>    <strong>|</strong> <strong ><a href="#" style="color:#42C690">Ŀ�´�Ƽ</a></strong> <!-- ���� ���-->
                    </div>
					

					<br><br>
					<nav class="codrops-head" style = "letter-spacing: 5px;">
						<a href="today_writter.jsp" > ������ �۰� </a>
						<a href="Community.jsp" > Ŀ�´�Ƽ </a>
						<a href="WinnerToday.jsp" style ="color: #42C690;"> �������� </a>

					</nav>
					<br>
					<!-- �ְ�  -->
				</header>
				<div class = "today_writer">
					<div style="text-align: center; padding: 10px; font-size: 25px;">
					<strong >������ �����</strong>
					</div>
					<div style="text-align: center;">
						<img src="" width="120px" height="120px">
					</div>
					<div style="text-align: center; font-size:20px; font-weight: 500; margin-top: 10px;">
						<span>"ȫ�ֿ�"</span>
					</div>
					<div style="text-align: center; font-size: 15px;">
						<span>��ǥ�� : ���� ���� �ְ�</span>
					</div>
					<div style="text-align: center; font-size: 13px;">
						<span>" �����е��� ���� �ʹ� �����ؿ�! "</span>
					</div>
				</div>
				<div class="today_wrter_bottom">
					<div style="margin: 5px 6%; font-weight: 500; font-size: 15px;">
						<span>�۰����� �ϰ������</span>
					</div>
					<div>
						<form>
							<textarea placeholder="������ �Ѹ���!"></textarea>
							<%if (info != null){ %>
							<button style=" width:8%; height:40px; border:none;">���</button>
							<%} else { %>
							<button style=" width:8%; height:40px; border:none;" onclick = "constraints()">���</button>
							<%} %>
						</form>

						<div class="for_writer">
							<ul>
								<li style="font-weight: 600;">
									Ms.Hong
								</li>
								<li>
									�۰��� ¯
								</li>
							</ul>
							<hr>
							<ul>
								<li style="font-weight: 600;">
									Ms.Hong
								</li>
								<li>
									�۰��� ¯
								</li>
							</ul>
							<hr>
						</div>
					</div>
				</div>

				
				</div>
			</div><!-- /content -->
		</div><!-- /container -->
                <div class="foot" style="z-index: 1;">
				<table>
					<td><a href="ToonMain.jsp"> <img src="img/home.png">
							<span>Home</span></a></td>
					<td id = "bookmark">
							<%if (info != null){ %>
							<a href="bookmarkpage.jsp"> <img
							src="img/bookmark.png"> <span>�ϸ�ũ</span></a>
							<%} else{ %>
							<a href="ToonMain.jsp" onclick = "constraints()"> <img src="img/bookmark.png">
							<span>�ϸ�ũ</span></a>
							<%} %>
							</td>
					<td><a href="Login.jsp"> <img src="img/my.png">
					<%if (info != null) {%>
					<span>My������</span></a>
					<%} else{ %>
					<span>�α���</span>
					<%} %>
					</td>
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
					<script>
			function constraints(){
				alert("�α����� �ʿ��� �����Դϴ�");
			}
			</script>
</body>
</html>
