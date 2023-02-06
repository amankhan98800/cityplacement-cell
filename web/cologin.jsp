<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>

<!DOCTYPE HTML>
<html lang="en">
<head>
<title>Co-Ordinator Login</title>
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
            
            <nav class="w3-sidebar w3-red w3-collapse w3-top w3-large w3-padding" style="z-index:3;width:300px;font-weight:bold;" id="mySidebar"><br>
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-button w3-hide-large w3-display-topleft" style="width:100%;font-size:22px">Close Menu</a>
   <div class="w3-container">
    <h3 class="w3-padding-64"><b>PLACEMENT<br>CELL</b></h3>
  </div>
 
  <div class="w3-bar-block">
    <a href="home.jsp" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Home</a> 
    <a href="home.jsp#showcase" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">About</a> 
    <a href="home.jsp#designers" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Recruiters</a> 
    <div class="navbar">
  
  <div class="dropdown">
  <button class="dropbtn" onclick="myFunction()">Student
    <i class="fa fa-caret-down"></i>
  </button>
  <div class="dropdown-content" id="myDropdown">
    <a href="studentlogin.jsp">Login</a>
    <a href="studentsignup.jsp">Create account</a>
  </div>
  </div> 
</div> 
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

    <a href="home.jsp#designers" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Contact us</a> 
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
    
   
  </div>
  <a href="studentlogin.jsp"></a>
</nav>


  <!-- Contact -->
  <div class="w3-container" id="contact" style="margin-top:75px">
    <h1 class="w3-xxxlarge w3-text-red" align="center"><b>CO-ORDINATOR LOGIN</b></h1>
    <hr style="width:100px;border:5px solid red" class="w3-round">
	<body>
		
	<div class="gtco-loader"></div>
	
	<div id="page">



		 <form action="" method="post">
                        
                              <table align="CENTER" width="50%" border="0" cellpadding="15" cellspacing="15">

  <tr>
    <td width="21%"><div align="right"><strong>Username</strong></div></td>
    <td width="1%">&nbsp;</td>
    <td width="49%"><div align="left">
      <input type="text" name="textfield" id="textfield">
    </div></td>
    </tr>
  <tr>
    <td><div align="right"><strong>Password</strong></div></td>
    <td>&nbsp;</td>
    <td><div align="left">
      <input type="password" name="textfield2" id="textfield2">
    </div></td>
    </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>
      <div align="left">
        <input name="Submit" class="w3-btn w3-red"  type="submit" value="Submit" />      
        <input name="Submit2" class="w3-btn w3-red" type="reset" value="Reset" />    
        <a href="cochangepassword.jsp" class="style1">Forgot Password?</a></div></td>
  </tr>
</table>
           <span class="col-md-8 col-md-offset-2 gtco-heading text-center">
	                   
</p>
                        </span>
	  </form>	
      
      <%@page import="dbconnection.Dbconnection"%>
      <%
		 if(request.getParameter("Submit")!= null)
	{
try
{

   
     Connection con=Dbconnection.getConnection(); 
      Statement stmt=con.createStatement();
      ResultSet rs,rs1;
     
     // String type=request.getParameter("select").trim();
   
       
      //String pid=request.getParameter("textfield2").trim();
   String u=request.getParameter("textfield").trim();
	
	  String p=request.getParameter("textfield2").trim();
	  out.println(u);
      
	  
	
	  rs=stmt.executeQuery("select * from co where coemail="+"'"+u+"'"+" and copass="+"'"+p+"'");
	 /// rs=stmt.executeQuery("select * from adminlogin");
  String f="",a="",m="",e="",id="",coemail="";
      int found=0;
      while(rs.next())
      {
	   coemail=rs.getString("coemail");
			found++;
		}
	 if(found==1)
		 {
				 
			 
				 ///Cookie cook1 = new Cookie("Admin",u);
		 ///cook1.setMaxAge(1200);
		/// response.addCookie(cook1);
//		session.setAttribute("username",id);
//		//out.println(e);
//		session.setAttribute("fname",f);
//		//session.setAttribute("id",id);
//		session.setAttribute("mobile",m);
//		//session.setAttribute("pwd",p);
		
	
		
		            response.sendRedirect("cohome.jsp?coemail="+coemail+""); 
		}
		  else
		 {
	out.println( "<script>alert('Login Unsuccess');window.location='cologin.jsp';</script>");




			}
                  rs.close();
		
			stmt.close();
			con.close();
                 
	
}

 catch(Exception e)
    {
     
     out.println("Exception occured" +e);
    }
	}
%>
		
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
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

