<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>Resume</title>
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
    <a href="adminhome.jsp" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Home</a> 
    <a href="viewstudents.jsp" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">View Students</a> 
    
    </nav>
        <style type="text/css">
            <!--
            .style1 {
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
	font-size: 70px;
	color: crimson;
            }
           
            .style2 {
                font-family: Geneva, Arial, Helvetica, sans-serif;
                font-weight: bold;
                font-size: x-large;
            }
body {
	background-color: white;
}
.style4 {color: black; }
.style10 {color: black; font-weight: bold;font-size: large; }
            -->
        </style>
    </head>
<body>
      <%@page import="dbconnection.Dbconnection"%>
        <%
        //Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
         //Connection con = DriverManager.getConnection("jdbc:odbc:EXAM","EXAM","EXAM");
       Connection con=Dbconnection.getConnection(); 
      Statement stmt=con.createStatement();
      ResultSet rs1;
     
    
        try {
            String semail = request.getParameter("semail");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select sname,sgender,sdob,sadhaar,saddress,smob,samob,semail,susn,course,tenthboard,tenthper,twboard,twper,degfi,degs,degt,degfo,achieve,sphoto from student where semail='" + semail + "'");
            String s1 = "", s2 = "", s3 = "", s4 = "", s5 = "", s6 = "", s7 = "", s8 = "", s9 = "", s10 = "", s11 = "", s12 = "", s13 = "", s14 = "",s15="",s16="",s17="",s18="",s19="",s20="";
            while (rs.next()) {
                s1 = rs.getString("sname");
                s2 = rs.getString("sgender");
                s3 = rs.getString("sdob");
                s4 = rs.getString("sadhaar");
                s5 = rs.getString("saddress");
                s6 = rs.getString("semail");
                s7 = rs.getString("susn");
                s8 = rs.getString("course");
                s9 = rs.getString("tenthboard");
                s10 = rs.getString("tenthper");
                s11 = rs.getString("twboard");
                s12 = rs.getString("twper");
                s13 = rs.getString("degfi");
                s15 = rs.getString("degs");
                s16 = rs.getString("degt");
                s17 = rs.getString("degfo");
                s18 = rs.getString("achieve");
                s19 = rs.getString("smob");
                s14 = rs.getString("samob");
                s20=rs.getString("sphoto");
                





        %>
<table width="885" align="center" border="4" border-style="solid" bordercolor="#FF3300">
  <tr>
    <td width="662" height="206"><div align="center" class="style1">Resume</div></td>
    <td width="207"><label> <span class="style10"> </span> </label>              <img src=<%=s20%>  align="right" height="200" width="200" 
              ><span class="style10"> </span></td>
  </tr>
</table>
<table width="890" align="center" height="735" border="5" border-style="solid" bordercolor="#FF3300">
  <tr>
    <td width="269" height="82"><div align="left" class="style4">
      <p class="style2">Name :
        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</p>
    </div></td>
    <td width="173"><div align="center" class="style4">
      <p class="style10"><%=s1%> &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</p>
    </div></td>
    <td width="257" ><div align="left" class="style4">
      <p class="style2">USN
        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; : </p>
    </div></td>
    <td width="163"><span class="style10"> </span>
        <div align="center" class="style10"><%=s7%></div>
      <span class="style10"> </span></td>
  </tr>
  <tr>
    <td height="79"><div align="left" class="style4">
      <p class="style2">Gender :</p>
    </div></td>
    <td><label> <span class="style10"> </span> </label>
        <div align="center" class="style10"><%=s2%></div>
      <span class="style10"> </span></td>
    <td><div align="left" class="style4">
      <p class="style2">Course
        &nbsp;&nbsp;&nbsp;&nbsp; : </p>
    </div></td>
    <td><span class="style10"> </span>
        <div align="center" class="style10"><%=s8%></div>
      <span class="style10"> </span> </td>
  </tr>
  <tr>
    <td height="84"><div align="left" class="style4">
      <p class="style2">Date of Birth </p>
    </div></td>
    <td><label> <span class="style10"> </span> </label>
        <div align="center" class="style10"><%=s3%></div>
      <span class="style10"> </span></td>
    <td><div align="left" class="style4">
      <p><span class="style2">Tenth Board </span><span class="style2">:</span></p>
      <p><br />
      </p>
    </div></td>
    <td><span class="style10"> </span>
        <div align="center" class="style10"><%=s9%></div>
      <span class="style10"> </span> </td>
  </tr>
  <tr>
    <td height="82"><div align="left" class="style4">
      <p class="style2">Adhaar
        &nbsp;&nbsp;&nbsp;&nbsp;: </p>
    </div></td>
    <td><label> <span class="style10"> </span> </label>
        <div align="center" class="style10"><%=s4%></div>
      <span class="style10"> </span></td>
    <td><div align="left" class="style4"><span class="style2">Tenth %:</span></div></td>
    <td><span class="style10"> </span>
        <div align="center" class="style10"><%=s10%></div>
      <span class="style10"> </span></td>
  </tr>
  <tr>
    <td height="65"><div align="left" class="style4">
      <p class="style2">Address
        &nbsp;&nbsp;: </p>
    </div></td>
    <td><label> <span class="style10"> </span> </label>
        <div align="center" class="style10"><%=s5%></div>
      <span class="style10"> </span></td>
    <td><div align="left" class="style4">
      <p class="style2">12th Board
        :</p>
    </div></td>
    <td><span class="style10"> </span>
        <div align="center" class="style10"><%=s11%></div>
      <span class="style10"> </span></td>
  </tr>
  <tr>
    <td height="87" ><div align="left" class="style4">
      <p class="style2">Mobile
        &nbsp;&nbsp;&nbsp;&nbsp; : </p>
    </div></td>
    <td><label> <span class="style10"> </span> </label>
        <div align="center" class="style10"><%=s19%></div>
      <span class="style10"> </span></td>
    <td><div align="left" class="style4">
      <p class="style2">12th %
        :</p>
    </div></td>
    <td><p>&nbsp;</p>
        <div align="center" class="style10"><%=s11%></div>
      <span class="style10"> </span></td>
  </tr>
  <tr>
    <td height="87"><div align="left" class="style4"><span class="style2">Alternative mobile
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</span></div></td>
    <td><label> <span class="style10"> </span> </label>
        <div align="center" class="style10"><%=s14%></div>
      <span class="style10"> </span></td>
    <td><div align="left" class="style4">
      <p class="style2">Degree 1st sem% </p>
    </div></td>
    <td><label> <span class="style10"> </span> </label>
        <div align="center" class="style10"><%=s13%></div></td>
  </tr>
  <tr>
    <td height="97"><div align="left" class="style4">
      <p class="style2">Degree 2nd sem% </p>
    </div></td>
    <td><label> <span class="style10"> </span> </label>
        <div align="center" class="style10"><%=s15%></div>
      <span class="style10"> </span></td>
    <td><div align="left" class="style4">
      <p class="style2">Degree 3rd sem% </p>
    </div></td>
    <td><label> <span class="style10"> </span> </label>
        <div align="center" class="style10"><%=s16%></div></td>
  </tr>
  <tr>
    <td height="41"><div align="left" class="style4">
      <p class="style2">Degree 4th sem% </p>
    </div></td>
    <td><label> <span class="style10"> </span> </label>
        <div align="center" class="style10"><%=s17%></div>
      <span class="style10"> </span></td>
    <td><div align="left" class="style4">
      <p class="style2">&nbsp;Acheivements:</p>
    </div></td>
    <td><label> <span class="style10"> </span> </label>
        <div align="center" class="style10"><%=s18%></div></td>
  </tr>
  <%
            }//while
        }//try
        catch (Exception e) {
            out.println(e);
        }
            %>
</table>
</body>
</html>
