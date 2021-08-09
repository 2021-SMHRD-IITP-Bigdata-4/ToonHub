<%@page import="model.WebtoonDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.WebtoonDAO"%>
<%@page import="model.ToonMemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!doctype html>
<html class="no-js">
<head>
<meta charset='utf-8'>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<title>ToonHub MainPage</title>
<link
	href='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css'
	rel='stylesheet'>
<link href='https://use.fontawesome.com/releases/v5.8.1/css/all.css'
	rel='stylesheet'>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta name="description"
	content="Inspiration for drag and drop interactions for the modern UI" />
<meta name="keywords"
	content="drag and drop, interaction, inspiration, web design, ui" />
<meta name="author" content="Codrops" />
<link rel="shortcut icon" href="../favicon.ico">
<link rel="stylesheet" type="text/css" href="css/normalize.css" />
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome-4.2.0/css/font-awesome.min.css" />
<link rel="stylesheet" type="text/css" href="css/demo.css" />
<link rel="stylesheet" type="text/css" href="css/modal.css" />
<script type='text/javascript'
	src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<script src="js/modernizr.custom.js"></script>

<style>
body {
	background: #eee;
}

.on row {
	color: #42C690;
}

.main_more {
	float: right;
	border-radius: 3px;
	margin-right: 20px;
	color: #363636;
}

.main_a {
	color: #616161 !important;
}
</style>
</head>
<body oncontextmenu='return false' class='snippet-body skin-3'>
	<%
	ToonMemberDTO info = (ToonMemberDTO) session.getAttribute("info");
	WebtoonDAO dao = new WebtoonDAO();
	ArrayList<WebtoonDTO> romance = dao.romance();
	ArrayList<WebtoonDTO> drama = dao.drama();
	ArrayList<WebtoonDTO> action = dao.action();
	ArrayList<WebtoonDTO> fantasy = dao.fantasy();
	ArrayList<WebtoonDTO> omnibus = dao.omnibus();
	ArrayList<WebtoonDTO> gag = dao.gag();

	String img;
	%>
	<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
	<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.css">
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.js"></script>


	<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
	<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.css">

	<div class="container">
		<!-- Top Navigation -->
		<div class="content">

			<header class="codrops-header">
				<!--����Ʈ�� toonhub �� �����ֵ��� �ϴ¹�� ����� ! -->
				<div class="codrops-menu">
					<strong><a href="ToonMain.jsp" style="color: #42C690">Toonhub</a></strong>
					<strong>|</strong> <strong><a href="Community.jsp">Ŀ�´�Ƽ</a></strong>
					<!-- ���� ���-->
					<a href="Search.jsp"><img src="/img/search.png"
						style="width: 4%; height: 4%; float: right; margin-right: 6%;"></a>
				</div>
				<br>
				<br>
			</header>

			<div id="wrap">
				<ul class="codrops-demos">
					<a href="ToonMain.jsp"> ���Ϻ� </a>
					<a href="ToonGenre.jsp" style="color: #42C690"> �帣 </a>
					<a href="platform.jsp"> �÷��� </a>
				</ul>
				<section class="tabArea">
					<div class="tabBox on">
						<div id="grid" class="grid clearfix">



							<nav class="toon1">
								<strong>#�θǽ�</strong><a href="GenreAll.jsp" class="main_more">������
									></a><br>
								<br>
								<div class="toon_slider_box">
								<div class="brands">
									<div class="container">
										<div class="brands_slider_container">
											<div class="owl-carousel owl-theme brands_slider">
											<%for(int i=0; i<romance.size(); i++){ %>
											<%img= romance.get(i).getWebfile();%>
											<%img = img.replace("?", "");%>
												<div class="owl-item">
													<div
														class="brands_item d-flex flex-column justify-content-center">
														<a href="Detail_Genre.jsp?title=<%=romance.get(i).getWebtitle()%>">
															
															<img src="./toon_image/<%=img%>" width="100px" height="100px"></a>
															</div>
															<div class="info">
																<strong><%=romance.get(i).getWebtitle()%></strong><br> 
																<span><%=romance.get(i).getWebwriter()%></span><br>
															</div>
													</div>
												<%
													}
													%>
											</div>
											</div>
										</div>
									</div>
								</div>
							</nav>
							<br>

						<nav class="toon1">
								<strong># ���</strong><a href="GenreAll.jsp" class="main_more">������
									></a><br>
								<br>
								<div class="toon_slider_box">
								<div class="brands">
									<div class="container">
										<div class="brands_slider_container">
											<div class="owl-carousel owl-theme brands_slider">
											<%for(int i=0; i<drama.size(); i++){ %>
											<%img= drama.get(i).getWebfile();%>
											<%img = img.replace("?", "");%>
												<div class="owl-item">
													<div
														class="brands_item d-flex flex-column justify-content-center">
														<a href="Detail_Genre.jsp">
															<img src="./toon_image/<%=img%>" width="100px" height="100px"></a>
															</div>
															<div class="info">
																<strong><%=drama.get(i).getWebtitle()%></strong><br> 
																<span><%=drama.get(i).getWebwriter()%></span><br>
															</div>
													</div>
												<%
													}
													%>
											</div>
											</div>
										</div>
									</div>
								</div>
							</nav>
							<br>
							
							

						<nav class="toon1">
								<strong># �׼�</strong><a href="GenreAll.jsp" class="main_more">������
									></a><br>
								<br>
								<div class="toon_slider_box">
								<div class="brands">
									<div class="container">
										<div class="brands_slider_container">
											<div class="owl-carousel owl-theme brands_slider">
											<%for(int i=0; i<action.size(); i++){ %>
											<%img= action.get(i).getWebfile();%>
											<%img = img.replace("?", "");%>
												<div class="owl-item">
													<div
														class="brands_item d-flex flex-column justify-content-center">
														<a href="Detail_Genre.jsp">
															<img src="./toon_image/<%=img%>" width="100px" height="100px"></a>
															</div>
															<div class="info">
																<strong><%=action.get(i).getWebtitle()%></strong><br> 
																<span><%=action.get(i).getWebwriter()%></span><br>
															</div>
													</div>
												<%
													}
													%>
											</div>
											</div>
										</div>
									</div>
								</div>
							</nav>
							<br>


						<nav class="toon1">
								<strong># ��Ÿ��</strong><a href="GenreAll.jsp" class="main_more">������
									></a><br>
								<br>
								<div class="toon_slider_box">
								<div class="brands">
									<div class="container">
										<div class="brands_slider_container">
											<div class="owl-carousel owl-theme brands_slider">
											<%for(int i=0; i<fantasy.size(); i++){ %>
											<%img= fantasy.get(i).getWebfile();%>
											<%img = img.replace("?", "");%>
												<div class="owl-item">
													<div
														class="brands_item d-flex flex-column justify-content-center">
														<a href="Detail_Genre.jsp">
															<img src="./toon_image/<%=img%>" width="100px" height="100px"></a>
															</div>
															<div class="info">
																<strong><%=fantasy.get(i).getWebtitle()%></strong><br> 
																<span><%=fantasy.get(i).getWebwriter()%></span><br>
															</div>
													</div>
												<%
													}
													%>
											</div>
											</div>
										</div>
									</div>
								</div>
							</nav>
							<br>


						<nav class="toon1">
								<strong># �ȴϹ���</strong><a href="GenreAll.jsp" class="main_more">������
									></a><br>
								<br>
								<div class="toon_slider_box">
								<div class="brands">
									<div class="container">
										<div class="brands_slider_container">
											<div class="owl-carousel owl-theme brands_slider">
											<%for(int i=0; i<omnibus.size(); i++){ %>
											<%img= omnibus.get(i).getWebfile();%>
											<%img = img.replace("?", "");%>
												<div class="owl-item">
													<div
														class="brands_item d-flex flex-column justify-content-center">
														<a href="Detail_Genre.jsp">
															<img src="./toon_image/<%=img%>" width="100px" height="100px"></a>
															</div>
															<div class="info">
																<strong><%=omnibus.get(i).getWebtitle()%></strong><br> 
																<span><%=omnibus.get(i).getWebwriter()%></span><br>
															</div>
													</div>
												<%
													}
													%>
											</div>
											</div>
										</div>
									</div>
								</div>
							</nav>
							<br>


						<nav class="toon1">
								<strong># ����</strong><a href="GenreAll.jsp" class="main_more">������
									></a><br>
								<br>
								<div class="toon_slider_box">
								<div class="brands">
									<div class="container">
										<div class="brands_slider_container">
											<div class="owl-carousel owl-theme brands_slider">
											<%for(int i=0; i<gag.size(); i++){ %>
											<%img= gag.get(i).getWebfile();%>
											<%img = img.replace("?", "");%>
												<div class="owl-item">
													<div
														class="brands_item d-flex flex-column justify-content-center">
														<a href="Detail_Genre.jsp">
															<img src="./toon_image/<%=img%>" width="100px" height="100px"></a>
															</div>
															<div class="info">
																<strong><%=gag.get(i).getWebtitle()%></strong><br> 
																<span><%=gag.get(i).getWebwriter()%></span><br>
															</div>
													</div>
												<%
													}
													%>
											</div>
											</div>
										</div>
									</div>
								</div>
							</nav>
							<br>



						</div>
					</div>
				</section>
			</div>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<div class="foot" style="z-index: 1;">
				<table>
					<td><a href="ToonMain.jsp"> <img src="img/home.png">
							<span>Home</span></a></td>
					<td id="bookmark">
						<%
						if (info != null) {
						%> <a href="bookmarkpage.jsp"> <img
							src="img/bookmark.png"> <span>�ϸ�ũ</span></a> <%
 } else {
 %> <a
						href="ToonMain.jsp" onclick="constraints()"> <img
							src="img/bookmark.png"> <span>�ϸ�ũ</span></a> <%
 }
 %>
					</td>
					<td><a href="Login.jsp"> <img src="img/my.png"> <%
 if (info != null) {
 %>
							<span>My������</span></a> <%
 } else {
 %> <span>�α���</span> <%
 }
 %></td>
				</table>
			</div>
			<script src="js/jquery-3.6.0.min.js"></script>
			<script>
				$(document).ready(function() {
					$(".tabArea .week li a").on("click", function() { // �ش� ��Ҹ� Ŭ���ϴ� �� �ڽ��� index ��ȣ�� �����´�. [0], [1] 
						const num = $(".tabArea .week li a").index($(this)); // ������ ����Ǿ� �ִ� on class ���� 
						$(".tabArea .week li").removeClass("on");
						$(".tabArea .tabBox").removeClass("on"); // ���� ��� Ŭ���� on class �߰� 
						$('.tabArea .week li:eq(' + num + ')').addClass("on");
						$('.tabArea .tabBox:eq(' + num + ')').addClass("on");
					});
				});
			</script>
			<script src="js/draggabilly.pkgd.min.js"></script>
			<script src="js/dragdrop.js"></script>
			<script
				src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.js"></script>
			<script type='text/javascript'>
				/*  �ƴ� ���ڱ� �־ȵ� .. ^^ */
				var selected_day = $('.week a');
				selected_day.click(function() {
					$(this).css('color', '#42C690');
					selected_day.not($(this)).css('color', '#b3b3b3');
				});

				var selected_menu = $('.codrops-demos a');
				selected_menu.click(function() {
					$(this).css('color', '#42C690');
					selected_menu.not($(this)).css('color', '#b3b3b3');
				});

				var selected_home = $('.codrops-menu a');
				selected_home.click(function() {
					$(this).css('color', '#42C690');
					selected_home.not($(this)).css('color', '#b3b3b3');
				});
			</script>


			<script type='text/javascript'
				src='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js'></script>
			<script type='text/javascript'>
				$(document).ready(function() {

					if ($('.brands_slider').length) {
						var brandsSlider = $('.brands_slider');

						brandsSlider.owlCarousel({
							loop : true,
							autoplay : true,
							autoplayTimeout : 0,
							/* �ڵ����� �Ѿ�� �ϴ°� ! */
							nav : false,
							dots : false,

							autoWidth : false,
							/* �ڵ� �̹��� ������ ���� */
							items : 3,
							/* default �� �������� ������ ����  */
							margin : 2
						/* �����۰� ����  */
						});

						if ($('.brands_prev').length) {
							var prev = $('.brands_prev');
							prev.on('click', function() {
								brandsSlider.trigger('prev.owl.carousel');
							});
						}

						if ($('.brands_next').length) {
							var next = $('.brands_next');
							next.on('click', function() {
								brandsSlider.trigger('next.owl.carousel');
							});
						}
					}
				});
			</script>
			<script>
				function constraints() {
					alert("�α����� �ʿ��� �����Դϴ�");
				}
			</script>
</body>
</html>
