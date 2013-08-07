<!DOCTYPE html>
<html lang="en">
<head>
<title>apsrtc e-buspass</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<script src="js/jquery-1.6.js" ></script>
<script src="js/cufon-yui.js"></script>
<script src="js/cufon-replace.js"></script>
<script src="js/Josefin_Sans_400.font.js"></script>
<script src="js/Tangerine_700.font.js"></script>
<script src="js/atooltip.jquery.js"></script>
<script src="js/jquery.nivo.slider.pack.js"></script>
<script src="js/script.js"></script>
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<style type="text/css">.aToolTip, .box1, .box1 .inner, .button, .button strong{behavior:url("js/PIE.htc");}</style>
<![endif]-->

		
  





</head>
<body id="page6">
<div class="body1">
  <div class="main">
    <!-- header -->
    <header>
      <div class="wrapper">
        <ul id="icons">
          <li><a href="www.facebook.com" class="normaltip"><img src="images/icon1.png" alt=""></a></li>
          <li><a href="www.twitter.com" class="normaltip"><img src="images/icon2.png" alt=""></a></li>
          <li><a href="https://www.linkedin.com/apsrtc/" class="normaltip"><img src="images/icon3.png" alt=""></a></li>
        </ul>
      </div>
      <div class="wrapper">
        <h1><a href="index.html" id="logo"></a></h1>
        <nav>
          <ul id="menu">
            <li class="first"><a href="index.html">Home </a></li>
            <li id="menu_active"><a href="login.html">Login</a></li>
            <li><a href="feedback.jsp">Feedback</a></li>
            <li><a href="comp1.jsp">Complaints</a></li>
            <li><a href="logout.jsp">Logout</a></li>
          </ul>
        </nav>
      </div>
    </header>
    <!-- / header -->
  </div>
</div>
<div class="body3-11">
  <div class="main">
    <!-- content -->
  <%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%

String icode2=request.getParameter("icode");
String iname2=request.getParameter("iname");
String ccode2=request.getParameter("ccode");
String cname2=request.getParameter("cname");
String adm2=request.getParameter("adm");
String hno2=request.getParameter("hno");
String str2=request.getParameter("street");
String vil2=request.getParameter("vil");
String man2=request.getParameter("man");
String dist2=request.getParameter("dist");
String mno2=request.getParameter("mno");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
Statement st=con.createStatement();
String dt=new java.util.Date().toString();
String em=(String)session.getAttribute("user2");
int st1= st.executeUpdate("UPDATE reg SET institutecode='"+icode2+"',institutename='"+iname2+"',coursecode='"+ccode2+"',coursename='"+cname2+"',admissionno='"+adm2+"',hno='"+hno2+"',street='"+str2+"',place='"+vil2+"',mandal='"+man2+"',district='"+dist2+"',phoneno='"+mno2+"' WHERE email='"+em+"'");
if(st1>0)
{
%><br><br><center><b><%out.print(" Details changed Successfully");%><b></center><br><%

}%>

<center><img src="images/regaps.gif"></center><br>
<center><table align="center" border="2" cellspacing="10" cellpadding="10" bordercolor="grey">

<tr><td><%=new java.util.Date().toString()%></td></tr>
<table align="center" bordercolor="pink" >


<tr><td>COLLEGE:</td><td><%out.print(""+iname2);%></td><tr>
<tr><td>COURSE CODE:</td><td><%out.print(""+icode2);%></td><tr>
<tr><td>COURSE NAME:</td><td><%out.print(""+cname2);%></td><tr>
<tr><td>COURSE NAME:</td><td><%out.print(""+ccode2);%></td><tr>
<tr><td>ADM NO.:</td><td><%out.print(""+adm2);%></td><tr>
<tr><td>ADDRESS:</td></tr>
<tr><td><%out.print(""+hno2);%></td><tr>
<tr><td><%out.print(""+str2);%></td><tr>
<tr><td><%out.print(""+vil2);%></td><tr>
<tr><td><%out.print(""+man2);%></td><tr>
<tr><td><%out.print(""+dist2);%></td><tr>
<tr><td>MOBILE NO.:</td><td><%out.print(""+mno2);%></td><tr></table></center>
<br><br><br><br><br><br><br><br><center><a href="userlog.jsp">GO BACK</a></center><br><br><br><%
}


catch(Exception e)
{
%><center><b><%out.print(""+e);%></b></center><br><br><center><b><%
out.println("<h2 align=\"center\">" +".......PLEASE TRY AGAIN.........."+"</h2>");
%></center>
<br><br><center><a href="rereg.html">CHANGE DETAILS</a></center>
<%
}
%>
    <!-- content / -->
  </div>
</div>
<div class="body2">
  <div class="main">
    <!-- footer -->
    <footer>Copyright &copy; <a href="#">APSRTC E-BUSPASS</a> All Rights Reserved<br>
      Design by <a  href="index.html">Team 5</a></footer>
    <!-- / footer -->
  </div>
</div>
<script>Cufon.now();</script>
<script>
$(window).load(function () {
    $('.slider').nivoSlider({
        effect: 'fold', //Specify sets like: 'fold,fade,sliceDown, sliceDownLeft, sliceUp, sliceUpLeft, sliceUpDown, sliceUpDownLeft' 
        slices: 17,
        animSpeed: 500,
        pauseTime: 8000,
        startSlide: 0, //Set starting Slide (0 index)
        directionNav: true, //Next & Prev
        directionNavHide: false, //Only show on hover
        controlNav: true, //1,2,3...
        controlNavThumbs: false, //Use thumbnails for Control Nav
        controlNavThumbsFromRel: false, //Use image rel for thumbs
        controlNavThumbsSearch: '.jpg', //Replace this with...
        controlNavThumbsReplace: '_thumb.jpg', //...this in thumb Image src
        keyboardNav: true, //Use left & right arrows
        pauseOnHover: true, //Stop animation while hovering
        manualAdvance: false, //Force manual transitions
        captionOpacity: 1, //Universal caption opacity
        beforeChange: function () {},
        afterChange: function () {
            Cufon.refresh();
        },
        slideshowEnd: function () {} //Triggers after all slides have been shown
    });
});
</script>
<div align=center>This Website is developed by <a href='index.html'>Aditya 4th IT Team 5</a></div></body>
</html>
