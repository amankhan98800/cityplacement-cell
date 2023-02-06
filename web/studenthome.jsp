<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>

<!DOCTYPE HTML>
<!--
	Aesthetic by freehtml5.co
	Twitter: http://twitter.com/fh5co
	URL: http://freehtml5.co
-->
<html>
	<head>
	<title>Student Home</title>
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
    <h3 class="w3-padding-64"><b>SURANA PLACEMENT<br>CELL</b></h3>
  </div>
 
  <div class="w3-bar-block">
   
    <%@page import="dbconnection.Dbconnection"%>
      <% 
  //  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    //    Connection con = DriverManager.getConnection("jdbc:odbc:EXAM","EXAM","EXAM");
	 try
              {
	
	   Connection con=Dbconnection.getConnection(); 
      Statement stmt=con.createStatement();
      ResultSet rs1;
     
      String semail=request.getParameter("semail");
      
      Statement st=con.createStatement();
      ResultSet rsl=st.executeQuery("select * from student where semail ='" + semail + "'");
            String  course="",s_name="",s_mob="";
        while(rsl.next())
            {
			semail=rsl.getString("semail");
                        course=rsl.getString("course");
                        s_name=rsl.getString("sname");
                        s_mob=rsl.getString("smob");
                       
                       

      %>
      <tr>
          
         
           <a href="studenthome.jsp?semail=<%=semail%>" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Home</a>
          
                 <a href="studentchangepassword.jsp?semail=<%=semail%>" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Change Password</a>
          
 
<a href="viewjobs.jsp?semail=<%=semail%>" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Jobs</a>

<a href="studentcontactus.jsp?semail=<%=semail%>" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Contact Us</a> 


 
             <a href="home.jsp" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Logout</a> 
 

       
      </tr>
      
       <%
      }
      }
      catch(Exception e)
              {
          out.println(e);
              }
            %>
      
            
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
                
                
  
 <!-- <div class="dropdown">
  <button class="dropbtn" onclick="myFunction()">Resume
    <i class="fa fa-caret-down"></i>
  </button>
  <div class="dropdown-content" id="myDropdown">
    <a href="studentlogin.jsp">Add</a>
    <a href="companylogin.jsp">Edit</a>
  </div>
      
  </div> 
</div> -->
 </NAV>      
	<!-- Top menu on small screens -->
<header class="w3-container w3-top w3-hide-large w3-red w3-xlarge w3-padding">
  <a href="javascript:void(0)" class="w3-button w3-red w3-margin-right" onclick="w3_open()">☰</a>
 
</header>

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:340px;margin-right:40px">

  <!-- Header -->
  <div class="w3-container" style="margin-top:80px" id="showcase">
 
    <h1 class="w3-xxxlarge w3-text-red"><b>STUDENT PAGE.</b></h1>
    <hr style="width:320px;border:5px solid red" class="w3-round">
  </div>
  
  <!-- Photo grid (modal) -->
    <!-- Photo grid (modal) -->
  <div class="w3-row-padding">
    <div class="w3-half">
      <img src="https://www.jamesgmartin.center/wp-content/uploads/2019/04/Fotolia_199951929_Subscription_Monthly_M-1024x682.jpg" style="width:100%" onclick="onClick(this)">
          </div>

    <div class="w3-half">
        <img src="https://www.suranacollege.edu.in/wp-content/uploads/2019/01/BCA-students-at-ESOTERIC-Inauguration-2018-19.jpg" style="width:120%" height="490" onclick="onClick(this)">
 
    </div>
  </div>
  
<div class="w3-container" id="services" style="margin-top:90px">
    <h1 class="w3-xxxlarge w3-text-red"><b>STUDENT'S TESTIMONIALS</b></h1>
    <hr style="width:550px;border:5px solid red" class="w3-round">
    <p> <h4>
"My mentors helped us enhance my academic and interpersonal skills. I am thankful to Training & Placement cell for providing a platform to enhance my skills and an opportunity to showcase them. In the last I am saying that The World is here ."
<p>Richard andero(bcom_2015 batch)
</P></h4>
    <p> <h4>
"A memory to cherish for lifetime. My experience was full of learning and grooming. Being a global university It gave me an opportunity to meet different kind of people from around the world and learnt many things from them. I am thankful to all the faculties, mentors and entire SET department for providing us with quality education. I am also grateful to TNP Cell for organising placements in this pandemic and helping me to get placed in 3 companies on Campus including Tcs Digital.   Overall it was a great experience and lifetime memory . If you want to make a career in CSE I would highly recommend you to join.”"<p>Tara singh(bcA_2019 batch)
</P></h4>
  </div>
		
	  <div align="center"></div>
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

