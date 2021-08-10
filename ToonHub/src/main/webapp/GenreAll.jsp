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
<script type='text/javascript'
	src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
    <script src="js/modernizr.custom.js"></script>

<style>
body {
	background: #eee;
}

.platform{
    padding:20px;
    width: 100%;
    height: 800px;
    color: #616161;

}
.platform ul .toonname{
    display: inline;
    float: left;
}
.platform .viewall{
    display: inline;
    float:right;
}


</style>
</head>
<body oncontextmenu='return false' class='snippet-body skin-3'>
<%ToonMemberDTO info = (ToonMemberDTO) session.getAttribute("info"); 




%>
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
                        <strong><a href="#" style = "color: #42C690">Toonhub</a></strong>    <strong>|</strong> <strong ><a href="Community.html">Ŀ�´�Ƽ</a></strong> <!-- ���� ���-->
                    </div>
                    <br><br>
				</header>
					
				<div id="wrap">
                    <ul class="codrops-demos">
						<a href="ToonMain.html" > ���Ϻ� </a>
						<a href="ToonGenre.html"style="color:#42C690;"> �帣 </a>
						<a href="platform.html"> �÷��� </a>
                    </ul>
                </div>
                <div class ="platform">
                    <table class="toonname">
                    <ul><strong style="font-size: 20px;">#���</strong>
                    <div class = "viewall">
                    </div>
                    </ul>
                    </table>




                    <div>
                        <div class="items" style="display: flex;flex-wrap: wrap; margin-left:3%;" >
                          
                          
                          
                          
                            <div style="margin: 10px;">
                                <a href="detail.html" style="color: #616161!important;">
                                <div style="width: 100px;height: 100px; background-color: #42C690;">
                                    <img src="nemo.png" width="100px" height = "100px">
                                </div>
                                <div class = "info">
                                    <strong>����</strong><br>
                                    <span>�۰� �̸�</span><br>
                                </div>
                                </a>
                             </div>
                           
                           
                           
                           
                           
                           
                             <div style="margin:10px;">
                                <a href="detail.html" style="color: #616161!important;">
                                    <div style="width: 100px;height: 100px; background-color: #42C690;">
                                        <img src="nemo.png" width="100px" height = "100px">
                                    </div>
                                    <div class = "info">
                                        <strong>����</strong><br>
                                        <span>�۰� �̸�</span><br>
                                    </div>
                                </a>
                             </div>



                             <div style="margin: 10px;">
                                <a href="detail.html" style="color: #616161!important;">
                                    <div style="width: 100px;height: 100px; background-color: #42C690;">
                                        <img src="nemo.png" width="100px" height = "100px">
                                    </div>
                                    <div class = "info">
                                        <strong>����</strong><br>
                                        <span>�۰� �̸�</span><br>
                                    </div>
                                </a>
                             </div>


                             <div style="margin: 10px;">
                                <a href="detail.html" style="color: #616161!important;">
                                    <div style="width: 100px;height: 100px; background-color: #42C690;">
                                        <img src="nemo.png" width="100px" height = "100px">
                                    </div>
                                    <div class = "info">
                                        <strong>����</strong><br>
                                        <span>�۰� �̸�</span><br>
                                    </div>
                                </a>
                             </div>

                             <div style="margin: 10px;">
                                <a href="detail.html" style="color: #616161!important;">
                                    <div style="width: 100px;height: 100px; background-color: #42C690;">
                                        <img src="nemo.png" width="100px" height = "100px">
                                    </div>
                                    <div class = "info">
                                        <strong>����</strong><br>
                                        <span>�۰� �̸�</span><br>
                                    </div>
                                </a>
                             </div>
                             
                             <div style="margin: 10px;">
                                <a href="detail.html" style="color: #616161!important;">
                                    <div style="width: 100px;height: 100px; background-color: #42C690;">
                                        <img src="nemo.png" width="100px" height = "100px">
                                    </div>
                                    <div class = "info">
                                        <strong>����</strong><br>
                                        <span>�۰� �̸�</span><br>
                                    </div>
                                </a>
                             </div>
                             
                             
                             <div style="margin: 10px;">
                                <a href="detail.html" style="color: #616161!important;">
                                    <div style="width: 100px;height: 100px; background-color: #42C690;">
                                        <img src="nemo.png" width="100px" height = "100px">
                                    </div>
                                    <div class = "info">
                                        <strong>����</strong><br>
                                        <span>�۰� �̸�</span><br>
                                    </div>
                                </a>
                             </div>
                             
                             
                             
                             
                             
                            </div>

                                            
                
                </div>


                </div>
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
                <script src = "js/jquery-3.6.0.min.js"></script>
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
		<script src="js/draggabilly.pkgd.min.js"></script>
		<script src="js/dragdrop.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.js"></script>
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
			<script>
			function constraints(){
				alert("�α����� �ʿ��� �����Դϴ�");
			}
			</script>
</body>
</html>
