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
  <script>
function validate()
{

var first = document.myForm.ano.value;

count=0;
if(first==null || first=="") 
         {
           document.getElementById("first_error").innerHTML="Enter the Route number ";
       count++;
        }
		if(count!=0)
               return false;
           else
        return true;
		}
		</script>
<style>
.error
{
color:white;
font-size:14pt;
}
 .txt1
{
 font-size:14pt;

font-family:"verdana";
color:#545;
}


</style>
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
	  <%@page language="java" import="java.sql.*"%>
<%
try
{

String em=(String)session.getAttribute("user2");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
Statement st=con.createStatement();String user2=session.getAttribute("user2").toString();
st.executeUpdate("UPDATE reg SET email='"+user2+"' where email='"+user2+"'");
%><center><b>Select to delete from list</b></center>
<form   action="rmr1.jsp" method="post" name="myForm" >
<%
ResultSet rs=st.executeQuery("select * from rtinfo where  st='yes'");%>

<center><table align="center"  bordercolor="pink" border="2" cellspacing="10" cellpadding="10">
<tr>
<th>  SELECT:</th>
<th>ROUTE ADDED ON :</th>
<th> FROM:</th>
<th> TO:</th>
<th>  6 MONTHS AMOUNT</th>
<th>3 MONTHS AMOUNT</th>
<th>1 MONTH AMOUNT</th>
</tr>
<%
while(rs.next())
{
%>
<tr>
<td><input type="checkbox" name="cb" value="<%=rs.getInt("rtno")%>"/></td>
<td><%=rs.getString("dt")%></td>

<td><%=rs.getString("src")%></td>
<td><%=rs.getString("dest")%></td>
<td><%=rs.getString("6amt")%></td>
<td><%=rs.getString("3amt")%></td>
<td><%=rs.getString("1amt")%></td>
</tr>
<%
}

%></table></center><br><br><center><input type="submit" value="Remove"></center></form><br><br><br><br><center>
<%
rs.close();
st.close();
con.close();
}
catch(Exception e)
{
%><center><b><%out.print(""+e);%></b></center><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><center><b>

<%
}%>
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

