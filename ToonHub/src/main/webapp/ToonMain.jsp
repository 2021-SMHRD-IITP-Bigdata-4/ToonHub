<%@page import="model.ToonMemberDTO"%>
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
</style>
</head>
<body oncontextmenu='return false' class='snippet-body skin-3'>
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

	<%
	WebtoonDAO dao = new WebtoonDAO();
	ArrayList<WebtoonDTO> monlist = dao.monday();
	ArrayList<WebtoonDTO> tuelist = dao.tuelist();
	ArrayList<WebtoonDTO> wedlist = dao.wedlist();
	ArrayList<WebtoonDTO> thulist = dao.thulist();
	ArrayList<WebtoonDTO> frilist = dao.frilist();
	ArrayList<WebtoonDTO> satlist = dao.satlist();
	ArrayList<WebtoonDTO> sunlist = dao.sunlist();
	ArrayList<WebtoonDTO> endlist = dao.endlist();
	ToonMemberDTO info = (ToonMemberDTO) session.getAttribute("info");

	String img;
	%>

	<div class="container">
		<!-- Top Navigation -->
		<div class="content">

			<header class="codrops-header">
				<!--디폴트로 toonhub 가 들어와있도록 하는방법 물어보기 ! -->
				<div class="codrops-menu">
					<strong><a href="#" style="color: #42C690">Toonhub</a></strong> <strong>|</strong>
					<strong><a href="Community.jsp">커뮤니티</a></strong>
					<!-- 맨위 상단-->
					<a href="Search.jsp"><img src="./img/search.png"
						style="width: 4%; height: 4%; float: right; margin-right: 6%;"></a>
				</div>
				<br> <br>
			</header>

			<div id="wrap">
				<ul class="codrops-demos">
					<a href="ToonMain.jsp" style="color: #42C690"> 요일별 </a>
					<a href="#"> 장르 </a>
					<a href="platform.jsp"> 플랫폼 </a>
				</ul>
				<section class="tabArea">
					<ul class="week">
						<li class="row on" id="day1"><a href="#!"><span>월</span></a></li>
						<li class="row on" id="day2"><a href="#!"><span>화</span></a></li>
						<li class="row" id="day3"><a href="#!"><span>수</span></a></li>
						<li class="row" id="day4"><a href="#!"><span>목</span></a></li>
						<li class="row" id="day5"><a href="#!"><span>금</span></a></li>
						<li class="row" id="day6"><a href="#!"><span>토</span></a></li>
						<li class="row" id="day0"><a href="#!"><span>일</span></a></li>
						<li class="row" id="day0"><a href="#!"><span>완결</span></a></li>
					</ul>



					<div class="tabBox on">
						<div id="grid" class="grid clearfix">
							<nav class="best">
								<strong>지금 ! 베스트</strong><br> <br>
								<div class="toon_slider_box">
									<div class="brands">
										<div class="container">
											<div class="brands_slider_container">
												<div class="owl-carousel owl-theme brands_slider">

													<%
													for (int i = 0; i < 10; i++) {
													%>
													<%
													img = monlist.get(i).getWebfile();
													%>
													<%
													img = img.replace("?", "");
													%>
													<div class="owl-item">
														<div
															class="brands_item d-flex flex-column justify-content-center">

															<a
																href="Detail_Day.jsp?title=<%=monlist.get(i).getWebtitle()%>">

																<%
																if (monlist.get(i).getPlatform().equals("탑툰")) {
																%> <img
																src="./toon_image/<%=img%>"
																style="width: 30%; height: auto;'">
															</a>
															<%
															} else {
															%>
															<img src="./toon_image/<%=img%>"
																style="width: 50%; height: auto;'"></a>
															<%
															}
															%>
															<!-- 네모를 누르면 해당엇..? 상세페이지로가야되는데 이동 할 수 있도록 하기  -->
														</div>

														<div class="info">
															<strong><%=monlist.get(i).getWebtitle()%></strong><br>
															<span><%=monlist.get(i).getWebwriter()%></span><br>
														</div>
													</div>
													<%
													}
													%>
												</div>
							</nav>
							<br>

							<nav class="toon1">
								<strong>봄툰</strong><span> | BomToon</span><br> <br>
								<div class="brands">
									<div class="container">
										<div class="brands_slider_container">
											<div class="owl-carousel owl-theme brands_slider">

												<%
												for (int i = 0; i < 10; i++) {
												%>
												<%
												if (monlist.get(i).getPlatform().equals("봄툰")) {
													img = monlist.get(i).getWebfile();
													img = img.replace("?", "");
												%>
												<div class="owl-item">
													<div
														class="brands_item d-flex flex-column justify-content-center">
														<a href="Detail_Day.jsp?title=<%=monlist.get(i).getWebtitle()%>">

															<img src="./toon_image/<%=img%>" width="100px"
															height="100px">
														</a>
														<!-- 네모를 누르면 네이버로 이동 할 수 있도록 하기  -->
													</div>
													<div class="info">
														<strong><%=monlist.get(i).getWebtitle()%></strong><br>
														<span><%=monlist.get(i).getWebwriter()%></span><br>
													</div>
												</div>
												<%
												}
												}
												%>
											</div>
											<!-- Brands Slider Navigation -->
											<!-- <div class="brands_nav brands_prev"><i></i></div>
                                                            <div class="brands_nav brands_next"><i></i></div> -->
										</div>
										<!-- </div>
                                                </div> -->
									</div>
								</div>


							</nav>
							<br>

							<nav class="toon2">
								<strong>탑툰</strong><span> | TopToon</span><br> <br>
								<div class="toon_slider_box">
									<div class="brands">
										<div class="container">
											<div class="brands_slider_container">
												<div class="owl-carousel owl-theme brands_slider">

													<%
													for (int i = 0; i < 10; i++) {
													%>
													<%
													if (monlist.get(i).getPlatform().equals("탑툰")) {
														img = monlist.get(i).getWebfile();
														img = img.replace("?", "");
													%>
													<div class="owl-item">
														<div
															class="brands_item d-flex flex-column justify-content-center">
															<a href="Detail_Day.jsp?title=<%=monlist.get(i).getWebtitle()%>"> 
															<img src="./toon_image/<%=img%>" width="100px" height="100px"></a>
														</div>
														<div class="info">
															<strong><%=monlist.get(i).getWebtitle()%></strong><br>
															<span><%=monlist.get(i).getWebwriter()%></span><br>
														</div>
													</div>
													<%
													}
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


					<!-- tuesday -->

					<div class="tabBox">
						<div id="grid" class="grid clearfix">
							<nav class="best">
								<strong>지금 ! 베스트</strong><br> <br>
								<div class="toon_slider_box">
									<div class="brands">
										<div class="container">
											<div class="brands_slider_container">
												<div class="owl-carousel owl-theme brands_slider">

													<%
													for (int i = 0; i < 10; i++) {
													%>
													<%
													img = tuelist.get(i).getWebfile();
													img = img.replace("?", "");
													%>
													<div class="owl-item">
														<div
															class="brands_item d-flex flex-column justify-content-center">
															<a href="Detail_Day.jsp?title=<%=tuelist.get(i).getWebtitle()%>">  <img
																src="./toon_image/<%=img%>" width="100px" height="100px"></a>
															<!-- 네모를 누르면 네이버로 이동 할 수 있도록 하기  -->
														</div>
														<div class="info">
															<strong><%=tuelist.get(i).getWebtitle()%></strong><br>
															<span><%=tuelist.get(i).getWebwriter()%></span><br>
														</div>
													</div>
													<%
													}
													%>
												</div>
							</nav>
							<br>

							<nav class="toon1">
								<strong>봄툰</strong><span> | BomToon</span><br> <br>
								<div class="brands">
									<div class="container">
										<div class="brands_slider_container">
											<div class="owl-carousel owl-theme brands_slider">

												<%
												for (int i = 0; i < 10; i++) {
												%>
												<%
												if (tuelist.get(i).getPlatform().equals("봄툰")) {
													img = tuelist.get(i).getWebfile();
													img = img.replace("?", "");
												%>
												<div class="owl-item">
													<div
														class="brands_item d-flex flex-column justify-content-center">
														<a href="Detail_Day.jsp?title=<%=tuelist.get(i).getWebtitle()%>">  <img
															src="./toon_image/<%=img%>" width="100px" height="100px"></a>
														<!-- 네모를 누르면 네이버로 이동 할 수 있도록 하기  -->
													</div>
													<div class="info">
														<strong><%=tuelist.get(i).getWebtitle()%></strong><br>
														<span><%=tuelist.get(i).getWebwriter()%></span><br>
													</div>
												</div>
												<%
												}
												}
												%>
											</div>
											<!-- Brands Slider Navigation -->
											<!-- <div class="brands_nav brands_prev"><i></i></div>
                                                            <div class="brands_nav brands_next"><i></i></div> -->
										</div>
										<!-- </div>
                                                </div> -->
									</div>
								</div>


							</nav>
							<br>

							<nav class="toon2">
								<strong>탑툰</strong><span> | TopToon</span><br> <br>
								<div class="toon_slider_box">
									<div class="brands">
										<div class="container">
											<div class="brands_slider_container">
												<div class="owl-carousel owl-theme brands_slider">

													<%
													for (int i = 0; i < 10; i++) {
													%>
													<%
													if (tuelist.get(i).getPlatform().equals("탑툰")) {
														img = tuelist.get(i).getWebfile();
														img = img.replace("?", "");
													%>
													<div class="owl-item">
														<div
															class="brands_item d-flex flex-column justify-content-center">
															<a href="Detail_Day.jsp?title=<%=tuelist.get(i).getWebtitle()%>"> <img
																src="./toon_image/<%=img%>" width="100px" height="100px"></a>
															<!-- 네모를 누르면 네이버로 이동 할 수 있도록 하기  -->
														</div>
														<div class="info">
															<strong><%=tuelist.get(i).getWebtitle()%></strong><br>
															<span><%=tuelist.get(i).getWebwriter()%></span><br>
														</div>
													</div>
													<%
													}
													}
													%>
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
							</nav>
							<br>

						</div>
					</div>


					<!-- wedsday -->
					<div class="tabBox">
						<div id="grid" class="grid clearfix">
							<nav class="best">
								<strong>지금 ! 베스트</strong><br> <br>
								<div class="toon_slider_box">
									<div class="brands">
										<div class="container">
											<div class="brands_slider_container">
												<div class="owl-carousel owl-theme brands_slider">

													<%
													for (int i = 0; i < wedlist.size(); i++) {
													%>
													<%
													img = wedlist.get(i).getWebfile();
													img = img.replace("?", "");
													%>
													<div class="owl-item">
														<div
															class="brands_item d-flex flex-column justify-content-center">
															<a href="Detail_Day.jsp?title=<%=wedlist.get(i).getWebtitle()%>"> <img
																src="./toon_image/<%=img%>" width="100px" height="100px"></a>
															<!-- 네모를 누르면 네이버로 이동 할 수 있도록 하기  -->
														</div>
														<div class="info">
															<strong><%=wedlist.get(i).getWebtitle()%></strong><br>
															<span><%=wedlist.get(i).getWebwriter()%></span><br>
														</div>
													</div>
													<%
													}
													%>
												</div>
							</nav>
							<br>

							<nav class="toon1">
								<strong>봄툰</strong><span> | BomToon</span><br> <br>
								<div class="brands">
									<div class="container">
										<div class="brands_slider_container">
											<div class="owl-carousel owl-theme brands_slider">

												<%
												for (int i = 0; i < 10; i++) {
												%>
												<%
												if (wedlist.get(i).getPlatform().equals("봄툰")) {
													img = monlist.get(i).getWebfile();
													img = img.replace("?", "");
												%>
												<div class="owl-item">
													<div
														class="brands_item d-flex flex-column justify-content-center">
														<a href="Detail_Day.jsp?title=<%=wedlist.get(i).getWebtitle()%>"> <img
															src="./toon_image/<%=img%>" width="100px" height="100px"></a>
														<!-- 네모를 누르면 네이버로 이동 할 수 있도록 하기  -->
													</div>
													<div class="info">
														<strong><%=wedlist.get(i).getWebtitle()%></strong><br>
														<span><%=wedlist.get(i).getWebwriter()%></span><br>
													</div>
												</div>
												<%
												}
												}
												%>
											</div>
											<!-- Brands Slider Navigation -->
											<!-- <div class="brands_nav brands_prev"><i></i></div>
                                                            <div class="brands_nav brands_next"><i></i></div> -->
										</div>
										<!-- </div>
                                                </div> -->
									</div>
								</div>


							</nav>
							<br>

							<nav class="toon2">
								<strong>탑툰</strong><span> | TopToon</span><br> <br>
								<div class="toon_slider_box">
									<div class="brands">
										<div class="container">
											<div class="brands_slider_container">
												<div class="owl-carousel owl-theme brands_slider">
													<%
													for (int i = 0; i < wedlist.size(); i++) {
													%>
													<%
													if (wedlist.get(i).getPlatform().equals("탑툰")) {
														img = monlist.get(i).getWebfile();
														img = img.replace("?", "");
													%>
													<div class="owl-item">
														<div
															class="brands_item d-flex flex-column justify-content-center">
															<a href="Detail_Day.jsp?title=<%=wedlist.get(i).getWebtitle()%>"> <img
																src="./toon_image/<%=img%>" width="100px" height="100px"></a>
															<!-- 네모를 누르면 detail로 이동 할 수 있도록 하기  -->
														</div>
														<div class="info">
															<strong><%=wedlist.get(i).getWebtitle()%></strong><br>
															<span><%=wedlist.get(i).getWebwriter()%></span><br>
														</div>
													</div>
													<%
													}
													}
													%>
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
							</nav>
							<br>

						</div>
					</div>

					<!-- thursday -->
					<div class="tabBox">
						<div id="grid" class="grid clearfix">
							<nav class="best">
								<strong>지금 ! 베스트</strong><br> <br>
								<div class="toon_slider_box">
									<div class="brands">
										<div class="container">
											<div class="brands_slider_container">
												<div class="owl-carousel owl-theme brands_slider">
													<%
													for (int i = 0; i < 10; i++) {
													%>
													<%
													img = thulist.get(i).getWebfile();
													img = img.replace("?", "");
													%>
													<div class="owl-item">
														<div
															class="brands_item d-flex flex-column justify-content-center">
															<a href="Detail_Day.jsp?title=<%=thulist.get(i).getWebtitle()%>"> <img
																src="./toon_image/<%=img%>" width="100px" height="100px"></a>
															<!-- 네모를 누르면 네이버로 이동 할 수 있도록 하기  -->
														</div>
														<div class="info">
															<strong><%=thulist.get(i).getWebtitle()%></strong><br>
															<span><%=thulist.get(i).getWebwriter()%></span><br>
														</div>
													</div>
													<%
													}
													%>
												</div>
							</nav>
							<br>

							<nav class="toon1">
								<strong>봄툰</strong><span> | BomToon</span><br> <br>
								<div class="brands">
									<div class="container">
										<div class="brands_slider_container">
											<div class="owl-carousel owl-theme brands_slider">

												<%
												for (int i = 0; i < 10; i++) {
												%>
												<%
												if (thulist.get(i).getPlatform().equals("봄툰")) {
													img = thulist.get(i).getWebfile();
													img = img.replace("?", "");
												%>
												<div class="owl-item">
													<div
														class="brands_item d-flex flex-column justify-content-center">
														<a href="Detail_Day.jsp?title=<%=thulist.get(i).getWebtitle()%>"> <img
															src="./toon_image/<%=img%>" width="100px" height="100px"></a>
														<!-- 네모를 누르면 네이버로 이동 할 수 있도록 하기  -->
													</div>
													<div class="info">
														<strong><%=thulist.get(i).getWebtitle()%></strong><br>
														<span><%=thulist.get(i).getWebwriter()%></span><br>
													</div>
												</div>
												<%
												}
												}
												%>
											</div>
											<!-- Brands Slider Navigation -->
											<!-- <div class="brands_nav brands_prev"><i></i></div>
                                                            <div class="brands_nav brands_next"><i></i></div> -->
										</div>
										<!-- </div>
                                                </div> -->
									</div>
								</div>


							</nav>
							<br>

							<nav class="toon2">
								<strong>탑툰</strong><span> | TopToon</span><br> <br>
								<div class="toon_slider_box">
									<div class="brands">
										<div class="container">
											<div class="brands_slider_container">
												<div class="owl-carousel owl-theme brands_slider">
													<%
													for (int i = 0; i < 10; i++) {
													%>
													<%
													if (thulist.get(i).getPlatform().equals("탑툰")) {
														img = thulist.get(i).getWebfile();
														img = img.replace("?", "");
													%>
													<div class="owl-item">
														<div
															class="brands_item d-flex flex-column justify-content-center">
															<a href="Detail_Day.jsp?title=<%=thulist.get(i).getWebtitle()%>"> <img
																src="./toon_image/<%=img%>" width="100px" height="100px"></a>
															<!-- 네모를 누르면 네이버로 이동 할 수 있도록 하기  -->
														</div>
														<div class="info">
															<strong><%=thulist.get(i).getWebtitle()%></strong><br>
															<span><%=thulist.get(i).getWebwriter()%></span><br>
														</div>
													</div>
													<%
													}
													}
													%>
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
							</nav>
							<br>

						</div>
					</div>

					<!-- fri -->
					<div class="tabBox">
						<div id="grid" class="grid clearfix">
							<nav class="best">
								<strong>지금 ! 베스트</strong><br> <br>
								<div class="toon_slider_box">
									<div class="brands">
										<div class="container">
											<div class="brands_slider_container">
												<div class="owl-carousel owl-theme brands_slider">
													<%
													for (int i = 0; i < 10; i++) {
													%>
													<%
													img = frilist.get(i).getWebfile();
													img = img.replace("?", "");
													%>
													<div class="owl-item">
														<div
															class="brands_item d-flex flex-column justify-content-center">
															<a href="Detail_Day.jsp?title=<%=frilist.get(i).getWebtitle()%>"> <img
																src="./toon_image/<%=img%>" width="100px" height="100px"></a>
															<!-- 네모를 누르면 네이버로 이동 할 수 있도록 하기  -->
														</div>
														<div class="info">
															<strong><%=frilist.get(i).getWebtitle()%></strong><br>
															<span><%=frilist.get(i).getWebwriter()%></span><br>
														</div>
													</div>
													<%
													}
													%>
												</div>
							</nav>
							<br>

							<nav class="toon1">
								<strong>봄툰</strong><span> | BomToon</span><br> <br>
								<div class="brands">
									<div class="container">
										<div class="brands_slider_container">
											<div class="owl-carousel owl-theme brands_slider">
												<%
												for (int i = 0; i < 10; i++) {
												%>
												<%
												if (frilist.get(i).getPlatform().equals("봄툰")) {
													img = frilist.get(i).getWebfile();
													img = img.replace("?", "");
												%>
												<div class="owl-item">
													<div
														class="brands_item d-flex flex-column justify-content-center">
														<a href="Detail_Day.jsp?title=<%=frilist.get(i).getWebtitle()%>"> <img
															src="./toon_image/<%=img%>" width="100px" height="100px"></a>
														<!-- 네모를 누르면 네이버로 이동 할 수 있도록 하기  -->
													</div>
													<div class="info">
														<strong><%=frilist.get(i).getWebtitle()%></strong><br>
														<span><%=frilist.get(i).getWebwriter()%></span><br>
													</div>
												</div>
												<%
												}
												}
												%>
											</div>
											<!-- Brands Slider Navigation -->
											<!-- <div class="brands_nav brands_prev"><i></i></div>
                                                            <div class="brands_nav brands_next"><i></i></div> -->
										</div>
										<!-- </div>
                                                </div> -->
									</div>
								</div>


							</nav>
							<br>

							<nav class="toon2">
								<strong>탑툰</strong><span> | TopToon</span><br> <br>
								<div class="toon_slider_box">
									<div class="brands">
										<div class="container">
											<div class="brands_slider_container">
												<div class="owl-carousel owl-theme brands_slider">
													<%
													for (int i = 0; i < 10; i++) {
													%>
													<%
													if (frilist.get(i).getPlatform().equals("탑툰")) {
														img = frilist.get(i).getWebfile();
														img = img.replace("?", "");
													%>
													<div class="owl-item">
														<div
															class="brands_item d-flex flex-column justify-content-center">
															<a href="Detail_Day.jsp?title=<%=frilist.get(i).getWebtitle()%>"> <img
																src="./toon_image/<%=img%>" width="100px" height="100px"></a>
															<!-- 네모를 누르면 네이버로 이동 할 수 있도록 하기  -->
														</div>
														<div class="info">
															<strong><%=frilist.get(i).getWebtitle()%></strong><br>
															<span><%=frilist.get(i).getWebwriter()%></span><br>
														</div>
													</div>
													<%
													}
													}
													%>
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
							</nav>
							<br>

						</div>
					</div>

					<!-- sat -->
					<div class="tabBox">
						<div id="grid" class="grid clearfix">
							<nav class="best">
								<strong>지금 ! 베스트</strong><br> <br>
								<div class="toon_slider_box">
									<div class="brands">
										<div class="container">
											<div class="brands_slider_container">
												<div class="owl-carousel owl-theme brands_slider">

													<%
													for (int i = 0; i < 10; i++) {
													%>
													<%
													img = satlist.get(i).getWebfile();
													img = img.replace("?", "");
													%>
													<div class="owl-item">
														<div
															class="brands_item d-flex flex-column justify-content-center">
															<a href="Detail_Day.jsp?title=<%=satlist.get(i).getWebtitle()%>"> <img
																src="./toon_image/<%=img%>" width="100px" height="100px"></a>
															<!-- 네모를 누르면 네이버로 이동 할 수 있도록 하기  -->
														</div>
														<div class="info">
															<strong><%=satlist.get(i).getWebtitle()%></strong><br>
															<span><%=satlist.get(i).getWebwriter()%></span><br>
														</div>
													</div>
													<%
													}
													%>
												</div>
							</nav>
							<br>

							<nav class="toon1">
								<strong>봄툰</strong><span> | BomToon</span><br> <br>
								<div class="brands">
									<div class="container">
										<div class="brands_slider_container">
											<div class="owl-carousel owl-theme brands_slider">

												<%
												for (int i = 0; i < 10; i++) {
												%>
												<%
												if (satlist.get(i).getPlatform().equals("봄툰")) {
													img = satlist.get(i).getWebfile();
													img = img.replace("?", "");
												%>
												<div class="owl-item">
													<div
														class="brands_item d-flex flex-column justify-content-center">
														<a href="Detail_Day.jsp?title=<%=satlist.get(i).getWebtitle()%>"> <img
															src="./toon_image/<%=img%>" width="100px" height="100px"></a>
														<!-- 네모를 누르면 네이버로 이동 할 수 있도록 하기  -->
													</div>
													<div class="info">
														<strong><%=satlist.get(i).getWebtitle()%></strong><br>
														<span><%=satlist.get(i).getWebwriter()%></span><br>
													</div>
												</div>
												<%
												}
												}
												%>
											</div>
											<!-- Brands Slider Navigation -->
											<!-- <div class="brands_nav brands_prev"><i></i></div>
                                                            <div class="brands_nav brands_next"><i></i></div> -->
										</div>
										<!-- </div>
                                                </div> -->
									</div>
								</div>


							</nav>
							<br>

							<nav class="toon2">
								<strong>탑툰</strong><span> | TopToon</span><br> <br>
								<div class="toon_slider_box">
									<div class="brands">
										<div class="container">
											<div class="brands_slider_container">
												<div class="owl-carousel owl-theme brands_slider">
													<%
													for (int i = 0; i < 10; i++) {
													%>
													<%
													if (satlist.get(i).getPlatform().equals("탑툰")) {
														img = satlist.get(i).getWebfile();
														img = img.replace("?", "");
													%>
													<div class="owl-item">
														<div
															class="brands_item d-flex flex-column justify-content-center">
															<a href="Detail_Day.jsp?title=<%=satlist.get(i).getWebtitle()%>"> <img
																src="./toon_image/<%=img%>" width="100px" height="100px"></a>
															<!-- 네모를 누르면 네이버로 이동 할 수 있도록 하기  -->
														</div>
														<div class="info">
															<strong><%=satlist.get(i).getWebtitle()%></strong><br>
															<span><%=satlist.get(i).getWebwriter()%></span><br>
														</div>
													</div>
													<%
													}
													}
													%>
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
							</nav>
							<br>

						</div>
					</div>


					<!-- sun -->
					<div class="tabBox">
						<div id="grid" class="grid clearfix">
							<nav class="best">
								<strong>지금 ! 베스트</strong><br> <br>
								<div class="toon_slider_box">
									<div class="brands">
										<div class="container">
											<div class="brands_slider_container">
												<div class="owl-carousel owl-theme brands_slider">

													<%
													for (int i = 0; i < 10; i++) {
													%>
													<%
													img = sunlist.get(i).getWebfile();
													img = img.replace("?", "");
													%>
													<div class="owl-item">
														<div
															class="brands_item d-flex flex-column justify-content-center">
															<a href="Detail_Day.jsp?title=<%=sunlist.get(i).getWebtitle()%>"> 
															<img src="./toon_image/<%=img%>" width="100px" height="100px"></a>
															<!-- 네모를 누르면 네이버로 이동 할 수 있도록 하기  -->
														</div>
														<div class="info">
															<strong><%=sunlist.get(i).getWebtitle()%></strong><br>
															<span><%=sunlist.get(i).getWebwriter()%></span><br>
														</div>
													</div>
													<%
													}
													%>
												</div>
							</nav>
							<br>
							<nav class="toon1">
								<strong>탑툰</strong><span> | TopToon</span><br> <br>
								<div class="toon_slider_box">
									<div class="brands">
										<div class="container">
											<div class="brands_slider_container">
												<div class="owl-carousel owl-theme brands_slider">
													<%
													for (int i = 0; i < 10; i++) {
													%>
													<%
													if (sunlist.get(i).getPlatform().equals("탑툰")) {
														img = sunlist.get(i).getWebfile();
														img = img.replace("?", "");
													%>
													<div class="owl-item">
														<div
															class="brands_item d-flex flex-column justify-content-center">
															<a href="Detail_Day.jsp?title=<%=sunlist.get(i).getWebtitle()%>"> 
															<img src="./toon_image/<%=img%>" width="100px" height="100px"></a>
															<!-- 네모를 누르면 네이버로 이동 할 수 있도록 하기  -->
														</div>
														<div class="info">
															<strong><%=sunlist.get(i).getWebtitle()%></strong><br>
															<span><%=sunlist.get(i).getWebwriter()%></span><br>
														</div>
													</div>
													<%
													}
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

					<div class="tabBox">
						<div id="grid" class="grid clearfix">
							<nav class="best">
								<strong>지금 ! 베스트</strong><br> <br>
								<div class="toon_slider_box">
									<div class="brands">
										<div class="container">
											<div class="brands_slider_container">
												<div class="owl-carousel owl-theme brands_slider">

													<%
													for (int i = 0; i < 10; i++) {
													%>
													<%
													img = endlist.get(i).getWebfile();
													%>
													<%
													img = img.replace("?", "");
													%>
													<div class="owl-item">
														<div
															class="brands_item d-flex flex-column justify-content-center">
															<a href="detail.jsp"> 
															<img src="./toon_image/<%=img%>" width="100px" height="100px"></a>
															<!-- 네모를 누르면 해당엇..? 상세페이지로가야되는데 이동 할 수 있도록 하기  -->
														</div>
														<div class="info">
															<strong><%=endlist.get(i).getWebtitle()%></strong><br>
															<span><%=endlist.get(i).getWebwriter()%></span><br>
														</div>
													</div>
													<%
													}
													%>
												</div>
							</nav>
							<br>

							<nav class="toon1">
								<strong>봄툰</strong><span> | BomToon</span><br> <br>
								<div class="brands">
									<div class="container">
										<div class="brands_slider_container">
											<div class="owl-carousel owl-theme brands_slider">


												<%
												for (int i = 0; i < 10; i++) {
												%>
												<%
												if (endlist.get(i).getPlatform().equals("봄툰")) {
													img = endlist.get(i).getWebfile();
													img = img.replace("?", "");
												%>
												<div class="owl-item">
													<div class="brands_item d-flex flex-column justify-content-center">
														<a href="Detail_Day.jsp?title=<%=endlist.get(i).getWebtitle()%>"> <img src="./toon_image/<%=img%>"
															width="100px" height="100px"></a>
														<!-- 네모를 누르면 네이버로 이동 할 수 있도록 하기  -->
													</div>
													<div class="info">
														<strong><%=endlist.get(i).getWebtitle()%></strong><br>
														<span><%=endlist.get(i).getWebwriter()%></span><br>
													</div>
												</div>
												<%
												}
												}
												%>
												
												
												
												
											</div>
											<!-- Brands Slider Navigation -->
											<!-- <div class="brands_nav brands_prev"><i></i></div>
                                                            <div class="brands_nav brands_next"><i></i></div> -->
										</div>
										<!-- </div>
                                                </div> -->
									</div>
								</div>


							</nav>
							<br>

							<nav class="toon2">
								<strong>탑툰</strong><span> | TopToon</span><br> <br>
								<div class="toon_slider_box">
									<div class="brands">
										<div class="container">
											<div class="brands_slider_container">
												<div class="owl-carousel owl-theme brands_slider">

													<%
													for (int i = 0; i < 10; i++) {
													%>
													<%
													if (endlist.get(i).getPlatform().equals("탑툰")) {
														img = endlist.get(i).getWebfile();
														img = img.replace("?", "");
													%>
													<div class="owl-item">
														<div
															class="brands_item d-flex flex-column justify-content-center">
															<a href="Detail_Day.jsp?title=<%=endlist.get(i).getWebtitle()%>"> <img
																src="./toon_image/<%=img%>" width="100px" height="100px"></a>
															<!-- 네모를 누르면 네이버로 이동 할 수 있도록 하기  -->
														</div>
														<div class="info">
															<strong><%=endlist.get(i).getWebtitle()%></strong><br>
															<span><%=endlist.get(i).getWebwriter()%></span><br>
														</div>
													</div>
													<%
													}
													}
													%>

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
							</nav>
							<br>

						</div>
					</div>

				</section>
			</div>
			<br> <br> <br> <br> <br> <br> <br>
			<br> <br>
			<footer class="foot">
				<table>
					<td><a href="ToonMain.jsp"> <img src="img/home.png">
							<span>Home</span></a></td>
					<td id="bookmark">
						<%
						if (info != null) {
						%> <a href="bookmarkpage.jsp"> <img
							src="img/bookmark.png"> <span>북마크</span></a> <%
 } else {
 %> <a
						href="ToonMain.jsp" onclick="constraints()"> <img
							src="img/bookmark.png"> <span>북마크</span></a> <%
 }
 %>
					</td>
					<td><a href="Login.jsp"> <img src="img/my.png"> <%
 if (info != null) {
 %>
							<span>My페이지</span></a> <%
 } else {
 %> <span>로그인</span> <%
 }
 %></td>
				</table>
			</footer>
			<script src="js/jquery-3.6.0.min.js"></script>
			<script>
				$(document).ready(function() {
					$(".tabArea .week li a").on("click", function() { // 해당 요소를 클릭하는 내 자신의 index 번호를 가져온다. [0], [1] 
						const num = $(".tabArea .week li a").index($(this)); // 기존에 적용되어 있는 on class 삭제 
						$(".tabArea .week li").removeClass("on");
						$(".tabArea .tabBox").removeClass("on"); // 다음 요소 클릭시 on class 추가 
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
				/*  아니 갑자기 왜안돼 .. ^^ */
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
							/* 자동으로 넘어가게 하는거 ! */
							nav : false,
							dots : false,

							autoWidth : false,
							/* 자동 이미지 사이즈 맞춤 */
							items : 3,
							/* default 로 보여지는 아이텡 갯수  */
							margin : 2
						/* 아이템간 마진  */
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
					alert("로그인이 필요한 서비스입니다");
				}
			</script>
</body>
</html>
