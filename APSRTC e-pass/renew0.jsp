<%@page import="java.sql.*"%>

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
<script>
function validate()
{

var first = document.myForm.frm.sel.value;

count=0;
if(first==null || first=="") 
         {
           alert("Fill the Field");
		}
		</script>
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
<div class="body3">
<div class="renew0">

    <!-- content -->
   <%@page import="java.sql.*"%>

<center><form  name="myForm" action="renew1.jsp" method="post" onsubmit="return validate()>
         <table   bordercolor="blue"align='center'>
 <br><br><br><caption><center><h3>Busspass Form</h3></center></caption><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
     <tr><td>FROM:   </td><td><select name="frm"> 
          <option value="sel">.....[select]......   </option>

      <%
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
Statement st=con.createStatement();
String src;
    ResultSet rs=st.executeQuery("select distinct(src) from rtinfo order by src");
    while(rs.next())
     {
    
      src=rs.getString("src");
     %>           
               <option value="<%=src%>"><%=src%></option><br><br>
            <%

     }
%></td></tr></select>
<tr><td><input type="submit"  name="submit" value="   SUBMIT   "/></td>
          <td></td><td><input type="reset"  name="reset" value="   RESET   "/></td></tr></table></center></form>
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>	  
<%
}
catch(Exception e)
{
%><center><b><%out.print(""+e);%></b></center><br><br><center><b><%
out.println("<h2 align=\"center\">" +"\ntry again"+"</h2>");
%>
<center><img src="f.jpg"></center>
<br><br><center><a href="renew0.jsp"><b>RENEW MY PASS</a></center>

<%
}
%>
</div>
<!-- content / -->
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
<div align=center>This Website is developed by <a href='index.jsp'>Aditya 4th IT Team 5</a></div></body>
</html>

