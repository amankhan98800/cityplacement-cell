<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>

<!DOCTYPE HTML>
<!--
	Aesthetic by freehtml5.co
	Twitter: http://twitter.com/fh5co
	URL: http://freehtml5.co
-->
<html>
	<head>
	
<title>Student Sign-up</title>
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
.style3 {font-size: 16px}
.style4 {font-family: Georgia, "Times New Roman", Times, serif}
.style5 {font-size: 16px; font-family: Georgia, "Times New Roman", Times, serif; }
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
    <h1 align="center" class="w3-text-red w3-xxxlarge"><strong>Student Signup </strong></h1>
    <br/>
    <form action="" method="post"  name="form1" onsubmit="check()" >
  <table align="center" width="79%" border="0" cellpadding="10" cellspacing="10">
      <b>
            <tr>
              <td width="31%" height="54"><div align="right" class="style2">Student Name</div></td>
              <td width="1%">&nbsp;</td>
              <td width="40%"><div align="left">
                <input type="text" name="t1" id="t1" pattern="[A-Za-z- -.]+" title="letters only" required />
              </div></td>
            </tr>
			 <tr>
              <td height="59"><div align="right" class="style2">Gender</div></td>
              
              <td><div align="left">
                      <td ><select name="t2" id="t2" required="required">
                <option  value="">------Select--------- </option>
                <option value ="Male">Male</option>
                <option value ="Female">Female</option>
              </select></td>
            </tr>
			
			            <tr>
              <td height="39"><div align="right" class="style2">Date of birth</div></td>
              <td>&nbsp;</td>
              <td><input type="date" name="t3" id="t3" required></td>
            </tr>
			
			
			            <tr>
              <td height="39"><div align="right" class="style2">Adhaar Number</div></td>
              <td>&nbsp;</td>
              <td><input type="text" name="t4" id="t4" pattern="[0-9]+" minlength="12" maxlength="12" required></td>
            </tr>
			
			            <tr>
              <td height="39"><div align="right" class="style2">Address</div></td>
              <td>&nbsp;</td>
              <td><textarea id="t5" name="t5" rows="3" cols="50" required> </textarea></td>
            </tr>
			
			            <tr>
              <td height="39"><div align="right" class="style2">Mobile Number</div></td>
              <td>&nbsp;</td>
              <td><input type="text" name="t6" id="t6" pattern="[0-9]+" minlength="10" maxlength="10" required></td>
            </tr>
			
			
			            <tr>
              <td height="39"><div align="right" class="style2">Alternative Mobile Number</div></td>
              <td>&nbsp;</td>
              <td><input type="text" name="t7" id="t7" pattern="[0-9]+" minlength="10" maxlength="10" required></td>
            </tr>
			
			
			            <tr>
              <td height="39"><div align="right" class="style2">Photo</div></td>
              <td>&nbsp;</td>
              <td><input type="file" name="t8" id="t8" required></td>
            </tr>
			
			 <tr>
              <td height="39"><div align="right" class="style2">Email-id</div></td>
              <td>&nbsp;</td>
              <td><input type="email" name="t9" id="t9" required></td>
            </tr>
			
			 <tr>
              <td height="39"><div align="right" class="style2">USN</div></td>
              <td>&nbsp;</td>
              <td><input type="text" name="t10" id="t10"  minlength="10" maxlength="10" required></td>
            </tr>
			
			<tr>
              <td height="51"><div align="right" class="style2">Password</div></td>
              <td>&nbsp;</td>
              <td><div align="left">
                <input name="t11" type="password" id="t11" minlength="8" required>
              </div></td>
            </tr>
			
			
			            <tr>
              <td height="59"><div align="right" class="style2">Course</div></td>
              
              <td><div align="left">
                      <td ><select name="t12" id="t12" required="required">
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
                                <td ><span class="style2"><div align="right"> 10th Details </div></span></td>
                                <td>&nbsp;</td>
                                <td><table width="163" border="0" cellpadding="0" cellspacing="0">
                                  <tr>
                                    <td width="123"><div align="center" class="style5"><font color="black">Board</font></div></td>
                                    <td width="40"><div align="center" class="style3"><font color="black" face="arial">%</font></div></td>
                                  </tr>
                                  <tr>
                                    <td><div align="center">
                                      <input type="text" name="t13" id="t13" size="5" required= />
                                    </div></td>
                                    <td><div align="right">
                                        <input type="text" name="t14" id="t14" size="5" pattern="[0-9]+"  required />
                                    </div></td>
                                  </tr>
                                </table></td>
			 </tr>
			
			 <tr>
                                <td ><span class="style2"><div align="right"> 12th Details </div></span></td>
                                <td>&nbsp;</td>
                                <td><table width="163" border="0" cellpadding="0" cellspacing="0">
                                  <tr>
                                    <td width="123"><div align="center" class="style3 style4"><font color="black">Board</font></div></td>
                                    <td width="40"><div align="center" class="style3"><font color="black" face="arial">%</font></div></td>
                                  </tr>
                                  <tr>
                                    <td><div align="center">
                                      <input type="text" name="t15" size="5" id="t15" required />
                                    </div></td>
                                    <td><div align="right">
                                        <input type="text" name="t16" size="5" id="t16" pattern="[0-9]+" required />
                                    </div></td>
                                  </tr>
                                </table></td>
			 </tr>
			 			 <tr>
                                <td ><span class="style2"><div align="right">Degree %</div></span></td>
                                <td>&nbsp;</td>
                                <td><table width="163" border="0" cellpadding="0" cellspacing="0">
                                  <tr>
                                    <td width="123"><div align="center" class="style5"><font color="black">1st Sem%</font></div></td>
                                    <td width="40"><div align="center" class="style5"><font color="black">2nd Sem%</font></div></td>
									<td width="123"><div align="center" class="style5"><font color="black">3rd Sem%</font></div></td>
									<td width="123"><div align="center" class="style5"><font color="black">4th Sem%</font></div></td>
                                  </tr>
                                  <tr>
                                    <td><div align="center"><input type="text" name="t17" size="5" id="t17"pattern="[0-9]+"  required /></div></td>
                                    <td><div align="right">
                                        <input type="text" name="t18" size="5" id="t18" pattern="[0-9]+"  required />
                                    </div></td>
									<td><div align="center">
                                      <input type="text" name="t19" size="5" id="t19" pattern="[0-9]+" required />
                                    </div></td>
									<td><div align="center">
                                      <input type="text" name="t20" size="5" id="t20" pattern="[0-9]+"  required />
                                    </div></td>
									                                  </tr>
                                </table></td>
			 </tr>
			 
			 			            <tr>
              <td height="39"><div align="right" class="style2">Achivements/Internships</div></td>
              <td>&nbsp;</td>
              <td><textarea required id="t21" name="t21" rows="4" cols="50" > </textarea>
      	 			           
            <tr>
              <td colspan="3">
                <div align="center">
                  <input type="submit"  class="w3-btn w3-red" name="button" id="button" value="Submit" />
                   <input name="Submit2" class="w3-btn w3-red" type="reset" value="Reset" />    
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
//      ResultSet rs;
					 String t1=request.getParameter("t1").trim();
					 String t2=request.getParameter("t2").trim();
					 String t3=request.getParameter("t3").trim();
					 String t4=request.getParameter("t4").trim();
					 String t5=request.getParameter("t5").trim();
					String t6=request.getParameter("t6").trim();
					 String t7=request.getParameter("t7").trim();
                                         String t8=request.getParameter("t8").trim();
                                         String t9=request.getParameter("t9").trim();
                                         String t10=request.getParameter("t10").trim();
                                         String t11=request.getParameter("t11").trim();
                                         String t12=request.getParameter("t12").trim();
                                         String t13=request.getParameter("t13").trim();
                                         String t14=request.getParameter("t14").trim();
                                         String t15=request.getParameter("t15").trim();
                                         String t16=request.getParameter("t16").trim();
                                         String t17=request.getParameter("t17").trim();
                                         
                                         String t18=request.getParameter("t18").trim();
                                         String t19=request.getParameter("t19").trim();
                                         String t20=request.getParameter("t20").trim();
                                         String t21=request.getParameter("t21").trim();
                                        //  String t22=request.getParameter("t22").trim();
                                         
                                         
					
       	  
		
						int count=0;
						ResultSet rs;
						rs=stmt.executeQuery("select * from student where semail="+"'"+t9+"'");

      		
						while(rs.next())
						{
						count++;
						}

				  
	  				out.println(count);
	  
						 if(count==0)
						{
						
						PreparedStatement pstmt=con.prepareStatement("insert into student values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,'Approve')");   
						pstmt.setString(1,t1);
						pstmt.setString(2,t2);
						pstmt.setString(3,t3);
						pstmt.setString(4,t4);
						pstmt.setString(5,t5);
						pstmt.setString(6,t6);
						pstmt.setString(7,t7);
						pstmt.setString(8,t8);
                                                pstmt.setString(9,t9);
                                                pstmt.setString(10,t10);
                                                pstmt.setString(11,t11);
                                                pstmt.setString(12,t12);
                                                pstmt.setString(13,t13);
                                                pstmt.setString(14,t14);
                                                pstmt.setString(15,t15);
                                                pstmt.setString(16,t16);
                                                pstmt.setString(17,t17);
                                                pstmt.setString(18,t18);
                                                pstmt.setString(19,t19);
                                                pstmt.setString(20,t20);
                                                pstmt.setString(21,t21);
                                               //  pstmt.setString(22,t22);
                                              
                                              
				
						
						
						
						 pstmt.executeUpdate(); 
								
						
						pstmt.close();  
						con.close(); 
					out.println( "<script>alert('Successfully Created.Please wait you will be approved soon.');window.location='home.jsp';</script>");
						//   response.sendRedirect("donerregsaveack.jsp");
						}
						
						else
						{
						
						out.println( "<script>alert('Sorry...Try Again');window.location='home.jsp';</script>");
						//		   response.sendRedirect("donerregsaveinvalid.jsp");
						
						}
					}
    
				catch(Exception e)
				{
				out.println("Exception occured" +e);
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

