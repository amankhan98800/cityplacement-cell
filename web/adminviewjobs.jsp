
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
       <title>login</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins">
<style>
body,h1,h2,h3,h4,h5 {font-family: "Poppins", sans-serif}
body {font-size:16px;}
.w3-half img{margin-bottom:-6px;margin-top:16px;opacity:0.8;cursor:pointer}
.w3-half img:hover{opacity:1}
.style1 {font-size: 18px}
</style>
</head>
	<title>Admin View Jobs</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins">
<style>
body,h1,h2,h3,h4,h5 {font-family: "Poppins", sans-serif}
body {font-size:16px;}
.w3-half img{margin-bottom:-6px;margin-top:16px;opacity:0.8;cursor:pointer}
.w3-half img:hover{opacity:1}
</style>
</head>
<body>

<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-red w3-collapse w3-top w3-large w3-padding" style="z-index:3;width:300px;font-weight:bold;" id="mySidebar"><br>
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-button w3-hide-large w3-display-topleft" style="width:100%;font-size:22px">Close Menu</a>
   <div class="w3-container">
    <h3 class="w3-padding-64"><b>PLACEMENT<br>CELL</b></h3>
  </div>
 
  <div class="w3-bar-block">
    <a href="studenthome.jsp" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Home</a> 
    
    
    <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<p>
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
</p>
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
<div class="navbar">
  
  <div class="dropdown">
  <button class="dropbtn" onClick="myFunction()">Student
    <i class="fa fa-caret-down"></i>
  </button>
  <div class="dropdown-content" id="my2">
            <a href="viewstudents.jsp">View Students</a>  
  </div>
      
  </div> 
    </div> 
            
            <div class="navbar">
  
  <div class="dropdown">
  <button class="dropbtn" onClick="myFunction3()">Placements
    <i class="fa fa-caret-down"></i>
  </button>
  <div class="dropdown-content" id="my3">
    <p><a href="placements.jsp">Add Placements</a>
        <a href="viewplacements.jsp">View Placements</a>  
  </div>
      
  </div> 
    </div> 


      
  </div> 
</div> 
             <a href="home.jsp" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Logout</a> 
<script>
/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function myFunction() {
  document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(e) {
  if (!e.target.matches('.dropbtn')) {
  var myDropdown = document.getElementById("myDropdown");
    if (myDropdown.classList.contains('show')) {
      myDropdown.classList.remove('show');
    }
  }
}
</script>
            <script>
/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function myFunction() {
  document.getElementById("my2").classList.toggle("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(e) {
  if (!e.target.matches('.dropbtn')) {
  var myDropdown = document.getElementById("my2");
    if (myDropdown.classList.contains('show')) {
      myDropdown.classList.remove('show');
    }
  }
}
</script>
 
      <script>
/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function myFunction3() {
  document.getElementById("my3").classList.toggle("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(e) {
  if (!e.target.matches('.dropbtn')) {
  var myDropdown = document.getElementById("my3");
    if (myDropdown.classList.contains('show')) {
      myDropdown.classList.remove('show');
    }
  }
}
</script>
</nav>

<p>
  <body style="margin:0px" bgcolor="#FFFFFF">
  </td>
  </tr>
  </table>
</p>
<div>
<div>
    <font color="white" size="4">
        
	<table align="right" width="84%" border="1" bordercolor="white" bgcolor="#FD3D37">
      <tr>
           <tr>
                            <td width="186" bordercolor="#516415" ><div align="center" class="style9">Company Name</div></td>

             <td width="147" height="43" bordercolor="#000000" ><div align="center" class="w3-half style1">Role </div></td>
             <td width="227" bordercolor="#516415" ><div align="center" class="style9">Description</div></td>
             <td width="181" bordercolor="#516415" ><div align="center" class="style9">Eligibility</div></td>
             <td width="190" bordercolor="#516415" ><div align="center" class="style9">Course</div></td>
             <td width="186" bordercolor="#516415" ><div align="center" class="style9">Skills</div></td>
                          <td width="186" bordercolor="#516415" ><div align="center" class="style9">Salary</div></td>
                                       <td width="186" bordercolor="#516415" ><div align="center" class="style9">Form Link</div></td>


          
           </tr>
           <div/>
           <%@page import="dbconnection.Dbconnection"%>
           <% 
               
                Connection con=Dbconnection.getConnection(); 
      Statement stmt=con.createStatement();
      ResultSet rs1;
  //  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    //    Connection con = DriverManager.getConnection("jdbc:odbc:EXAM","EXAM","EXAM");
	 try
              {
	   
            Statement st = con.createStatement();
     
           ResultSet rs=st.executeQuery("select * from job");
           
            String  jrole="",jdes="",jelig="",jskills="",jsal="",jform="",jcom="",jcourse="";
        while(rs.next())
            {
                
                        jcom=rs.getString("comname");
			jrole=rs.getString("Role");
                        jdes=rs.getString("Description");
                        jelig=rs.getString("eligibility");
                        jskills=rs.getString("skills");
                        jsal=rs.getString("salary");
                        jcourse=rs.getString("course");
                        jform=rs.getString("link");
                       

      %>
      
          <tr>
                <td height="28" bordercolor="#516415"  ><span class="style6"> <%=jcom%> </span></td>
             <td height="28" bordercolor="#516415"  ><span class="style6"> <%=jrole%> </span></td>
             <td bordercolor="#516415" ><span class="style6"> <%=jdes%> </span></td>
             <td bordercolor="#516415"  ><span class="style6"> <%=jelig%> </span></td>
             <td bordercolor="#516415" ><span class="style6"> <%=jcourse%> </span></td>
             <td bordercolor="#516415" ><span class="style6"> <%=jskills%> </span></td>
              <td height="28" bordercolor="#516415"  ><span class="style6"> <%=jsal%> </span></td>
              <td height="28" bordercolor="#516415"  ><span class="style6"> <a href=<%=jform%>><%=jform%></a>  </span></td>
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
