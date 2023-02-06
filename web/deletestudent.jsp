<%@page  import="java.sql.*" %>
<%@page import="java.io.*,java.sql.*,java.util.*,java.util.Vector;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Student</title>
    </head>
    <body>
        <table>
      <%@page import="dbconnection.Dbconnection"%>
<% try      
      {
          
          Connection con=Dbconnection.getConnection(); 
      Statement stmt=con.createStatement();
      ResultSet rs1;

      String semail=request.getParameter("semail");
      out.println(semail);
           //Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
             //Connection con = DriverManager.getConnection("jdbc:odbc:EXAM","EXAM","EXAM");
         
           Statement st=con.createStatement();
           
          
       st.executeUpdate("Delete from student where semail='"+semail+"'");
             response.sendRedirect("viewstudents.jsp");
   }//try
      
    catch(Exception e)
     {
        out.println(e);        
     }
%>
    </table>
    </body>
</html>
