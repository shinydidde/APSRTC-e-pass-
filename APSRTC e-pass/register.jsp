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

<div class="body3-3">
  <div class="main">
    <!-- content -->
    <%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%
String fname2=request.getParameter("fname");
String lname2=request.getParameter("lname");
String email2=request.getParameter("email");
String pwd2=request.getParameter("pwd");
String dob2=request.getParameter("dob");
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
int status=st.executeUpdate("insert into reg(rl,date,name,surname,email,password,dob,institutecode,institutename,coursecode,coursename,admissionno,hno,street,place,mandal,district,phoneno,lastlog) values('std','"+dt+"','"+fname2+"','"+lname2+"','"+email2+"','"+pwd2+"','"+dob2+"','"+icode2+"','"+iname2+"','"+ccode2+"','"+cname2+"','"+adm2+"','"+hno2+"','"+str2+"','"+vil2+"','"+man2+"','"+dist2+"','"+mno2+"','"+dt+"')");

if(status>0)
{
%><br><br><center><%out.print("REGISTRATION SUCCESSFULL");%></center>



<br><br><center><img src="images/regaps.gif" width="305px"></center>
<center><table align="center" border="2" cellspacing="10" cellpadding="10" bordercolor="blue">

<tr><td><%=new java.util.Date().toString()%></td></tr>
<tr><td><%out.print("Name:"+fname2);%></td><td><%out.print(""+lname2);%></td></tr>
<td><%out.print(" Email-Id:"+email2);%></td></tr>

<tr><td><%out.print(" College Name:"+iname2);%></td></tr>

<tr><td><%out.print("Course:"+cname2);%></td></tr>
<tr><td><%out.print(" Mobile No.:"+mno2);%></td></tr></table>
<br><br>
<br><center><b>NOTE: TAKE A PRINT OF THIS PAGE</b></center><br><br><center><b><a href="login.html">LOGIN HERE</b></center>
</table></center><br><br><br><br><br>

<%

}

}
catch(Exception e)
{%>
</center><b><%
out.print(""+e);%></b></center><br><br><br><br><br><%
out.println("<h3 align=\"center\">" +"USERNAME ALREADY EXISTS.......PLEASE TRY AGAIN"+"</h3>");
%>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><center><a href="register.html">REGISTER AGAIN</a></center><br><br><br><br><br><br><br><br><br><br><br>
<%
}
%>

</body>
</html>
    <!-- content / -->
  </div>
</div>
<div class="body2">
  <div class="main">
    <!-- footer -->
    <footer>Copyright &copy; <a href="#">Domain Name</a> All Rights Reserved<br>
      Design by <a target="_blank" href="index.html">TemplateMonster.com</a></footer>
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
<div align=center>This template  downloaded form <a href='index.html'>free website templates</a></div></body>
</html>
