<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String id=request.getParameter("id");
try{
Connection connection = null;
Statement statement= null;
Class.forName("com.mysql.jdbc.Driver");
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/miniprojectwdt","root","");
statement = connection.createStatement();
String deletequery = "DELETE FROM userinfo WHERE id = "+id;
statement.executeUpdate(deletequery);
out.println("Successfully deleted the application.");
//display alert success
}
catch(Exception e){
out.println(e);
}
%>