<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <title>City Life</title>
        <meta name="description" content="">
        <%-- changes required --%>
        <%if(session.getAttribute("id")!=null)
        {
        	if(session.getAttribute("type").toString().equalsIgnoreCase("member"))
        	{
            	response.sendRedirect("DashBoardM.jsp");

        	}
        	if(session.getAttribute("type").toString().equalsIgnoreCase("admin"))
        	{
            	response.sendRedirect("DashBoardA.jsp");

        	}
        	if(session.getAttribute("type").toString().equalsIgnoreCase("advertiser"))
        	{
            	response.sendRedirect("DashBoardAD.jsp");

        	}
        }
 %>
<!-- 
Travel Template 
http://www.templatemo.com/preview/templatemo_409_travel 
-->
        <meta name="viewport" content="width=device-width">
		<meta name="author" content="templatemo">
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,800,700,600,300' rel='stylesheet' type='text/css'>
        
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/font-awesome.css">
        <link rel="stylesheet" href="css/animate.css">
        <link rel="stylesheet" href="css/templatemo_misc.css">
        <link rel="stylesheet" href="css/templatemo_style.css">

        <script src="js/vendor/modernizr-2.6.1-respond-1.1.0.min.js"></script>
    <style type="text/css">
    #apDiv1 {
	position:absolute;
	width:398px;
	height:151px;
	z-index:100;
	left: 325px;
	top: 268px;
	background-color: #6666FF;
}
    #apDiv2 {
	position:absolute;
	width:446px;
	height:213px;
	z-index:1;
	left: -7px;
	top: 184px;
	background-color: #EEEEEE;
}
    #apDiv3 {
	position:absolute;
	width:200px;
	height:39px;
	z-index:8;
	left: 13px;
	top: 153px;
}
    </style>
    
    
    
    
    
    
    </head>
    <script>  
function validateform(){  
var Email=document.myform.email.value;  
var password=document.myform.pass.value;  
  
if (Email==null || Email==""){
	
  alert("Please Enter Valid EMail Id");  
  return false;  
}else if(password.length<6){  
  alert("Password must be at least 6 characters long.");  
  return false;  
  }  
}  




</script>
    
    
    
    <body>
<form name="myform" method="post" action="UserVT"  >  
        <!--[if lt IE 7]>
            <p class="chromeframe">You are using an outdated browser. <a href="http://browsehappy.com/">Upgrade your browser today</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to better experience this site.</p>
        <![endif]-->

        <div class="site-header">
            <div class="container">
                <div class="main-header">
                    <div class="row">
                        <div class="col-md-4 col-sm-6 col-xs-10">
                            <div class="logo">
                                <a href="#">
                                    <img src="images/logo.png" alt="travel html5 template" title="travel html5 template">
                                </a>
                            </div> <!-- /.logo -->
                        </div> <!-- /.col-md-4 -->
                        <div class="col-md-8 col-sm-6 col-xs-2">
                          <div id="apDiv2">
                            <div id="text1" style="position:absolute; overflow:hidden; left:7px; top:21px; width:124px; height:30px; z-index:1">
  <div class="wpmd">
<div><font face="Georgia" class="ws14">Enter id</font></div>
</div></div>

<div id="text2" style="position:absolute; overflow:hidden; left:7px; top:67px; width:124px; height:30px; z-index:2">
<div class="wpmd">
<div><font face="Georgia" class="ws14">Enter Pass</font></div>
</div></div>

<input name="id" type="text" style="position:absolute; width:200px; left:169px; top:19px; z-index:3">
<input name="password" type="password" style="position:absolute; width:200px; left:169px; top:64px; z-index:3">
<div id="text3" style="position:absolute; overflow:hidden; left:2px; top:105px; width:160px; height:30px; z-index:6">
  <div class="wpmd">
    <div><font face="Georgia" class="ws14">Enter&nbsp; Desigantion</font></div>
  </div>
</div>
 <% if(request.getAttribute("err")!=null)
        	{%>
        	<h1 align="center"><%= request.getAttribute("err") %></h1>
        	
        	<%
        	}%><input name="submit" type="submit" style="position:absolute; left:275px; top:159px; z-index:7">
<div id="apDiv3"><a href="singup.jsp">New Member Click Here </a></div>
<select name="type" style="position:absolute; left:169px; top:113px; width:200px; z-index:5">
  <option value="member">Member Login</option>
  <option value="admin">Admin Login</option>
</select></form>
                          </div>
                            <div class="main-menu">
                                <ul class="visible-lg visible-md">
                                    <li><a href="index.html">Home</a></li>
                                    <li class="active"><a href="services.html">Services</a></li>
                                    <li><a href="trends.html">Events</a></li>
                                    <li><a href="about.jsp">About Us</a></li>
                                    <li><a href="contact.jsp">Contact</a></li>
                                </ul>
                                <a href="#" class="toggle-menu visible-sm visible-xs">
                                    <i class="fa fa-bars"></i>
                                </a>
                            </div> <!-- /.main-menu -->
                        </div> <!-- /.col-md-8 -->
                    </div> <!-- /.row -->
                </div> <!-- /.main-header -->
                <div class="row">
                    <div class="col-md-12 visible-sm visible-xs">
                        <div class="menu-responsive">
                            <ul>
                                <li><a href="index.html">Home</a></li>
                                <li class="active"><a href="services.html">Services</a></li>
                                <li><a href="trends.html">Events</a></li>
                                <li><a href="about.jsp">About Us</a></li>
                                <li><a href="contact.jsp">Contact</a></li>
                            </ul>
                        </div> <!-- /.menu-responsive -->
                    </div> <!-- /.col-md-12 -->
                </div> <!-- /.row -->
            </div> <!-- /.container -->
        </div> <!-- /.site-header -->

        <div class="page-top" id="templatemo_services">
        </div> <!-- /.page-header -->

        <div class="middle-content">
            <div class="container">
                <div class="row"><!-- /.col-md-4 --><!-- /.col-md-4 --><!-- /.col-md-4 -->
                </div> <!-- /.row -->
            </div> <!-- /.container -->
        </div> <!-- /.middle-content -->



        <div class="go-act">
            <div class="container">
                <div class="row"><!-- /.col-md-4 --><!-- /.col-md-8 -->
                </div> <!-- /.row -->
            </div> <!-- /.container -->
        </div> <!-- /.go-act -->



        <div class="ticket-list">
            <div class="container">
                <div class="row"><!-- /.col-md-3 --><!-- /.col-md-3 --><!-- /.col-md-3 --><!-- /.col-md-3 -->
                </div> <!-- /.row -->
            </div> <!-- /.container -->
        </div> <!-- /.ticket-list -->




        <div class="partner-list">
            <div class="container">
                <div class="row">
                    <p>&nbsp;</p>
                    <p>&nbsp;</p>
                    <div class="col-md-2 col-sm-4 col-xs-6">
                        <div class="partner-item">
                            <img src="images/partners/partner1.png" alt="">
                        </div> <!-- /.partner-item -->
                    </div> <!-- /.col-md-2 -->
                    <div class="col-md-2 col-sm-4 col-xs-6">
                        <div class="partner-item">
                            <img src="images/partners/partner2.png" alt="">
                        </div> <!-- /.partner-item -->
                    </div> <!-- /.col-md-2 -->
                    <div class="col-md-2 col-sm-4 col-xs-6">
                        <div class="partner-item">
                            <img src="images/partners/partner3.png" alt="">
                        </div> <!-- /.partner-item -->
                    </div> <!-- /.col-md-2 -->
                    <div class="col-md-2 col-sm-4 col-xs-6">
                        <div class="partner-item">
                            <img src="images/partners/partner1.png" alt="">
                        </div> <!-- /.partner-item -->
                    </div> <!-- /.col-md-2 -->
                    <div class="col-md-2 col-sm-4 col-xs-6">
                        <div class="partner-item">
                            <img src="images/partners/partner2.png" alt="">
                        </div> <!-- /.partner-item -->
                    </div> <!-- /.col-md-2 -->
                    <div class="col-md-2 col-sm-4 col-xs-6">
                        <div class="partner-item last"></div> <!-- /.partner-item -->
                    </div> <!-- /.col-md-2 -->
                </div> <!-- /.row -->
            </div> <!-- /.container -->
        </div> <!-- /.partner-list -->



        <div class="site-footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-sm-4">
                        <div class="footer-logo">
                            <a href="index.html">
                                <img src="images/logo.png" alt="">
                            </a>
                        </div>
                    </div> <!-- /.col-md-4 -->
                    <div class="col-md-4 col-sm-4">
                        <div class="copyright">
                            <span>Copyright &copy; 2084 <a href="#">Company Name</a></span>
                        </div>
                    </div> <!-- /.col-md-4 -->
                    <div class="col-md-4 col-sm-4">
                        <ul class="social-icons">
                            <li><a href="#" class="fa fa-facebook"></a></li>
                            <li><a href="#" class="fa fa-twitter"></a></li>
                            <li><a href="#" class="fa fa-linkedin"></a></li>
                            <li><a href="#" class="fa fa-flickr"></a></li>
                            <li><a href="#" class="fa fa-rss"></a></li>
                        </ul>
                    </div> <!-- /.col-md-4 -->
                </div> <!-- /.row -->
            </div> <!-- /.container -->
        </div> <!-- /.site-footer -->

        <script src="js/vendor/jquery-1.11.0.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.0.min.js"><\/script>')</script>
        <script src="js/bootstrap.js"></script>
        <script src="js/plugins.js"></script>
        <script src="js/main.js"></script>
        
        <!-- Google Map -->
        <script src="http://maps.google.com/maps/api/js?sensor=true"></script>
        <script src="js/vendor/jquery.gmap3.min.js"></script>
        
        <!-- Google Map Init-->
        <script type="text/javascript">
            jQuery(function($){
                $('.first-map').gmap3({
                    marker:{
                        address: '16.8496189,96.1288854' 
                    },
                        map:{
                        options:{
                        zoom: 16,
                        scrollwheel: false,
                        streetViewControl : true
                        }
                    }
                });
            });
        </script>
        <!-- templatemo 409 travel -->
    </body>
</html>