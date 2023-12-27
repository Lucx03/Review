<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin View Page</title>
        <style>
            .btn {
              background-color: #EA4C89;
              border-radius: 8px;
              border-style: none;
              box-sizing: border-box;
              color: #FFFFFF;
              cursor: pointer;
              display: inline-block;
              font-family: "Haas Grot Text R Web", "Helvetica Neue", Helvetica, Arial, sans-serif;
              font-size: 14px;
              font-weight: 500;
              height: 40px;
              line-height: 20px;
              list-style: none;
              margin: 0;
              outline: none;
              padding: 10px 16px;
              position: relative;
              text-align: center;
              text-decoration: none;
              transition: color 100ms;
              vertical-align: baseline;
              user-select: none;
              -webkit-user-select: none;
              touch-action: manipulation;
            }

            .btn:hover,
            .btn:focus {
              background-color: #F082AC;
            }
        </style>
    </head>
<body><center>
<h1>All User Personal Information</h1>
<table border="2">
<tr>
<td>User Full Name </td>
<td>User Address</td>
<td>User Identification Number</td>
<td>User Phone Number</td>
<td>Guardian Full Name</td>
<td>Guardian Relation</td>
<td>Guardian Address</td>
<td>Guardian Phone Number</td>
<td>Admin Function</td>
</tr>
<%
try{
Connection connection = null;
Statement statement= null;
ResultSet resultSet = null;
Class.forName("com.mysql.jdbc.Driver");
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/miniprojectwdt","root","");
statement = connection.createStatement();
String displayquery = "SELECT * FROM userinfo";
resultSet = statement.executeQuery(displayquery);
while(resultSet.next()){
//display data by looping method
%>
<tr>
<td><%=resultSet.getString("name")%></td>
<td><%=resultSet.getString("address")%></td>
<td><%=resultSet.getString("icnum")%></td>
<td><%=resultSet.getString("phone")%></td>
<td><%=resultSet.getString("guardianName")%></td>
<td><%=resultSet.getString("relation")%></td>
<td><%=resultSet.getString("guardianAddress")%></td>
<td><%=resultSet.getString("guardianPhone")%></td>
<td>
<a href="delete.jsp?id=<%=resultSet.getString("id")%>"><button class="btn" onclick="return confirm('Are you sure? This process cannot be undo')">Delete</button></a><br>
<a href="update.jsp?id=<%=resultSet.getString("id")%>"><button class="btn" onclick="return confirm('Are you sure? You will be redirect to update page')">Update</button></a>
</td>
</tr>
<%
}
}
catch(Exception e){
//display alert error
out.println(e);
}
%>
</table>
<button class="btn" id="btnback"><a href="logout.jsp">Back</a></button>
</center>
<script>
// JavaScript to remove the "required" attribute when the "Back" button is clicked
document.getElementById('btnback').addEventListener('click', function() {
var requiredFields = document.querySelectorAll('[required]');
for (var i = 0; i < requiredFields.length; i++) {
requiredFields[i].removeAttribute('required');
}
});
</script>
</body>
</html>