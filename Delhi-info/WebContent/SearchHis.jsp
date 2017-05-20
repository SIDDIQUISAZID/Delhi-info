<%@page import="java.util.Enumeration"%>
<%@page import="service.User"%>
<%@page import="java.util.Vector"%>
<%@page import="service.DBlogic"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Iterator"%>
<%@page session="true" %>
<%HashSet<String> data1 = DBlogic.getAllHPlace(); %>

<% if(session.getAttribute("id")==null)
                        	{
                        	response.sendRedirect("login.jsp");
                        	}%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Untitled</title>
<meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">

<meta http-equiv="Page-Enter" content="revealTrans(Duration=1,Transition=23)">
<style type="text/css">
/*----------Text Styles----------*/
.ws6 {font-size: 8px;}
.ws7 {font-size: 9.3px;}
.ws8 {font-size: 11px;}
.ws9 {font-size: 12px;}
.ws10 {font-size: 13px;}
.ws11 {font-size: 15px;}
.ws12 {font-size: 16px;}
.ws14 {font-size: 19px;}
.ws16 {font-size: 21px;}
.ws18 {font-size: 24px;}
.ws20 {font-size: 27px;}
.ws22 {font-size: 29px;}
.ws24 {font-size: 32px;}
.ws26 {font-size: 35px;}
.ws28 {font-size: 37px;}
.ws36 {font-size: 48px;}
.ws48 {font-size: 64px;}
.ws72 {font-size: 96px;}
.wpmd {font-size: 13px;font-family: Arial,Helvetica,Sans-Serif;font-style: normal;font-weight: normal;}
/*----------Para Styles----------*/
DIV,UL,OL /* Left */
{
 margin-top: 0px;
 margin-bottom: 0px;
}
#apDiv1 {
	position:absolute;
	width:740px;
	height:289px;
	z-index:29;
	left: 206px;
	top: 289px;
	font-size: x-small;
}
#apDiv2 {
	position:absolute;
	width:470px;
	height:43px;
	z-index:30;
	left: 395px;
	top: 228px;
	font-size: x-large;
	font-style: italic;
}
#apDiv2323 {
	font-family: "Comic Sans MS", cursive;
}
</style>

<script src="ac_activex.js" type="text/javascript"></script>

<script language="JavaScript1.4" type="text/javascript">
<!--
function jsPlay(soundobj) {
 var thissound= eval("document."+soundobj);
 try {
     thissound.Play();
 }
 catch (e) {
     thissound.DoPlay();
 }
}
//-->
</script>

<script language="javascript" type="text/javascript">
<!--
function MM_swapImgRestore() {
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_preloadImages() {
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) {
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() {
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}

//-->
</script>

</head>
<body background="images/003-subtle-light-pattern-background-texture-vol5.jpg" bgColor="#C0C0C0">
<div id="shape1" style="position:absolute; overflow:hidden; left:1px; top:0px; width:1376px; height:104px; z-index:0"><img src="images/xcc.jpg" alt="" border=0 width="100%" height="100%"></div>

<div id="shape2" style="position:absolute; overflow:hidden; left:0px; top:587px; width:1376px; height:41px; z-index:1"><img border=0 width="100%" height="100%" alt="" src="images/shape4166022.gif"></div>

<div id="nav10d" style="position:absolute; left:643px; top:73px; z-index:2"><a onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('nav10','','images/nav41660220a.gif',1)" href="index.html"><img name="nav10" onLoad="MM_preloadImages('images/nav41660220a.gif')" alt="" border=0 src="images/nav41660220i.gif"></a></div>
<div id="nav11d" style="position:absolute; left:781px; top:73px; z-index:2"><a onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('nav11','','images/serv.gif',1)" href="DashBoardM.jsp"><img name="nav11" onLoad="MM_preloadImages('images/serv.gif')" alt="" border=0 src="images/serv.gif"></a></div>
<div id="nav12d" style="position:absolute; left:919px; top:73px; z-index:2"><a onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('nav12','','images/nav41660222a.gif',1)" href="event.jsp"><img name="nav12" onLoad="MM_preloadImages('images/nav41660222a.gif')" alt="" border=0 src="images/nav41660222i.gif"></a></div>
<div id="nav13d" style="position:absolute; left:1057px; top:73px; z-index:2"><a onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('nav13','','images/nav41660223a.gif',1)" href="About.jsp"><img name="nav13" onLoad="MM_preloadImages('images/nav41660223a.gif')" alt="" border=0 src="images/nav41660223i.gif"></a></div>
<div id="nav14d" style="position:absolute; left:1195px; top:73px; z-index:2"><a onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('nav14','','images/nav41660224a.gif',1)" href="Contactus.jsp"><img name="nav14" onLoad="MM_preloadImages('images/nav41660224a.gif')" alt="" border=0 src="images/nav41660224i.gif"></a></div>

<div id="art1" style="position:absolute; overflow:hidden; left:826px; top:14px; width:341px; height:44px; z-index:3"><img border=0 alt="The Capital of India 
                  
" src="images/art4166022.gif"></div>

<div id="marquee1" style="position:absolute; overflow:hidden; left:504px; top:596px; width:743px; height:32px; z-index:4">
<marquee width="743" height="32">
<div class="wpmd">
<div><font color="#FFFF00" face="Georgia" class="ws18">Welcome&nbsp;&nbsp; To The Capital of India...</font></div>
</div></marquee>
</div>

<div id="image1" style="position:absolute; overflow:hidden; left:0px; top:27px; width:181px; height:70px; z-index:5"><img src="images/logo.png" alt="" title="" border=0 width=181 height=70></div>

<div id="slideshow2" style="position:absolute; overflow:hidden; left:1px; top:669px; width:322px; height:200px; z-index:6">
<script type="text/javascript">
AC_RunFlashContent('width','322','height','200','quality','high','autoplay','true','loop','true','wmode','opaque','FlashVars','bcastr_xml_url=images//slideshow4166022.xml&AutoPlayTime=4&IsShowBtn=0','codebase','http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab','pluginspage','http://www.macromedia.com/go/getflashplayer','src','images//bcastr31.swf');
</script>
<noscript>
<object width=322 height=200 classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab">
<param name="movie" value="images//bcastr31.swf">
<param name="quality" value="high">
<param name="loop" value="true">
<param name="wmode" value="opaque">
<param name="autoplay" value="true">
<param name="FlashVars" value="bcastr_xml_url=images//slideshow4166022.xml&AutoPlayTime=4&IsShowBtn=0">
<embed src="images//bcastr31.swf" width=322 height=200 quality="high" TYPE="application/x-shockwave-flash" wmode="opaque" FlashVars="bcastr_xml_url=images//slideshow4166022.xml&AutoPlayTime=4&IsShowBtn=0" loop="true" autoplay="true" pluginspage="http://www.macromedia.com/go/getflashplayer"></embed>
</object>
</noscript>
</div>

<div id="shape3" style="position:absolute; overflow:hidden; left:0px; top:632px; width:333px; height:35px; z-index:7"><img border=0 width="100%" height="100%" alt="" src="images/shape4166022.gif"></div>

<div id="slideshow3" style="position:absolute; overflow:hidden; left:337px; top:674px; width:336px; height:195px; z-index:8">
<script type="text/javascript">
AC_RunFlashContent('width','336','height','195','quality','high','autoplay','true','loop','true','wmode','opaque','FlashVars','bcastr_xml_url=images//slideshow4166006.xml&AutoPlayTime=5','codebase','http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab','pluginspage','http://www.macromedia.com/go/getflashplayer','src','images//bcastr31.swf');
</script>
<noscript>
<object width=336 height=195 classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab">
<param name="movie" value="images//bcastr31.swf">
<param name="quality" value="high">
<param name="loop" value="true">
<param name="wmode" value="opaque">
<param name="autoplay" value="true">
<param name="FlashVars" value="bcastr_xml_url=images//slideshow4166006.xml&AutoPlayTime=5">
<embed src="images//bcastr31.swf" width=336 height=195 quality="high" TYPE="application/x-shockwave-flash" wmode="opaque" FlashVars="bcastr_xml_url=images//slideshow4166006.xml&AutoPlayTime=5" loop="true" autoplay="true" pluginspage="http://www.macromedia.com/go/getflashplayer"></embed>
</object>
</noscript>
</div>

<div id="shape4" style="position:absolute; overflow:hidden; left:335px; top:630px; width:342px; height:35px; z-index:9"><img border=0 width="100%" height="100%" alt="" src="images/shape4166006.gif"></div>

<div id="shape5" style="position:absolute; overflow:hidden; left:679px; top:632px; width:342px; height:35px; z-index:10"><img border=0 width="100%" height="100%" alt="" src="images/shape4166006.gif"></div>

<div id="slideshow4" style="position:absolute; overflow:hidden; left:684px; top:672px; width:346px; height:197px; z-index:11">
<script type="text/javascript">
AC_RunFlashContent('width','346','height','197','quality','high','autoplay','true','loop','true','wmode','opaque','FlashVars','bcastr_xml_url=images//slideshow4166006.xml&AutoPlayTime=5','codebase','http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab','pluginspage','http://www.macromedia.com/go/getflashplayer','src','images//bcastr31.swf');
</script>
<noscript>
<object width=346 height=197 classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab">
<param name="movie" value="images//bcastr31.swf">
<param name="quality" value="high">
<param name="loop" value="true">
<param name="wmode" value="opaque">
<param name="autoplay" value="true">
<param name="FlashVars" value="bcastr_xml_url=images//slideshow4166006.xml&AutoPlayTime=5">
<embed src="images//bcastr31.swf" width=346 height=197 quality="high" TYPE="application/x-shockwave-flash" wmode="opaque" FlashVars="bcastr_xml_url=images//slideshow4166006.xml&AutoPlayTime=5" loop="true" autoplay="true" pluginspage="http://www.macromedia.com/go/getflashplayer"></embed>
</object>
</noscript>
</div>

<div id="shape6" style="position:absolute; overflow:hidden; left:1032px; top:631px; width:324px; height:35px; z-index:12"><img border=0 width="100%" height="100%" alt="" src="images/shape4166006.gif"></div>

<div id="slideshow5" style="position:absolute; overflow:hidden; left:1037px; top:672px; width:335px; height:196px; z-index:13">
<script type="text/javascript">
AC_RunFlashContent('width','335','height','196','quality','high','autoplay','true','loop','true','wmode','opaque','FlashVars','bcastr_xml_url=images//slideshow4166006.xml&AutoPlayTime=5','codebase','http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab','pluginspage','http://www.macromedia.com/go/getflashplayer','src','images//bcastr31.swf');
</script>
<noscript>
<object width=335 height=196 classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab">
<param name="movie" value="images//bcastr31.swf">
<param name="quality" value="high">
<param name="loop" value="true">
<param name="wmode" value="opaque">
<param name="autoplay" value="true">
<param name="FlashVars" value="bcastr_xml_url=images//slideshow4166006.xml&AutoPlayTime=5">
<embed src="images//bcastr31.swf" width=335 height=196 quality="high" TYPE="application/x-shockwave-flash" wmode="opaque" FlashVars="bcastr_xml_url=images//slideshow4166006.xml&AutoPlayTime=5" loop="true" autoplay="true" pluginspage="http://www.macromedia.com/go/getflashplayer"></embed>
</object>
</noscript>
</div>

<div id="hr1" style="position:absolute; overflow:hidden; left:0px; top:662px; width:1363px; height:17px; z-index:14">
<hr size=2 width=1363>
</div>

<div id="hr2" style="position:absolute; overflow:hidden; left:0px; top:872px; width:1375px; height:17px; z-index:15">
<hr size=2 width=1375>
</div>

<script LANGUAGE="JavaScript">
<!--
// image src
var trailsrc = "images/js4166006.gif";

var nDots = 7;
var Xbpos = 0;
var Ybpos = 0;

// fixed time step, no relation to real time
var DELTAT = .01;
// size of one spring in pixels
var SEGLEN = 10;
// spring constant, stiffness of springs
var SPRINGK = 10;
// all the physics is bogus, just picked stuff to make it look okay
var MASS = 1;
// Positive XGRAVITY pulls right, negative pulls left
// Positive YGRAVITY pulls down, negative up
var XGRAVITY = 0;
var YGRAVITY = 50;
// RESISTANCE determines a slowing force proportional to velocity
var RESISTANCE = 10;
// stopping criterea to prevent endless jittering
// doesn't work when sitting on bottom since floor
// doesn't push back so acceleration always as big
// as gravity
var STOPVEL = 0.1;
var STOPACC = 0.1;
var DOTSIZE = 11;
// BOUNCE is percent of velocity retained when 
// bouncing off a wall
var BOUNCE = 0.75;

var ff=(document.getElementById&&!document.all);
var ns=(document.layers);
var ie=(document.all);

// always on for now, could be played with to
// let dots fall to botton, get thrown, etc.
var followmouse = true;
var dots = new Array();

function init()
{
    var i = 0;
    for (i = 0; i < nDots; i++) {
        dots[i] = new dot(i);
    }
    
    // set their positions
    for (i = 0; i < nDots; i++) {
        dots[i].obj.left = dots[i].X;
        dots[i].obj.top = dots[i].Y;
    }
    
    setTimeout("startanimate()", 10);
}

function dot(i) 
{
	this.X  = Xbpos;
	this.Y  = Ybpos;
	this.dx = 0;
	this.dy = 0;
	
	if (ns){
	  document.write("<layer id=\"mtrail"+ i +"\" ><img src='"+trailsrc+"' border=\"0\"><\/layer>");
	} else if (ie||ff) {
	if (i == 0) {
	  document.write("<div id=\"mtrail"+ i +"\" style=\"POSITION: absolute;z-index:999;VISIBILITY: hidden;\"><img src='"+trailsrc+"' border=\"0\"><\/div>");
	} else {
          document.write("<div id=\"mtrail"+ i +"\" style=\"POSITION: absolute; z-index:999;\"><img src='"+trailsrc+"' border=\"0\"><\/div>");
        }
        }	
	
	if (ie) 
	{
		this.obj = eval("mtrail" + i + ".style");
	} else if (ff) 
	{
		this.obj = document.getElementById("mtrail" + i).style;
	}
	else
	{
		this.obj = eval("document.mtrail" + i);
	}
}

function startanimate() {	
    setInterval("animate()", 20);
}

// just save mouse position for animate() to use
function MoveHandler(e)
{
    if (ie) {
    	Xbpos = window.event.clientX + document.body.scrollLeft;
    	Ybpos = window.event.clientY + document.body.scrollTop;
    }
    else {
    	Xbpos = e.pageX;
    	Ybpos = e.pageY;
    }
}

function vec(X, Y)
{
    this.X = X;
    this.Y = Y;
}

// adds force in X and Y to spring for dot[i] on dot[j]
function springForce(i, j, spring)
{
    var dx = (dots[i].X - dots[j].X);
    var dy = (dots[i].Y - dots[j].Y);
    var len = Math.sqrt(dx*dx + dy*dy);
    if (len > SEGLEN) {
        var springF = SPRINGK * (len - SEGLEN);
        spring.X += (dx / len) * springF;
        spring.Y += (dy / len) * springF;
    }
}


function animate() {	
    // dots[0] follows the mouse,
    // though no dot is drawn there
    var start = 0;
    if (followmouse) {
        dots[0].X = Xbpos;
        dots[0].Y = Ybpos;	
        start = 1;
    }
    
    for (i = start ; i < nDots; i++ ) {
        
        var spring = new vec(0, 0);
        if (i > 0) {
            springForce(i-1, i, spring);
        }
        if (i < (nDots - 1)) {
            springForce(i+1, i, spring);
        }
        
        // air resisitance/friction
        var resist = new vec(-dots[i].dx * RESISTANCE,
            -dots[i].dy * RESISTANCE);
        
        // compute new accel, including gravity
        var accel = new vec((spring.X + resist.X)/MASS + XGRAVITY,
            (spring.Y + resist.Y)/ MASS + YGRAVITY);
        
        // compute new velocity
        dots[i].dx += (DELTAT * accel.X);
        dots[i].dy += (DELTAT * accel.Y);
        
        // stop dead so it doesn't jitter when nearly still
        if (Math.abs(dots[i].dx) < STOPVEL &&
            Math.abs(dots[i].dy) < STOPVEL &&
            Math.abs(accel.X) < STOPACC &&
            Math.abs(accel.Y) < STOPACC) {
            dots[i].dx = 0;
            dots[i].dy = 0;
        }
        
        // move to new position
        dots[i].X += dots[i].dx;
        dots[i].Y += dots[i].dy;
        
        // get size of window
        var height, width;
        if (!ie) {
            height = window.innerHeight + window.pageYOffset;
            width = window.innerWidth + window.pageXOffset;
        } else {	
            height = document.body.clientHeight + document.body.scrollTop;
            width = document.body.clientWidth + document.body.scrollLeft;
        }
        
        // bounce off 3 walls (leave ceiling open)
        if (dots[i].Y >=  height - DOTSIZE - 1) {
            if (dots[i].dy > 0) {
                dots[i].dy = BOUNCE * -dots[i].dy;
            }
            dots[i].Y = height - DOTSIZE - 1;
        }
        if (dots[i].X >= width - DOTSIZE) {
            if (dots[i].dx > 0) {
                dots[i].dx = BOUNCE * -dots[i].dx;
            }
            dots[i].X = width - DOTSIZE - 1;
        }
        if (dots[i].X < 0) {
            if (dots[i].dx < 0) {
                dots[i].dx = BOUNCE * -dots[i].dx;
            }
            dots[i].X = 0;
        }
        
        // move img to new position
        dots[i].obj.left = dots[i].X;			
        dots[i].obj.top =  dots[i].Y;		
    }
}

init();
if(ns)window.captureEvents(Event.MOUSEMOVE);
document.onmousemove = MoveHandler;
-->
</script>
<div id="shape7" style="position:absolute; overflow:hidden; left:0px; top:856px; width:1376px; height:163px; z-index:17"><img border=0 width="100%" height="100%" alt="" src="images/shape4166006.gif"></div>

<div id="text1" style="position:absolute; overflow:hidden; left:26px; top:636px; width:234px; height:27px; z-index:18">
<a href="index.html"><div class="wpmd">
<div><font color="#FFFFFF" face="Georgia" class="ws16"><B>TRANSPORT</B></font></div>
</div></a></div>

<div id="text2" style="position:absolute; overflow:hidden; left:386px; top:634px; width:234px; height:27px; z-index:19">
<div class="wpmd">
<div><font color="#FFFFFF" face="Georgia" class="ws16"><B>HOTELS</B></font></div>
<div><font color="#FFFFFF" face="Georgia" class="ws16"><B>&nbsp;&nbsp;&nbsp; </B></font></div>
<div><font color="#FFFFFF" face="Georgia" class="ws16"><B><BR></B></font></div>
</div></div>

<div id="text3" style="position:absolute; overflow:hidden; left:732px; top:634px; width:234px; height:27px; z-index:20">
<div class="wpmd">
<div><font color="#FFFFFF" face="Georgia" class="ws16"><B>EXPEDITION</B></font></div>
</div></div>

<div id="text4" style="position:absolute; overflow:hidden; left:1097px; top:634px; width:234px; height:27px; z-index:21">
<div class="wpmd">
<div><font color="#FFFFFF" face="Georgia" class="ws16"><B>HOSPITAL</B></font></div>
<div><font color="#FFFFFF" face="Georgia" class="ws16"><B><BR></B></font></div>
</div></div>

<div id="hr3" style="position:absolute; overflow:hidden; left:0px; top:103px; width:1379px; height:17px; z-index:22">
<hr size=2 width=1379>
</div>

<div id="text5" style="position:absolute; overflow:hidden; left:15px; top:118px; width:443px; height:25px; z-index:23">
<div class="wpmd">
<div><font face="Georgia" class="ws16">Welcome:- <%=session.getAttribute("id") %></font></div>
</div></div>

<div id="text6" style="position:absolute; overflow:hidden; left:1238px; top:113px; width:122px; height:25px; z-index:24">
<div class="wpmd">
<div><font face="Georgia" class="ws16"><a href="logoutUser" title="">LOGOUT</a></font></div>
<div><font face="Georgia" class="ws16"><BR></font></div>
</div></div>

<div id="hr4" style="position:absolute; overflow:hidden; left:0px; top:143px; width:1376px; height:17px; z-index:25">
<hr size=4 width=1376 color="#808080">
</div>

<div id="text7" style="position:absolute; overflow:hidden; left:395px; top:172px; width:406px; height:37px; z-index:26">
<div class="wpmd">
<div><font face="Georgia" class="ws16">Search Visitng Place by Location</font></div>
</div></div>
<div id="apDiv1">
<table>














<%if(request.getParameter("op")!=null)
	{%>
	</table>
<table width="734" border="1" cellspacing="2" cellpadding="1">
  <tr>
    <td  bgcolor="#A0A0A4"><strong>Location</strong></td>
    <td  bgcolor="#A0A0A4"><strong>Name</strong></td>
    <td bgcolor="#A0A0A4"><strong>Popularity</strong></td>
        <td  bgcolor="#A0A0A4"><strong>About</strong></td>
    
      </tr>
	<%
		Vector<User> data =DBlogic.getHistory(request.getParameter("op").toString());
		Enumeration<User> ex=data.elements();
		while (ex.hasMoreElements()) {
			User user = (User) ex.nextElement();
			%>
			
			 <tr>
    <td><%=user.getHospitalname() %></td>
    <td><%=user.getCategory()%></td>
    <td><%=user.getSpeciality()%></td>
        <td><%=user.getLocation()%></td>
    
   
  </tr>
			<%
		}
	
	}%>


 
</table>
</div>
<div id="art2" style="position:absolute; overflow:hidden; left:165px; top:21px; width:347px; height:79px; z-index:28"><img border=0 alt="CITY LIFE" src="images/art496332.gif"></div>
<form action="">
<div id="apDiv2"><span id="apDiv2323">Select Location</span>

<select name="op" id="select">
    <option>select</option>
    <%Iterator<String> d=data1.iterator(); 
while(d.hasNext())
{
%> 
<option><%=d.next() %></option>
<%
}
%>
  </select>
<input type="submit" name="button" id="button" value="Search">
</form>
</div>
</body>
</html>
