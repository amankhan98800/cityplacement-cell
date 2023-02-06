<%-- 
    Document   : new
    Created on : 10 Aug, 2022, 1:22:58 PM
    Author     : k v
--%>

<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>

<!DOCTYPE html>
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

        <%
      }
      }
      catch(Exception e)
              {
          out.println(e);
              }
            %>

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
<!-- Top menu on small screens -->
<header class="w3-container w3-top w3-hide-large w3-red w3-xlarge w3-padding">
  <a href="javascript:void(0)" class="w3-button w3-red w3-margin-right" onclick="w3_open()">☰</a>
 
</header>

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:340px;margin-right:40px">



  
  <!-- Contact -->
  <div class="w3-container" id="contact" style="margin-top:75px">
    <h1 class="w3-xxxlarge w3-text-red"><b>Contact.</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
    <form >
      <div class="w3-section">
        <label>Mobile : 9480427161</label>
      </div>
      <div class="w3-section">
        <label>Email- placementcell.ug@surana.com

 <!--       </label>
      </div>
        <div class="w3-section">
        <label>Enter your Name:</label>
        <input type="text"  type="text" name="t1" id="t1"  required> </textarea>
      </div>
        <div class="w3-section">
        <label>Course:</label>
        ><select name="t2" id="t2" required="required">
                        <option  value="">------Select--------- </option>
                                        <option value ="BCA">BCA</option>
                                        <option value ="BCom">BCom</option>
                                        <option value ="BA">BA</option>
                                        <option value ="BBA">BBA</option>
                                        <option value ="Bsc">BSc</option>
                                        <option value ="MCA">MCA</option>
                                         <option value ="MBA">MBA</option>
                                        <option value ="MCom">MCom</option>




                                       
                                </select>              
      </div>
        <div class="w3-section">
        <label>Enter your contact number:</label>
        <input type="text"  type="text" name="mob" id="mob"  required> </textarea>
      </div>
        
      
      <div class="w3-section">
        <label>Message</label>
        <textarea class="w3-input w3-border" type="text" name="message" id="message" rows="10" required> </textarea>
      </div>
    <button type="submit" id="button" name="button" class="w3-button w3-block w3-padding-large w3-red w3-margin-bottom">Send Message</button>
   
       
    </form>  
  </div>

<!-- End page content -->
</div>





<!-- W3.CSS Container -->

<script>
// Script to open and close sidebar
function w3_open() {
  document.getElementById("mySidebar").style.display = "block";
  document.getElementById("myOverlay").style.display = "block";
}
 
function w3_close() {
  document.getElementById("mySidebar").style.display = "none";
  document.getElementById("myOverlay").style.display = "none";
}

// Modal Image Gallery
function onClick(element) {
  document.getElementById("img01").src = element.src;
  document.getElementById("modal01").style.display = "block";
  var captionText = document.getElementById("caption");
  captionText.innerHTML = element.alt;
}
</script>

</body>
</html>
