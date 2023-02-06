<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>

<!DOCTYPE HTML>

<html>
	<head>
	
<title>Admin Make Placements</title>
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
    <a href="home.jsp" onClick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Home</a> 
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
    <p><a href="approvestudents.jsp">Approve Students</a>
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
    <h1 class="w3-xxxlarge w3-text-red" align="center"><b>Placments</b></h1>
    <br/>
    <form action="" method="post"  name="form1" >
  <table align="center" width="79%" border="0" cellpadding="10" cellspacing="10">
      
         
            <tr>
              <td width="31%" height="54"><div align="right" class="style2">Student Name</div></td>
              <td width="1%">&nbsp;</td>
              <td width="40%"><div align="left">
                <input type="text" name="t1" id="t1" pattern="[A-Za-z]+" title="letters only" required />
              </div></td>
            </tr>
            <tr>
              <td height="39"><div align="right" class="style2">Company Name</div></td>
              <td>&nbsp;</td>
              <td><div align="left">
                              <input name="t2" type="text" id="t2" required/>
              </div></td>
            </tr>
            <tr>
              <td height="59"><div align="right" class="style2">Course</div></td>
              
              <td><div align="left">
              <td ><select name="t3" id="t3">
                        <option  value="">------Select--------- </option>
                                        <option value ="BCA">BCA</option>
                                        <option value ="BCom">BCom</option>
                                        <option value ="BA">BA</option>
                                        <option value ="BBA">BBA</option>
                                        <option value ="Bsc">BSc</option>
                                        <option value ="MCA">MCA</option>
                                         <option value ="MBA">MBA</option>
                                        <option value ="MCom">MCom</option>




                                       
                                </select>              </td>
            </tr>
            <tr>
              <td height="39"><div align="right" class="style2">Year</div></td>
              <td>&nbsp;</td>
              <td><input type="text" name="t4" id="t4" required></td>
            </tr>
            
            
            <tr>
              <td height="51"><div align="right" class="style2">Role</div></td>
              <td>&nbsp;</td>
              <td><div align="left">
                <input name="t5" type="text" id="t5" required>
              </div></td>
            </tr>
            
            <tr>
              <td colspan="3">
                <div align="center">
                  <input type="submit" name="button" id="button" value="Submit" />
                </div></td>
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
//      ResultSet rs;
					 String t1=request.getParameter("t1").trim();
					 String t2=request.getParameter("t2").trim();
					 String t3=request.getParameter("t3").trim();
					 String t4=request.getParameter("t4").trim();
					 String t5=request.getParameter("t5").trim();
					/* String t6=request.getParameter("t6").trim();
					 String t7=request.getParameter("t7").trim();*/
					
       	  
		
						
						
						PreparedStatement pstmt=con.prepareStatement("insert into placement(sname,coname,course,year,role) values(?,?,?,?,?)");   
						pstmt.setString(1,t1);
						pstmt.setString(2,t2);
						pstmt.setString(3,t3);
						pstmt.setString(4,t4);
						pstmt.setString(5,t5);
						/*pstmt.setString(6,t6);
						pstmt.setString(7,t7);
						*/
						
						
						
						
						 pstmt.executeUpdate(); 
								
						
						pstmt.close();  
						con.close(); 
					out.println( "<script>alert('Sucessfully added');window.location='viewplacements.jsp';</script>");
						//   response.sendRedirect("donerregsaveack.jsp");
						}
						

					
    
				catch(Exception e)
				{
                                        out.println( "<script>alert('Sorry...Try Again');window.location='adminhome.jsp';</script>");
						//		   response.sendRedirect("donerregsaveinvalid.jsp");

				}
	}
	
%>
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

