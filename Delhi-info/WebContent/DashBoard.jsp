<%@page import="java.util.Enumeration"%>
<%@page import="service.User"%>
<%@page import="java.util.Vector"%>
<%@page import="service.DBlogic"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Iterator"%>

<%@page session="true" %><!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <title>Services Page - Travel by templatemo</title>
        <meta name="description" content="">
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
	width:895px;
	height:800px;
	z-index:1;
	top: 207px;
	background-color: #EEEEEE;
	left: -298px;
}
    #apDiv3 {
	position:absolute;
	width:80%;
	height:378px;
	z-index:100;
	left: 28px;
	top: 238px;
	opacity:0.8;
	background-color: #FFFFFF;
}
    </style>
    <style>
body
{
background-image:url(original.jpg);
background-size:100%;
}



</style>
    </head>
    <body>
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
                          <div class="main-menu">
                              <ul class="visible-lg visible-md">
                                    <li><a href="index.html">Home</a></li>
                                    <li class="active"><a href="ServicesLogin.jsp">Services</a></li>
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
                                <li><a href="events.jsp">Events</a></li>
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
        </div>
        <div id="apDiv3">
         
<%HashSet<String> data1 = DBlogic.getAllPlace(); %>

<h2><% if(session.getAttribute("id")!=null)
                        	{
                        	out.print("Welcome "+session.getAttribute("id")+" <a href='logoutUser'>Logout</a>");
                        	
                        	}
                        	else
                        	{
                        		response.sendRedirect("services.html");
                        	}%></h2>
<form action="">
<select name="op">

<option> select</option>
<%Iterator<String> d=data1.iterator(); 
while(d.hasNext())
{
%> 
<option><%=d.next() %></option>
<%
}
%>

  
 
</select>
<input type="submit" value="Search">
</form>

<%if(request.getParameter("op")!=null)
	{
	out.print("<table border='1' id='wrapper'>");
	//	DBlogic.connect();
		Vector<User> data =DBlogic.getAllUser(request.getParameter("op").toString());
		//o.print(data);
		out.print("<h1>Hospital at "+request.getParameter("op")+"</h1");
	out.print("<h1><tr><td><b>Name</b></td><td>Address</td><td>Category</td></tr></h1>");
		Enumeration<User> ex=data.elements();
		while (ex.hasMoreElements()) {
			User user = (User) ex.nextElement();
			
			out.print("<tr><td>"+user.getHospitalname()+"</td><td>"+user.getAddress()+"</td><td>"+user.getCategory()+"</td></tr>");
		}
		out.print("</table>");
	
	}%>

        </div>
<p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp; </p>
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