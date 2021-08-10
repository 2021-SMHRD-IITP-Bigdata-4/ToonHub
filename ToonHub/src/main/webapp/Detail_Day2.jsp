<%@page import="model.ToonMemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.WebtoonDAO"%>
<%@page import="model.WebtoonDTO"%>
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
.on row{
    color:#42C690;
}
img{
	width:100%;
	height:auto;
}
.img_place{
	width:20%;
	margin-top:15px;
	margin-left:6%;
	float:left;
}
.info_place{
    padding-left: 3%;
}
.info_place span{
	margin-left:10px;
}
.info_place p{
	margin-bottom: 3px;
	padding-left:25%;
	font-size: 20px;
	color:#b3b3b3;
	width:80%;
	position:relative;
}
.toon_info{
    padding-top: 5%;
}
.genre{
	background-color: rgb(224, 222, 222);
	width:110px;
	height:30px;
	text-align: center;
	vertical-align: middle;
	margin-left:26%;
	margin-top: 15px;
	font-size: 15px;
	line-height: 30px;
	color:#b3b3b3;
}
.detail_buttons{
    margin-left: 10%;
    margin-top:10px;
    width:13%;
    float:left;
}
.detail_buttons button{
    border:none;
    text-align: center;
    width:100px;
    font-size:15px;
    outline: none;
}
.link_to{
    width:100%;
    text-align: right;
    margin-top: 20px;
    padding-right: 10%;
}
.link_to button{
    border-radius: 10px;
    border: none;
    background-color: #42C690;
    width:70%;
    height:30px;
    color: white;
}
.write_evaluate{
    margin: 20px 6%;
    color:#b3b3b3
}
.write_evaluate textarea{
    width:85%;
    height:50px;
    border: none;
    background-color: #eeeeee;
    resize: none;
    padding: 10px 15px;
}
.write_evaluate button{
    width:15%;
    height:50px;
    background-color: #eeeeee;
    border:none;
    border-left:1px solid #b3b3b3;
    padding:0px;
    float:right;
    color: #b3b3b3;
}
.write_evaluate select{
    border-radius:  none;
    background-color: #eee;
    color: #b3b3b3;
    border-radius: 10px;
    border:none;
    height:20px;
    line-height: 20px;
    padding: 0px 5px;
    
}
.evaluate{
    margin: 20px 6%;
}
.eval_info p{
    margin-bottom: 3px;
    padding-left: 60px;
    color:#b3b3b3;
}
.eval_info p:nth-child(2){
    float:right;
}
.modal .btn{
	cursor: pointer;
	border: 1px solid #999999;
	text-align: center;
	border-radius: 5px;
	outline: none;
	font-weight: 500;
}
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
<%ToonMemberDTO info = (ToonMemberDTO) session.getAttribute("info");
String title = request.getParameter("title");
WebtoonDAO dao = new WebtoonDAO();
ArrayList<WebtoonDTO> dto = dao.selectDetail(title);
String img = null;%>
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
			<div class="content">

                <header class="codrops-header">  
					<!--����Ʈ�� toonhub �� �����ֵ��� �ϴ¹�� ����� ! -->
                    <div class="codrops-menu">
                        <strong><a href="ToonMain.jsp" style = "color: #42C690">Toonhub</a></strong><strong>|</strong> <strong ><a href="Community.jsp">Ŀ�´�Ƽ</a></strong> <!-- ���� ���-->
                        <a href="Search.jsp"><img src="/img/search.png" style="width:4%; height:4%; float: right; margin-right: 6%;"></a>
                    </div>
                    <br><br>
				</header>
					
					<section class="modal modal-section type-confirm">
                    <div class="enroll_box">
                        <p class="menu_msg"></p>
                    </div>
                    <div class="enroll_btn">
                        <button class="btn pink_btn btn_ok">��</button>
                        <button class="btn gray_btn modal_close">�ƴϿ�</button>
                    </div>
                </section>

                <section class="modal modal-section type-alert">
                    <div class="enroll_box">
                        <p class="menu_msg"></p>
                    </div>
                    <div class="enroll_btn">
                        <button class="btn pink_btn modal_close">Ȯ��</button>
                    </div>
                </section>
					
				<div id="wrap">
                    <ul class="codrops-demos">
						<a href="ToonMain.jsp" style="color:#42C690"> ���Ϻ� </a>
						<a href="ToonGenre.jsp"> �帣 </a>
						<a href="platform.jsp"> �÷��� </a>
                    </ul>
                    <div class="tabArea" style="height:50px;">
                        <ul class="week">
                            <li class = "row" id = "day1"> <a href="#!"><span>��</span></a> </li>
                            <li class = "row" id = "day2"> <a href="#!"><span>ȭ</span></a> </li>
                            <li class = "row" id = "day3"> <a href="#!"><span>��</span></a> </li>
                            <li class = "row" id = "day4"> <a href="#!"><span>��</span></a> </li>
                            <li class = "row" id = "day5"> <a href="#!"><span>��</span></a> </li>
                            <li class = "row" id = "day6"> <a href="#!"><span>��</span></a> </li>
                            <li class = "row" id = "day0"> <a href="#!"><span>��</span></a> </li>
                            <li class = "row" id = "day0"> <a href="#!"><span>�ϰ�</span></a> </li>
                        </ul>
                    </div>
                    <div class="toon_info">
                        <div>
                            <div class="img_place">
                            <%img = dto.get(0).getWebfile(); %>
							<%img = img.replace("?", "");%>
                                <img src="./toon_image/<%=img%>">
                            </div>
                            <div class="info_place">
                                <p><strong><%=dto.get(0).getWebtitle() %></strong>
                                <span style="font-size: 15px;"><%=dto.get(0).getWebwriter() %></span></p>                               
                                 <p style="font-size: 15px;"><%=dto.get(0).getStory() %></p>
                            </div>
                            <div class="genre">
                                <span>#<%=dto.get(0).getGenre() %></span>
                            </div>
                        </div>
                        <div class="detail_buttons">
                        <%if (info != null){ %>
                            <button type = button class = "a_color"  id = "bookmark" style="border: none;">���ϱ�</button><br>
                        <%} else{ %>
                            <button type = button class = "a_color"  id = "bookmark" style="border: none;">���ϱ�</button><br>
                        <%} %>
                            <button style="font-size: 14px;">�۰� Ŀ�´�Ƽ</button>
                        </div>
                        <div class = "link_to">
                            <button onclick="location.href='<%=dto.get(0).getAddress()%>'">��������</button>
                        </div>
                    </div>
                    <form>
                    <div class = "write_evaluate">
                        <span>�� ���� ���?</span>
                        <select>�����ֱ�
                            <option>�ڡڡڡڡ�</option>
                            <option>�ڡڡڡڡ�</option>
                            <option>�ڡڡڡ١�</option>
                            <option>�ڡڡ١١�</option>
                            <option>�ڡ١١١�</option>
                        </select>
                        <textarea placeholder="�ۼ��� ������ �Է��ϼ���"></textarea>
                        <button>���</button>
                    </div>
                    </form>
                    <div class = "evaluate">
                        <div style="float:left;">
                        <img src="nemo.png" style="width:50px; height:50px;">
                        </div>
                        <div class="eval_info">
                            <p>Writer</p>
                            <p>2021.08.09</p>
                            <p>content</p>
                        </div>
                        <hr>
                        <div style="float:left;">
                            <img src="nemo.png" style="width:50px; height:50px;">
                            </div>
                            <div class="eval_info">
                                <p>Writer</p>
                                <p>2021.08.09</p>
                                <p>content</p>
                            </div>
                            <hr>
                            <div style="float:left;">
                                <img src="nemo.png" style="width:50px; height:50px;">
                                </div>
                                <div class="eval_info">
                                    <p>Writer</p>
                                    <p>2021.08.09</p>
                                    <p>content</p>
                                </div>
                                <hr>
                    </div>
                </div>
                <br><br><br><br><br><br><br><br><br>
                <footer class = "foot">
                    <table>
                            <td>
                <a href = "ToonMain.jsp">
                    <img src = "img/home.png">
                    <span>Home</span></a>
                    </td>
                    <td>
                <a href = "bookmarkpage.jsp">
                    <img src = "img/bookmark.png">
                    <span>�ϸ�ũ</span></a>
                    </td>
                    <td>
                <a href = "Login.jsp" >
                    <img src = "img/my.png">
                    <span>My������</span></a>
                    </td>
                    </table>
                </footer>
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
                        var bookmark_click = confirm("�������� �̵��� ���?");
        
                        if(bookmark_click == true){
                            alert("Ȯ���� �����̱���")
                        } else{
                            alert("��Ҹ� �����̱���")
                        }
                        })
         */
        
                        $(function () {
            //��� ���� **************************
            $(document).on("click", "#bookmark", function () {
                action_popup.confirm("���ϱ� ������� �̵��ұ��?", function (res) {
                    if (res) {
                        /* �������� �ٲٱ� */
                        location.href='bookmarkpage.html'
                    }
                })
            });
        
            $(".modal_close").on("click", function () {
                action_popup.close(this);
            });
            //��� ���� **************************
        });
        
        
        
        /**
         *  alert, confirm ��� �˾� �޼ҵ� ���� <br/>
         *  timer : �ִϸ��̼� ���� �ӵ� <br/>
         *  alert : ���â <br/>
         *  confirm : Ȯ��â <br/>
         *  open : �˾� ���� <br/>
         *  close : �˾� �ݱ� <br/>
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
                                <script>
                                    $(document).ready(function () {
                                        $(".tabArea .week li a").on("click", function () { // �ش� ��Ҹ� Ŭ���ϴ� �� �ڽ��� index ��ȣ�� �����´�. [0], [1] 
                                            const num = $(".tabArea .week li a").index($(this)); // ������ ����Ǿ� �ִ� on class ���� 
                                            $(".tabArea .week li").removeClass("on");
                                            $(".tabArea .tabBox").removeClass("on"); // ���� ��� Ŭ���� on class �߰� 
                                            $('.tabArea .week li:eq(' + num + ')').addClass("on");
                                            $('.tabArea .tabBox:eq(' + num + ')').addClass("on");
                                        });
                                    });
                                </script>
    <script>
    function constraints(){
    	alter("�α����� �ʿ��� �����Դϴ�.");
    }
    </script>
</body>
</html>
