<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>

<!DOCTYPE HTML>
<!--
	Aesthetic by freehtml5.co
	Twitter: http://twitter.com/fh5co
	URL: http://freehtml5.co
-->
<html>
	<head>
	
<title>Co-ordinator Add Job</title>
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
  <a href="javascript:void(0)" onClick="w3_close()" class="w3-button w3-hide-large w3-display-topleft" style="width:100%;font-size:22px">Close Menu</a>
   <div class="w3-container">
    <h3 class="w3-padding-64"><b>PLACEMENT<br>CELL</b></h3>
  </div>
  
  <%@page import="dbconnection.Dbconnection"%>
      <% 
  //  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    //    Connection con = DriverManager.getConnection("jdbc:odbc:EXAM","EXAM","EXAM");
	 try
              {
	
	   Connection con=Dbconnection.getConnection(); 
      Statement stmt=con.createStatement();
      ResultSet rs1;
     
      String coemail=request.getParameter("coemail");
      
      Statement st=con.createStatement();
      ResultSet rsl=st.executeQuery("select * from co where coemail ='" + coemail + "'");
            String  course="",s_name="",s_mob="",cojob="";
        while(rsl.next())
            {
			coemail=rsl.getString("coemail");
                        cojob=rsl.getString("course");
                       // course=rsl.getString("course");
                       // s_name=rsl.getString("sname");
                       // s_mob=rsl.getString("smob");
                       
                       

      %>
 
  <div class="w3-bar-block">
    <a href="cohome.jsp?coemail=<%=coemail%>" onClick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Home</a> 
    <a href="addjob.jsp?coemail=<%=coemail%>" onClick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Add Job</a> 
     <a href="cochangepassword.jsp?coemail=<%=coemail%>" onClick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Change Password</a> 

    
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
        
               


               

</div> 
             <a href="home.jsp" onClick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Logout</a> <br/>
             
               <a href="cocontactus.jsp?coemail=<%=coemail%>" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Contact Us</a> 



<script>
    
/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function myFunction2() {
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

<script>
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
            </nav>
            
            <div class="w3-container"  id="contact" style="margin-top:75px">
                <h1 class="w3-xxxlarge w3-text-red" align="center"><b><u>Add Jobs </u></b></h1>
    <hr style="width:100px;border:5px solid red" class="w3-round">

    <b>
        <form action="" method="post"  name="form1"   font-family: Arial>
          <table align="center" width="79%" border="0" cellpadding="15" cellspacing="15">
            
           
               <tr>
              <td height="39"><div align="right">COMPANY NAME</div></td>
              <td>&nbsp;</td>
              <td><input type="text" name="t1" id="t1" required></td>
            </tr>
            
            <tr>
              <td height="39"><div align="right">JOB ROLE</div></td>
              <td>&nbsp;</td>
              <td><input type="text" name="t2" id="t2" required></td>
            </tr>
            
            <tr>
              <td height="59"><div align="right">DESCRIPTION</div></td>
              <td>&nbsp;</td>
              <td><div align="left">
                <input type="text" name="t3" id="t3" required>
               
              </div></td>
              </tr>
            <tr>
              <td height="51"><div align="right">ELIGIBILITY</div></td>
              <td>&nbsp;</td>
              <td><div align="left">
                <input name="t4" type="text" id="t4" required>
              </div></td>
              </tr>
              
               <tr>
              <td height="59"><div align="right" class="style2">Course</div></td>
              
              <td><div align="left">
              <td ><input type="t5" name="t5" id="coemail" value="<%=cojob%>" readonly>             </td>
            </tr>
            
             <tr>
              <td height="39"><div align="right">SKILLS REQUIRED</div></td>
              <td>&nbsp;</td>
              <td><input type="text" name="t6" id="t6" required></td>
            </tr>
            
            <tr>
              <td height="39"><div align="right">SALARY OFFERED</div></td>
              <td>&nbsp;</td>
              <td><input type="text" name="t7" id="t7" required></td>
            </tr>
            
            <tr>
              <td height="39"><div align="right">FORM LINK</div></td>
              <td>&nbsp;</td>
              <td><input type="text" name="t8" id="t8" required></td>
            </tr>
            
            
            </B>
            
               <tr>
              <td colspan="3">
                <div align="center">
                  <input type="submit"  class="w3-btn w3-red" name="button" id="button" value="Submit" />
                   <input name="Submit2" class="w3-btn w3-red" type="reset" value="Reset" />    
                </div></td>
            </tr>
                
                    
                
              
          </table>
        </form>
        <%
      }
      }
      catch(Exception e)
              {
          out.println(e);
              }
            %>
		
		
	  
	      <%@page import="dbconnection.Dbconnection"%>
	        <%

			if(request.getParameter("button")!=null)
				{
					
				try
				{
				
                                    String c1 =request.getParameter("coemail").trim();
				 		 Connection con=Dbconnection.getConnection(); 
			      Statement stmt=con.createStatement();
//      ResultSet rs;
					 String t1=request.getParameter("t1").trim();
					 String t2=request.getParameter("t2").trim();
					 String t3=request.getParameter("t3").trim();
					 String t4=request.getParameter("t4").trim();
					 String t5=request.getParameter("t5").trim();
					 String t6=request.getParameter("t6").trim();
                                          String t7=request.getParameter("t7").trim();
                                           String t8=request.getParameter("t8").trim();
                                           
                                           
					 
					
       	  
		
						
						
						PreparedStatement pstmt=con.prepareStatement("insert into job values(?,?,?,?,?,?,?,?)");   
						pstmt.setString(1,t1);
						pstmt.setString(2,t2);
						pstmt.setString(3,t3);
						pstmt.setString(4,t4);
						pstmt.setString(5,t5);
						pstmt.setString(6,t6);
                                                pstmt.setString(7,t7);
                                                pstmt.setString(8,t8);
                                               
						
						
						
						
						
						
						 pstmt.executeUpdate(); 
								
						
						pstmt.close();  
						con.close(); 
                                                 
                                         
					out.println( "<script>alert('Added Sucessfully');window.location='cohome.jsp?coemail="+c1+"';</script>");
						//  response.sendRedirect("donerregsaveack.jsp");
						}
						

					
    
				catch(Exception e)
				{
                                        out.println( "<script>alert('Try Again');window.location='cohome.jsp';</script>");

								}
	}
	
%>
        </div>
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
<style>

</style>
	</body>
</html>

