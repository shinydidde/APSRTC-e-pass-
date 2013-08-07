<!DOCTYPE html>
<html lang="en">
<head>
<title>Apsrtc e-buspass</title>
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
          <li><a target="_blank" href="https://www.facebook.com/apsrtc/" class="normaltip"><img src="images/icon1.png" alt=""></a></li>
          <li><a target="_blank" href="https://www.twitter.com/apsrtc/" class="normaltip"><img src="images/icon2.png" alt=""></a></li>
          <li><a target="_blank" href="https://www.linkedin.com/apsrtc/" class="normaltip"><img src="images/icon3.png" alt=""></a></li>
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
      </div>
    </header>
    <!-- / header -->
  </div>
</div>
<div class="body3">
<div class="renew1">

    <!-- content --><%@ page language="java"  import="java.io.*" %>

<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>

<%
String src=request.getParameter("frm");
session.setAttribute("src",src);
String un=session.getAttribute("user2").toString();%>
<center><table   bordercolor="blue" align='center'>
<table   bordercolor="blue" align='center'>
<form  name="ren" action="renew2.jsp" method="post">

 <caption><center><h3><u>Bus Pass Form</u></h3></center></caption><br><br>
  <center><tr><td><b>FROM:   </b></td><td><b><%out.print(""+src);%>  </b> </center></td></tr><br>
      <tr><td><b>TO: </b>  </td><td> <select name="to"> 
          <option value="sel">.....[select]......   </option>

      <%


try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
Statement st=con.createStatement();

ResultSet rs=st.executeQuery(" select distinct(dest) from rtinfo where src='"+src+"'");
while(rs.next())
     {
    
      String dest=rs.getString("dest");
     %>           
               <option value="<%=dest%>"><%=dest%></option><br><br>
            <%

     }
%></td></tr></select><br>
<tr> 
      <td><b>DURATION:</b> </td>
 <td>   Month(s) <select name="dur" >
                          <option value="">....[select].....</option> 
                          <option value="1">1</option>
                          <option value="3">3</option>
                          <option value="6">6</option>
     
</tr></select>  <center><br><br><br>
<tr><td><input type="submit"  name="submit" value="  OK   "/></td>
        <td><input type="reset"  name="reset" value="   RESET   "/> </center></td></tr></form></table></center>
<br><br><br><center><b><a href="renew0.jsp">BACK</a></b></center>
<br><br><br><center><b><a href="userlog.jsp">MY MENU</a></b></center><%
}
catch(Exception e)
{
%><center><b><%out.print(""+e);%></b></center><br><br><center><b><%




out.println("<h4 align=\"center\">" +"\n3) TRY IT AGAIN"+"</h4>");%></b></center>

<center><img src="f.jpg"></center>
<br><br><center><a href="renew0.jsp"><b>Buspass</b></a></center>

<%
}
%>
</div>
<!-- content / -->
  </div>

<div class="body2">
 
    <!-- footer -->
    <footer>Copyright &copy; <a href="#">APSRTC E-BUSPASS</a> All Rights Reserved<br>
      Design by <a target="_blank" href="index.html">Team 5</a></footer>
    <!-- / footer -->

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


