<%-- 
    Document   : new
    Created on : 10 Aug, 2022, 1:22:58 PM
    Author     : k v
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
    </head>
    <body>
        <!DOCTYPE html>
<html lang="en">
<head>
<title>HOME</title>
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
  <a href="javascript:void(0)" onClick="w3_close()" class="w3-button w3-hide-large w3-display-topleft" style="width:100%;font-size:22px">Close Menu</a>
   <div class="w3-container">
    <h3 class="w3-padding-64"><b>PLACEMENT<br>CELL</b></h3>
  </div>
 
  <div class="w3-bar-block">
    <a href="#" onClick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Home</a> 
        <a href="#services" onClick="w3_close()" class="w3-bar-item w3-button w3-hover-white">About</a> 
    <a href="#designers" onClick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Recruiters</a> 
    <a href="cologin.jsp" onClick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Co-Ordinator</a> 
   
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
  <div class="dropdown-content" id="myDropdown">
    <a href="studentlogin.jsp">Login</a>
    <a href="studentsignup.jsp">Create account</a>
  </div>
  </div> 
</div> 
       <a href="contactus.jsp" onClick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Contact Us</a> 


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
</nav>

<!-- Top menu on small screens -->
<header class="w3-container w3-top w3-hide-large w3-red w3-xlarge w3-padding">
  <a href="javascript:void(0)" class="w3-button w3-red w3-margin-right" onClick="w3_open()">☰</a>
 
</header>

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onClick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:340px;margin-right:40px">

  <!-- Header -->
  <div class="w3-container" style="margin-top:80px" id="showcase">
    <h1 class="w3-jumbo"><b>Surana Placement cell</b></h1>
    <h1 class="w3-xxxlarge w3-text-red"><b>and Career Guidance</b></h1>
    <hr style="width:550px;border:5px solid red" class="w3-round">
  </div>
  
  <!-- Photo grid (modal) -->
  
    <!-- Photo grid (modal) -->
  <div class="w3-row-padding">
    <div class="w3-half">
        <img src="https://i.ytimg.com/vi/9TesXxHbQS4/maxresdefault.jpg" style="width:100%"   height="495" onClick="onClick(this)" alt="Concrete meets bricks">
    </div>

    <div class="w3-half">
      <img src="https://cache.careers360.mobi/media/presets/720X480/colleges/social-media/media-gallery/5437/2018/7/17/Surana-College-Centre-for-Post-Graduate-Studies-Bangalore03.JPG" style="width:100%" onClick="onClick(this)" alt="Windows for the atrium">
 
    </div>
  </div>
 


  
<div class="w3-container" id="services" style="margin-top:90px">
    <h1 class="w3-xxxlarge w3-text-red"><b>ABOUT</b></h1>
    <hr style="width:150px;border:5px solid red" class="w3-round">
    <p> <h4> <B>
Surana Placement cell acts as an interface between the students and the corporate world.

The placement cell helps every student to utilize the resources available in the campus. Students will be facilitated with Enthusiastic Faculty, distinguished alumni, library and internet facilities for student’s assistance to get them ahead in this competitive world.
<p>
Surana College not only believes in providing quality education to its students as per University syllabus but also works relentlessly in making   them employable and placement ready through pre-placement training activities spread over three years of under graduation program.
</P></h4>
<h1 class="w3-xlarge w3-text-red"><b>OBJECTIVES OF PLACEMENT CELL
           </b></h1>

    
    
    <h4><P>●Giving Equal importance to every individual</p>
<p>●Providing rigorous training required for the placements as per the requirements of the companies</P>
<p>●Providing campus placements/Internships in best companies</p>
<p>●Providing Career Counselling & career guidance program for students to enable them to enter the corporate world with right skills and attitude.</p>
</p>
</br>
</B>
</p> </h4>
  </div>
  <!-- Designers -->
  <div class="w3-container" id="designers" style="margin-top:75px">
    <h1 class="w3-xxxlarge w3-text-red"><b>Our Recruiters</b></h1>
    <hr style="width:300px;border:5px solid red" class="w3-round">
    
    <div class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small">
        
    </div>
  </div>

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<style>
body,h1,h2,h3,h4,h5 {font-family: "Raleway", sans-serif}
.w3-quarter img{margin-bottom: -6px; cursor: pointer}
.w3-quarter img:hover{opacity: 0.6; transition: 0.3s}
</style>
</head>
<body class="w3-light-grey">


  
  <!-- Photo grid -->
  <div class="w3-row w3-grayscale-min">
    <div class="w3-quarter">
      <img src="https://www.suranacollege.edu.in/wp-content/uploads/2019/01/40.jpg" style="width:80%" >
      <img src="https://www.suranacollege.edu.in/wp-content/uploads/2019/01/2.png" style="width:80%" >
      <img src="https://www.suranacollege.edu.in/wp-content/uploads/2019/01/1.png" style="width:80%">
          <img src="https://www.suranacollege.edu.in/wp-content/uploads/2019/01/46.jpg" style="width:80%">
   </div>
    
   <div class="w3-quarter">
      <img src="https://www.suranacollege.edu.in/wp-content/uploads/2019/01/7.png" style="width:80%">
      <img src="https://www.suranacollege.edu.in/wp-content/uploads/2019/01/4.png" style="width:80%">
      <img src="https://www.suranacollege.edu.in/wp-content/uploads/2019/01/15.jpg" style="width:80%" >
            <img src="https://www.suranacollege.edu.in/wp-content/uploads/2019/01/1-1.jpg" style="width:80%" >
    </div>
    
       
   <div class="w3-quarter">
      <img src="https://www.suranacollege.edu.in/wp-content/uploads/2019/01/21.jpg" style="width:80%">
      <img src="https://www.suranacollege.edu.in/wp-content/uploads/2019/01/11.png" style="width:80%">
   <img src="https://www.suranacollege.edu.in/wp-content/uploads/2019/01/12.jpg" style="width:80%">
     <img src="https://www.suranacollege.edu.in/wp-content/uploads/2019/01/13.png" style="width:80%">
    </div>
        
   <div class="w3-quarter">
             <img src="https://www.suranacollege.edu.in/wp-content/uploads/2019/01/15.png" style="width:80%" >
     <img src="https://www.suranacollege.edu.in/wp-content/uploads/2019/01/25.jpg" style="width:80%" >
      <img src="https://www.suranacollege.edu.in/wp-content/uploads/2019/01/6.png" style="width:80%">
      <img src="https://www.suranacollege.edu.in/wp-content/uploads/2019/01/10.png" style="width:80%" height="180" >
    </div>
    

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
