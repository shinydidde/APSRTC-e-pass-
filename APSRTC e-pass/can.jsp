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
<div class="body3-14">


    <!-- content -->
   <%@page import="java.sql.*"%>
      <%
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
Statement st=con.createStatement();
String un=session.getAttribute("user2").toString();
String src,pno=null,sta=null;
    ResultSet rs=st.executeQuery("select max(passno) from renew where passno in (select passno from renew where email='"+un+"')");
    while(rs.next())
     {
    
     pno=rs.getString(1);
              
               
     }

    ResultSet rs1=st.executeQuery("select status from renew where passno='"+pno+"'");
    while(rs1.next())
     {
    
      sta=rs1.getString("status");
    }
if(sta.equals("no"))
    {
	int status=st.executeUpdate("delete from renew where passno='"+pno+"'");
	if(status>0)
	{
	%><center><br><br><br><br><b><b><%
out.print("YOUR CONSESSIONAL BUSPASS HAS BEEN CANCELLED FOR PASS NUMBER...."+pno);%></b>
<br><br><br><img src="images/correct.png"></img><br><br><br><a href="userlog.jsp"><b>OK</b></a></center><br><br><br><br><b><br><br><br><br><b><br><br><br><br><b><%

	}
	}
	  else
	  {
	  %> 
	  <center><br><br><br><br><b><%
out.print("<h3 align=\"center\">" +"\nNO PENDING BUSPASSES TO CANCEL"+"</h3>");%></b></center>
<br><br><br><center><img src="buses/regaps.gif"></img></center>
<br><br><center><a href="userlog.jsp"><b>OK</b></a></center><br><br><br><br><b><br><br><br><br><b><br><br><br><br><b><br><br><br><br><b><%	  

}
}
catch(Exception e)
{
%><center><br><br><br><br><%
out.print("<h3 align=\"center\">" +"\nNO PENDING BUSPASSES TO CANCEL"+"</h3>");%></b>
<br><br><center><a href="userlog.jsp"><b>OK</b></a></center><br><br><br><br><b><br><br><br><br><b><br><br><br><br><b>

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

