<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>

<!DOCTYPE HTML>
<!--
	Aesthetic by freehtml5.co
	Twitter: http://twitter.com/fh5co
	URL: http://freehtml5.co
-->
<html>
	<head>
	
<title>Add Co-ordinator</title>
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
	font-size: 24px;
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
  <button class="dropbtn" onClick="myFunction()">Student
    <i class="fa fa-caret-down"></i>
  </button>
  <div class="dropdown-content" id="myDropdown2">
   
        <a href="viewstudents.jsp">View Students</a>  
  </div>
      
  </div> 
               

</div> 
            
            <a href="viewjobs.jsp" onClick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Jobs</a> 
  
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
<div class="w3-container" id="contact" style="margin-top:75px">
    <h1 class="w3-xxxlarge w3-text-red" align="center"><b>Add Co-Ordinator</b></h1>
    <br/>
    <form action="" method="post"  name="form1" >
  <table align="center" width="79%" border="0" cellpadding="10" cellspacing="10">
      
       <tr>
         <td width="27%" height="39"><div align="right" class="style2">Search by Number:</div></td>
              <td width="2%"></td>
              <td width="23%"><div align="left">
                              <input name="search" type="text" id="search" maxlength="10" pattern="^\d{10}$" title="only nos should be 10 digits" required/>
         </div></td>
              
              <td width="42%" colspan="3">
                <div align="center">
                  <input type="submit"class="w3-btn w3-red" name="button" id="button" value="Submit" />
         </div></td>
    </tr>
         
          
            
            
              
          </table>
      </form>
		
		
	    <div align="center">
	      <%@page import="dbconnection.Dbconnection"%>
	        <%
                            if(request.getParameter("button")!=null)
                                    {
			try
				{
				 Connection con=Dbconnection.getConnection(); 
			      Statement stmt=con.createStatement();
                              Statement stmt1=con.createStatement();
                              
                              String search=request.getParameter("search");
                               ResultSet rs1;
     
                                Statement st=con.createStatement();
                                ResultSet rs=st.executeQuery("select * from student where smob='"+search+"' ");
                                  String  c_name="",c_mob="",semail="",course="",c_pass="";
                                    
                                 
				 		
        while(rs.next())
            {
			c_name=rs.getString("sname");
                        c_mob=rs.getString("smob");
                        semail=rs.getString("semail");
                        course=rs.getString("course");
                        c_pass=rs.getString("smob");
                                 
                       
      %>
<table align="right" width="84%" border="1" bordercolor="white" bgcolor="#FD3D37">
      <tr>
          <td width="204"  ><div align="center" class="style9"><b>Name</b></div></td>
          <td width="227"  ><div align="center" class="style9"><b>Mobile</b></div></td>
          <td width="336"  ><div align="center" class="style9"><b>Email</b></div></td>
        <td width="265"  ><div align="center" class="style9"><b>Course</b></div></td>
        <td width="200"> <div align="center" class="style9"><b>Password</b></div></td>
      </tr>
      
       <tr>
        <td height="39" align="center"><span class="style6"> <%=c_name%> </span></td>
        <td align="center"><span class="style6"> <%=c_mob%> </span></td>
        <td align="center"><span class="style6"> <%=semail%> </span></td>
        <td align="center"><span class="style6"> <%=course%> </span></td>
        <td align="center"><span class="style6"> <%=c_pass%> </span></td>
       
      </tr>
       <tr>
           <br/>
              <td bgcolor="white" colspan="5" bordercolor="white">
                <div align="center">
                    <a href="addco2.jsp?c_mob=<%=c_mob%>">
                  <input type="button" name="add" id="add" value="Add" />
                </div></td>
       </tr>

      <%
          }}

    
				catch(Exception e)
				{
				out.println("Exception occured" +e);
				}
}
	
%>
</table>
        </div>
	</div>

	
	
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Carousel -->
	<script src="js/owl.carousel.min.js"></script>

	<!-- Main -->
	<script src="js/main.js"></script>

	</body>
</html>

