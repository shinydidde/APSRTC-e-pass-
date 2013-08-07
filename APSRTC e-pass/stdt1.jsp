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
           document.getElementById("first_error").innerHTML="Enter the application number ";
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
color:red;
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
	<%@page import="java.sql.*"%>
<%
try
{
String apno=request.getParameter("ano");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from reg where appno='"+apno+"'");%>
<center><h2>Student Details</h2></center>
<table align="center" border="1" cellspacing="0" cellpadding="0">
<tr>
<th>  APPLIC.NO</th>
<th>  REGISTERED ON:</th>
<th>  NAME</th>
<th>  SURNAME</th>
<th>E-MAIL</th>
<th>DOB</th>
<th>INSTITUTION</th>
<th>COURSE NAME</th> 
<th>ADM.NO.</th> 
<th>PLACE</th> 
<th>DISTRICT</th> 
<th>PHONE NO.</th> 
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

%></table><br><br><%
rs.close();
st.close();
con.close();
}
catch(Exception e)
{
%><center><b><%out.print(""+e);%></b></center><br><br><center><b>
%><h2><center><%out.println("Sorry Try Again");%></center></h2>
<center><a href="stdt.jsp">student details</a></ceneter><%


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
