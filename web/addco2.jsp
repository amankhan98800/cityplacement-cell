<%@page  import="java.sql.*" %>
<%@page import="java.io.*,java.sql.*,java.util.*,java.util.Vector;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Co-Ordinator</title>
    </head>
    <body>
        <table>
      <%@page import="dbconnection.Dbconnection"%>
<% try      
      {
          
          Connection con=Dbconnection.getConnection(); 
      Statement stmt=con.createStatement();
      ResultSet rs1;

      String c_mob=request.getParameter("c_mob");
      out.println(c_mob);
           //Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
             //Connection con = DriverManager.getConnection("jdbc:odbc:EXAM","EXAM","EXAM");
         
           Statement st=con.createStatement();
           
          
       st.executeUpdate("INSERT INTO co (coname,comob,coemail,course,copass) SELECT sname,smob,semail,course,smob FROM student  where smob='"+c_mob+"'");
       
       out.println( "<script>alert('Successfully Added');window.location='viewco.jsp';</script>");
						
             
   }//try
      
    catch(Exception e)
     {
        out.println(e);        
     }
%>
    </table>
    </body>
</html>
