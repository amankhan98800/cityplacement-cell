
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <title>Admin View Students</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins">
<style>
body,h1,h2,h3,h4,h5 {font-family: "Poppins", sans-serif}
body {font-size:16px;}
.w3-half img{margin-bottom:-6px;margin-top:16px;opacity:0.8;cursor:pointer}
.w3-half img:hover{opacity:1}
.style2 {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 18px;
	font-weight: bold;
}
</style>
</head>
	<body>
            
            <nav class="w3-sidebar w3-red w3-collapse w3-top w3-large w3-padding" style="z-index:3;width:300px;font-weight:bold;" id="mySidebar"><br>
  <a href="javascript:void(0)" onClick="w3_close()" class="w3-button w3-hide-large w3-display-topleft" style="width:100%;font-size:22px">Close Menu</a>
   <div class="w3-container">
    <h3 class="w3-padding-64"><b>SURANA<br>PLACEMENT<br>CELL</b></h3>
  </div>
 
  <div class="w3-bar-block">
    <a href="adminhome.jsp" onClick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Home</a> 
    <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.navbar {
  overflow: hidden;
  background-color:crimsonred; 
  font-family: Arial, Helvetica, sans-serif;
}

.navbar a {
  float: left;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.dropdown {
  float: left;
  overflow: hidden;
}

.dropdown .dropbtn {
  cursor: pointer;
  font-size: 20px;  
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn, .dropbtn:focus {
  background-color: red;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: red;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: #ddd;
}

.show {
  display: block;
}
</style>
</head>
	<body>
     

<div class="navbar">
  
  <div class="dropdown">
   <div class="navbar">
  
  <div class="dropdown">
  <button class="dropbtn" onClick="myFunction2()">Co-Ordinator
    <i class="fa fa-caret-down"></i>
  </button>
  <div class="dropdown-content" id="my">
    <p><a href="addco1.jsp">Add Co-ordinator</a>
        <a href="viewco.jsp">View Co-ordinators</a>   
  </div>
      
  </div> 
               
                       <script>
/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function myFunction2() {
  document.getElementById("my").classList.toggle("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(e) {
  if (!e.target.matches('.dropbtn')) {
  var myDropdown = document.getElementById("my");
    if (myDropdown.classList.contains('show')) {
      myDropdown.classList.remove('show');
    }
  }
}
</script>
</div> 
       
  </div> 
               

</div> 
            <a href="adminviewjobs.jsp" onClick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Jobs</a> 
  
             <a href="home.jsp" onClick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Logout</a> 
  

<script>
/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function myFunction() {
  document.getElementById("myDropdown2").classList.toggle("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(e) {
  if (!e.target.matches('.dropbtn')) {
  var myDropdown = document.getElementById("myDropdown2");
    if (myDropdown.classList.contains('show')) {
      myDropdown.classList.remove('show');
    }
  }
}
</script>
   
  </div>
</nav>
<p>
  <body style="margin:0px" bgcolor="#FFFFFF">
  </td>
  </tr>
  </table>
</p>
<div>
    <font color="white" size="4">
        
	<table align="right" width="84%" border="1" bordercolor="white" bgcolor="#FD3D37">
      <tr>
          <td width="204"  ><div align="center" class="style9"><b>Name</b></div></td>
          <td width="227"  ><div align="center" class="style9"><b>Mobile</b></div></td>
          <td width="336"  ><div align="center" class="style9"><b>Email</b></div></td>
        <td width="265"  ><div align="center" class="style9"><b>Course</b></div></td>
         <td width="265"  ><div align="center" class="style9"><b>Password</b></div></td>

        <td width="265"  ><div align="center" class="style9"><b>Resume</b></div></td>
        <td width="200"> <div align="center" class="style9"><b>Approve</b></div></td>
         <td width="200"> <div align="center" class="style9"><b>Delete</b></div></td>
      </tr>
        
              
    

      <div/>    
	  <%@page import="dbconnection.Dbconnection"%>
      <% 
  //  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    //    Connection con = DriverManager.getConnection("jdbc:odbc:EXAM","EXAM","EXAM");
	 try
              {
	
	   Connection con=Dbconnection.getConnection(); 
      Statement stmt=con.createStatement();
      ResultSet rs1;
     
      Statement st=con.createStatement();
      ResultSet rs=st.executeQuery("select sname,smob,semail,course,susn,status,spass from student");
            String  c_name="",c_mob="",semail="",course="",c_pass="",status="",spass="";
        while(rs.next())
            {
			c_name=rs.getString("sname");
                        c_mob=rs.getString("smob");
                        semail=rs.getString("semail");
                        course=rs.getString("course");
                        c_pass=rs.getString("susn");
                        status=rs.getString("status");
                        spass=rs.getString("spass");
                                
                       

      %>
      <tr>
        <td height="39" align="left"><span class="style6"> <%=c_name%> </span></td>
        <td align="left"><span class="style6"> <%=c_mob%> </span></td>
        <td align="left"><span class="style6"> <%=semail%> </span></td>
        <td align="left"><span class="style6"> <%=course%> </span></td>
        <td align="left"><span class="style6"> <%=spass%> </span></td>

         <td align ="left"><span class="style6"><a href="resume1.jsp?semail=<%=semail%>" target="_blank">Resume </a></span></td>

        <td align ="left"><span class="style6"><a href="approve.jsp?semail=<%=semail%>"> <%=status%> </a></span></td>
        <td align ="left"><span class="style6"><a href="deletestudent.jsp?semail=<%=semail%>">Delete</a></span></td>


      </tr>
      
       <%
      }
      }
      catch(Exception e)
              {
          out.println(e);
              }
            %>
    </table>
	</body>
</html>
