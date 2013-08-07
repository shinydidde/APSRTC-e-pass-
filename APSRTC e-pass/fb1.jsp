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
            <li><a href="login.html">Login</a></li>
            <li id="menu_active"><a href="feedback.jsp">Feedback</a></li>
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
<%

String name=request.getParameter("fname");
String msg=request.getParameter("ano");

String dt=new java.util.Date().toString();
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
Statement st=con.createStatement();
int stat=st.executeUpdate("insert into feedback(date,name,message) values('"+dt+"','"+name+"','"+ msg+"')");
if(stat>0)
{
%><center><br><br><b><%out.print("Comment Posted Successfully");%></b></center>
<center><table align="center"  bordercolor="grey">
<%ResultSet rs=st.executeQuery("select * from feedback");
while(rs.next())
{
%>

      <tr>
        <td><%=rs.getString("date")%></td><td></td><td></td><td></td><td><%=rs.getString("name")%></td><td></td><td></td><td></td><td><b><i><%=rs.getString("message")%><i></b></td><br>       
      </tr>
	 <%
}%></table></center><br><br><br><br>
<center><a href="userlog.jsp">Go Back</a></center><br><br><%
}
}
catch(Exception e)
{
%><center><%out.print(""+e);%></center>

<center><a href="feedback.jsp">Comment Again</a></ceneter><%
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
<div align=center>This Website is developed by <a href='index.html'>Aditya 4th IT Team 5</a></div>
</body>
</html>