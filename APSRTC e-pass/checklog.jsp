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
          <li><a href="https://www.facebook.com/apsrtc/" class="normaltip"><img src="images/icon1.png" alt=""></a></li>
          <li><a href="https://www.twitter.com/apsrtc/" class="normaltip"><img src="images/icon2.png" alt=""></a></li>
          <li><a href="https://www.linkedin.com/apsrtc/" class="normaltip"><img src="images/icon3.png" alt=""></a></li>
        </ul>
      </div>
      <div class="wrapper">
        <h1><a href="index.html" id="logo"></a></h1>
        <nav>
          <ul id="menu">
            <li class="first"><a href="index.html">Home </a></li>
            <li id="menu_active"><a href="login.html">Login</a></li>
            <li><a href="information1.html">Info</a></li>
      
            <li><a href="feedback.jsp">Feedback</a></li>

          </ul>
        </nav>
      </div>
    </header>
    <!-- / header -->
  </div>
</div>
<div class="body3-4">
  <div class="main">
    <!-- content -->
    <%@page language="java" import="java.sql.*"%>
<%
String user2=request.getParameter("user1");
String pass2=request.getParameter("password1");
session.setAttribute("user2",user2);

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from reg where email='"+user2+"'  and password='"+pass2+"' ");

if(rs.next())
{
String rl=rs.getString(3).trim();
 if(rl.equals("admin"))
         {
		  
			 
               session.setAttribute("pass2",pass2); 
			   String d=rs.getString("lastlog");
			      session.setAttribute("d",d); 
               response.sendRedirect("adminlogin.jsp");
         }
       else if(rl.equals("std"))
         {
               
            String name=rs.getString("name");
			  String d=rs.getString("lastlog");
			      session.setAttribute("d",d); 
                    session.setAttribute("name",name); 
                  int apno=rs.getInt("appno");
              session.setAttribute("apno",apno);
			  
                      response.sendRedirect("userlog.jsp");
               
         }
}		 
else
{
%><br><br><center><%out.print("<h2 align=\"center\">" +"Invalid login....please try again"+"</h2>");%></center>
<br><br><center><img src="images/error.png" width="100" height="100"></center>
<br><br><center><a href="login.html"><b>LOGIN</b></a></center>
<%
}
}
catch(Exception e)
{
%><center><b><%out.print(""+e);%></b></center><br><br><center><b><%
out.println("<h2 align=\"center\">" +"\nlogin again"+"</h2>");
%>
<center><img src="f.jpg"></center>
<br><br><center><a href="login.html"><b>LOGIN</a></center>

<%
}

%>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
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
