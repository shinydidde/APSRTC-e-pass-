<!DOCTYPE HTML>
<html>

<head>
  <title>Admin Login</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
  <link rel="stylesheet" type="text/css" href="css/styles.css" />
  <!-- modernizr enables HTML5 elements and feature detects -->
  <script type="text/javascript" src="js/modernizr-1.5.min.js"></script>
</head>

<body>
  <div id="main">
    <header>
      <div id="logo">
        <div id="logo_text">
          <!-- class="logo_colour", allows you to change the colour of the text -->
          <h1><a href="index.html">ADMIN<span class="logo_colour">PAGE</span></a></h1>
          <h2>APSRTC E-PASS</h2>
        </div>
      </div>
      <nav>
        <ul class="sf-menu" id="nav">
          <li class="selected"><a href="index.html">Home</a></li>
		            <li><a href="#">Registerations</a>
            <ul>
              <li><a href="viewreg.jsp">Approved Registrations</a></li>
              <li><a href="newreg.jsp">New Registrations</a></li>
              <li><a href="appreg.html">Approve Registrations</a></li>
              <li><a href="stdt.jsp">Student Details</a></li>
			  <li><a href="comp.jsp">Complaints</a></li>
            </ul>
          </li>
		            <li><a href="#">Renewal</a>
            <ul>
              <li><a href="viewren.jsp">Renewals List</a></li>
              <li><a href="viewiss.jsp">Issue Buspass</a></li>
              <li><a href="viewissued.jsp">Issued Buspasses</a></li>

            </ul>
          </li>

		            <li><a href="#">Routes</a>
            <ul>
              <li><a href="addr.html">Add Route</a></li>
              <li><a href="rmr.jsp">Remove Route</a></li>
              <li><a href="rtinfo.jsp">Route Info</a></li>
            </ul>
          </li>
          <li><a href="#">Notifications</a>
            <ul>
              <li><a href="addn.jsp">Add Notification</a></li>
              <li><a href="rmn.jsp">Remove Notification</a></li>
              <li><a href="prn1.jsp">Previous notifications</a></li>

			   
            </ul>
			
          </li>
		   <li><a href="#">Events</a>
            <ul>
		        <li><a href="addne.jsp">Add news&events</a></li>
			   <li><a href="rmne.jsp">Remove news&events</a></li>
			    <li><a href="prne.jsp">Previous news&events</a></li></ul>
				</li>
		            <li><a href="#">Settings</a>
            <ul>
              <li><a href="changeadm.jsp">Change Username/Password</a></li>
              <li><a href="addacc.jsp">Add Account</a></li>
            </ul>
			<li><a href="logout.jsp">Logout</a></li>
          </li>
        </ul>
		
      </nav>
    </header>
    <div id="site_content">
<%@page import="java.sql.*"%>
<%
try
{

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from reg where status='no' and rl='std'");%>
<br><br><center><h2>Registrations Details</h2>
<br><br><table align="center" bordercolor="grey">
<tr>
<th>  APPLIC.NO&nbsp;&nbsp;&nbsp;&nbsp;</th>
<th>  REGISTERED ON&nbsp;&nbsp;&nbsp;&nbsp;</th>
<th>  NAME&nbsp;&nbsp;&nbsp;&nbsp;</th>
<th>  SURNAME&nbsp;&nbsp;&nbsp;&nbsp;</th>
<th>E-MAIL&nbsp;&nbsp;&nbsp;&nbsp;</th>
<th>DOB&nbsp;&nbsp;&nbsp;&nbsp;</th>
<th>INSTITUTION&nbsp;&nbsp;&nbsp;&nbsp;</th>
<th>COURSE NAME&nbsp;&nbsp;&nbsp;&nbsp;</th> 
<th>ADM.NO.&nbsp;&nbsp;&nbsp;&nbsp;</th> 
<th>PLACE&nbsp;&nbsp;&nbsp;&nbsp;</th> 
<th>DISTRICT&nbsp;&nbsp;&nbsp;&nbsp;</th> 
<th>PHONE NO.&nbsp;&nbsp;&nbsp;&nbsp;</th> 
</tr>
<%

while(rs.next())
{
%>


      <tr>
	    <td><%=rs.getString("appno")%></td>
		<td><%=rs.getString("date")%></td>
        <td><%=rs.getString("name")%></td>
        <td><%=rs.getString("surname")%></td>
        <td><%=rs.getString("email")%></td>
        <td><%=rs.getString("dob")%></td>
        <td><%=rs.getString("institutename")%></td>
        <td><%=rs.getString("coursename")%></td>
        <td><%=rs.getString("admissionno")%></td>
		<td><%=rs.getString("place")%></td>
        <td><%=rs.getString("district")%></td>
        <td><%=rs.getString("phoneno")%></td>		
      </tr>
	 <%
}

%></table></center><br><br><br><br><center><a href="adminlogin.jsp">BACK</a></center><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><%
rs.close();
st.close();
con.close();
}
catch(Exception e)
{

%><center><b><%out.print(""+e);%></b></center><br><br><center><b><%
out.println("<h2 align=\"center\">" +"\nTry Again"+"</h2>");
%>
<center><img src="f.jpg"></center>
<br><br><center><a href="newreg.jsp"><b>NEW REGESTRATIONS LIST</a></center>

<%
}%>
     </div>
    </div>
    <footer>
      <p>Copyright &copy; APSRTC E-BUSPASS | <a href="www.apsrtc.gov.in">design Team 5</a></p>
    </footer>
  </div>
  <p>&nbsp;</p>
  <!-- javascript at the bottom for fast page loading -->
  <script type="text/javascript" src="js/jquery.js"></script>
  <script type="text/javascript" src="js/jquery.easing-sooper.js"></script>
  <script type="text/javascript" src="js/jquery.sooperfish.js"></script>
  <script type="text/javascript" src="js/jquery.kwicks-1.5.1.js"></script>
  <script type="text/javascript">
    $(document).ready(function() {
      $('#images').kwicks({
        max : 600,
        spacing : 2
      });
      $('ul.sf-menu').sooperfish();
    });
  </script>
</body>
</html>