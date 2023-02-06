<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>

<!DOCTYPE HTML>

<html>
	<head>
	<title>Student Change Password</title>
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
          

       
<a href="viewjobs.jsp?semail=<%=semail%>" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Jobs</a>

<a href="studentcontactus.jsp?semail=<%=semail%>" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Contact Us</a> 


 
             <a href="home.jsp" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Logout</a> 
 
       
      </tr>
      
            
            
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
<script language="javascript">
            function check()
            {
                var a= document.form1.newpass2.value;
                var b= document.form1.newpass.value;
                 if(document.form1.newpass2.value =="")
                {
                    alert("Enter the new password");
                    document.form1.newpass2.focus();
                    return false;
                }
                else if(a.length<8)
                {
                    alert("password should be minimum 8 characters");
                    document.form1.newpass2.focus();
                    return false;
                }
                if(document.form1.newpass.value=="")
                {
                    alert("ReEnter the password");
                    document.form1.newpass.focus();
                    return false;
                }
                else if(a!=b)
                {
                    alert("Wrong password match");
                    document.form1.newpass.focus();
                    return false;
                }

                return true;
            }
        </script>

</head>
<body>


</nav>
 
  <div class="w3-container" id="contact" style="margin-top:100px">
    <h1 class="w3-xxxlarge w3-text-red" align="center"><b>CHANGE PASSWORD</b></h1>
    <hr style="width:100px;border:5px solid red" class="w3-round">

		 <form name="form1" action="" method="post" onsubmit="return check()">
                        
                        
                                     <table align="CENTER" width="50%" border="0" cellpadding="15" cellspacing="15">
                                          <tr>
          <div class="w3-section">
    <td><div align="right"><strong>E-MAIL ID :</strong></div></td>
    <td>&nbsp;</td>
    <td><div align="left">
      <input type="text" name="coemail" id="coemail" value="<%=semail%>" readonly>
    </div>
          
    </tr>
     <%
      }
      }
      catch(Exception e)
              {
          out.println(e);
              }
            %>

  <tr>
          <div class="w3-section">
    <td><div align="right"><strong>NEW PASSWORD :</strong></div></td>
    <td>&nbsp;</td>
    <td><div align="left">
      <input type="text" name="newpass2" id="newpass2" >
    </div>
          
    </tr>
  <tr>
    <td><div align="right"><strong>CONFIRM NEW PASSWORD :</strong></div></td>
    <td>&nbsp;</td>
    <td><div align="left">
      <input type="text" name="newpass" id="newpass">
    </div></td>
    </tr><br/>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>
        <br/>
      <div align="left">
          <h3>
        <input name="Submit" type="submit" value="Submit" />      
          </h3>
          </tr>
</table>
           <span class="col-md-5 col-md-offset-2 gtco-heading text-center">
	                   
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
      ResultSet rsl;




String semail=request.getParameter("semail");
      String c1 =request.getParameter("coemail").trim();
            String c2 = request.getParameter("newpass2").trim();
            // session.getAttribute("c1", c1);
         //   Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
          //   Connection con = DriverManager.getConnection("jdbc:odbc:EXAM","EXAM","EXAM");
            
                         
            Statement st = con.createStatement();

           ResultSet rs = st.executeQuery("select * from student where semail='" + c1 + "'");
           
            int found=0;   
      while(rs.next())
      {
	  	stmt.executeUpdate("Update student set spass='"+request.getParameter("newpass2")+"' where semail='"+c1+"'");
//id=rs.getString(1);
	  rs.getString("semail");
			//a=rs.getString(6);
				//m=rs.getString(4);
	 			//e=rs.getString(3);
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
		
            out.println( "<script>alert('Chnaged Succesfully');window.location='studenthome.jsp?semail="+semail+"';</script>");
		
		            		}
		  else
out.println( "<script>alert('Wrong Email.Please Check it and try again');window.location='studentchangepassword.jsp';</script>");
	
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

