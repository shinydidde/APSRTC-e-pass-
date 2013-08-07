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
              <li><a href="prn1.jsp">View notifications</a></li>

			   
            </ul>
			
          </li>
		   <li><a href="#">Events</a>
            <ul>
		        <li><a href="addne.jsp">Add news&events</a></li>
			   <li><a href="rmne.jsp">Remove news&events</a></li>
			    <li><a href="prne.jsp">View news&events</a></li></ul>
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
<%@page import="java.util.*"%>
<%

String sel[]=request.getParameterValues("cb");


try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
Statement st=con.createStatement();
String dt=new java.util.Date().toString();
String user2=session.getAttribute("user2").toString();
st.executeUpdate("UPDATE reg SET email='"+user2+"' where email='"+user2+"'");


for(int i=0;i<sel.length;i++)
{
 st.executeUpdate("UPDATE nsev SET status='no' where no='"+sel[i]+"'");
}

%><br><br><br><br><center><b><%out.print(" event(s) Removed Successfully");%><b></center><br><br>
<center><img src="images/correct_2.png"/><br><br></center><%

}


catch(Exception e)
{
%><center><b><%out.print(""+e);%></b></center><br>


<%
}
%>
 </div>
    </div>
<footer>
      <p>Copyright &copy; APSRTC E-BUSPASS | <a href="www.apsrtc.gov.in">Design Team 5</a></p>
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

