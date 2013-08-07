<html>
<head><title>APSRTC e-PASS</title></head>
<body background="images/b37.jpg">

<%@ page language="java"  import="java.io.*" %>

<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%
String src1=session.getAttribute("src").toString();
String dest1=request.getParameter("to");
String dur1=request.getParameter("dur");
String un=session.getAttribute("user2").toString();
String appno=session.getAttribute("apno").toString();
String dt1=new java.util.Date().toString();
java.text.DateFormat df = new java.text.SimpleDateFormat("dd-MM-yyyy"); 
String dt=""+df.format(new java.util.Date()) +" "; 
int sa=0,ta=0,oa=0,amt=0,pno=0;
String edt=null;
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
Statement st=con.createStatement();
int status=st.executeUpdate("insert into renew(appno,status,email,duration,src,destin,dat)values('"+appno+"','no','"+un+"','"+dur1+"','"+src1+"','"+dest1+"','"+dt+"')");
ResultSet rs=st.executeQuery("select 6amt,3amt,1amt from rtinfo where src='"+src1+"'  and dest='"+dest1+"' ");

while(rs.next())
{
 sa=rs.getInt("6amt");
 ta=rs.getInt("3amt");
 oa=rs.getInt("1amt");
 }

 rs.close();
 ResultSet rs1=st.executeQuery(" select max(passno) from renew where passno in (select passno from renew where email='"+un+"')");
    while(rs1.next())
     {
    
     pno=rs1.getInt(1);
      }
 
 if(dur1.equals("6"))
 {
 int stat=st.executeUpdate(" update renew set expdt=date_add(now(),interval 6 month) where passno='"+pno+"' and email='"+un+"'");
  amt=sa;
 }
 if(dur1.equals("3"))
 {
  int stat=st.executeUpdate(" update renew set expdt=date_add(now(),interval 3 month) where passno='"+pno+"' and email='"+un+"'");
  amt=ta;
 }
 if(dur1.equals("1"))
 {
  int stat=st.executeUpdate(" update renew set expdt=date_add(now(),interval 3 month) where passno='"+pno+"' and email='"+un+"'");
  amt=oa;
 }
 

%><center><br><br><br><b><%out.print("Your Consessional Buspass Succesfully Renewed");%> 
<br><br><br><center><img src="images/regaps.gif"></img><br><br></center> 
<table   bordercolor="black" align='center'>
<tr><td><b><%out.print("DATE:");%></b></td></td><td><b><%out.print(""+dt);%></b></td></tr>
<tr><td><b><%out.print("APPL.NO:");%></b></td></td><td><b><%out.print(""+appno);%></b></td></tr>
<tr><td><b>BUS PASS NO:</b></td><td><b><%out.print(""+pno);%></b></td></tr>
<tr><td><b><%out.print("EMAIL:");%></b></td></td><td><b><%out.print(""+un);%></b></td></tr>
<tr><td><b><%out.print(" FROM:");%></b></td><td><b><%out.print(""+src1);%></b></td></tr>
<tr><td><b><%out.print(" TO:");%></b></td><td><b><%out.print(""+dest1);%></b></td></tr><%
ResultSet rs3=st.executeQuery("select expdt from renew where passno='"+pno+"' ");
while(rs3.next())
{
edt=rs3.getString("expdt");
}%>

<tr><td><b><%out.print("VALID TILL:");%></td><td><b><i><%out.print(""+edt);%></i></b></td></tr>
<tr><td><b><%out.print("AMOUNT TO BE PAID:");%></b><td><b><i><%out.print(""+amt);%></i></b></td></tr></center></table>
<br><br><br><br><center><b>NOTE:Take a Print Of This Page</b></center><br><br><br><br>


<%
}
catch(Exception e)
{
%><center><b><%out.print(""+e);%></b></center><br><br><center><b><%



out.println("<h4 align=\"center\">" +"\n3) TRY IT AGAIN"+"</h4>");%></b></center>

<center><img src="images/ok3.png"></center>
<br><br><center><a href="renew0.jsp"><b>RENEW MY PASS</a></center>

<%
}
%>

<!-- content / -->
  </div>
</div>
<div class="body2">
  <div class="main">
    <!-- footer -->
    
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
</body>
</html>
