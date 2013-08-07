<%@ page language="java"  import="java.io.*" %>

<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<html>
<head><link rel="stylesheet" type="text/css" href="regsucces.css"></link>

</head>
<body>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
Statement st7=con1.createStatement();
try
{
String user2=session.getAttribute("user2").toString();
int st9= st7.executeUpdate("UPDATE reg SET email='"+user2+"' where email='"+user2+"'");

}
catch(Exception e)
{
%><center><b><%out.print(""+e);%></b></center><br><br><center><b>



<%
}

%>

</body>
</html>
