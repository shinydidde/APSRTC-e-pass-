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
        </nav>
      </div>
    </header>
    <!-- / header -->
  </div>
</div>
<div class="body3-12">
  <div class="main">
    <!-- content -->
  <%@page language="java" import="java.sql.*"%>
<%
try
{

String em=(String)session.getAttribute("user2");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from reg where email='"+em+"'");%>
<br><br><br><center><img src="images/regaps.gif" width="400"></img><br><br>
<table align="center"  bordercolor="grey"><%
while(rs.next())
{
%>
<tr><td><%out.print("APPNO:");%></td><td><%=rs.getString("appno")%></td></tr>
<tr><td><%out.print("REGISTERED ON DATE:");%></td><td><%=rs.getString("date")%></td></tr>
<tr><td><%out.print("NAME:");%></td><td><%=rs.getString("name")%></td><td><%=rs.getString("surname")%></td></tr>
<tr><td><%out.print(" EMAIL-ID:");%></td><td><%=rs.getString("email")%></td></tr>
<tr><td><%out.print(" DOB:");%></td><td><%=rs.getString("dob")%></td></tr>
<tr><td><%out.print("COLLEGE CODE :");%></td><td><%=rs.getString("institutecode")%></td></tr>
<tr><td><%out.print("COLLEGE :");%></td><td><%=rs.getString("institutename")%></td></tr>
<tr><td><%out.print(" COURSE CODE:");%></td><td><%=rs.getString("coursecode")%></td></tr>
<tr><td><%out.print(" COURSE:");%></td><td><%=rs.getString("coursename")%></td></tr>
<tr><td><%out.print(" ADMISSION NO.:");%></td><td><%=rs.getString("admissionno")%></td></tr>
<tr><td><i><b><%out.print(" ADDRESS:");%><b></i></td></tr>
<tr><td><%=rs.getString("hno")%></td></tr>
<tr><td><%=rs.getString("street")%></td></tr>
<tr><td><%=rs.getString("place")%></td></tr>
<tr><td><%=rs.getString("mandal")%></td></tr>
<tr><td><%=rs.getString("district")%></td></tr>


<tr><td><%out.print(" MOBILE NO.:");%></td><td><%=rs.getString("phoneno")%></td></tr>
<%
}

%></table></center><br><br><br><br><center><a href="userlog.jsp">BACK</a><center><br><br><br>
<%
rs.close();
st.close();
con.close();
}
catch(Exception e)
{
%><center><b><%out.print(""+e);%></b></center><br><br><center><b><%
%><h2><center><%out.println("sorry try again");%></center></h2><center><a href="userlog.jsp">BACK</a></center><br><center>
<%
}%>
    <!-- content / -->
  </div>
</div>
<div class="body2">
  <div class="main">
    <!-- footer -->
    <footer>Copyright &copy; <a href="#">APSRTC E-BUSPASS</a> All Rights Reserved<br>
      Design by <a target="_blank" href="index.html">Team 5</a></footer>
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
