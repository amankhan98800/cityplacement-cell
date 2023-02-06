<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>

<%@page import ="dbconnection.Dbconnection"%>
  <%
try
{
   
   
      String s=request.getParameter("semail").trim();
   
       //Class.forName("com.mysql.jdbc.Driver");
 Connection con=Dbconnection.getConnection();
      Statement stmt=con.createStatement();
      //ResultSet rs;
      String s1="update student set status='Approved' where semail="+"'"+s+"'";
      //out.println("done");
     
      stmt.executeUpdate(s1);
     
     // rs.close();
     
      stmt.close();
   
      con.close();
/*out.println("<script> alert('deleted successfully'); </script>");
out.println("<br><br><br><h1><a href=Showmycart.jsp>Return to Cart</a></h1>");
  */
    out.println( "<script>alert('Student Approved');window.location='viewstudents.jsp';</script>");
   
}
  catch(Exception e)
    {
     
      out.println(e);
    }
%>
