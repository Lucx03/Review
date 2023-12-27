<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>View MRCMS User Application Status</title>
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
<h1>MRCMS User Application Information</h1>
<table border="2">
<tr>
<td>Your Name </td>
<td>Your Address </td>
<td>Your Identification Number </td>
<td>Your Phone Number </td>
<td>Guardian Full Name</td>
<td>Relation </td>
<td>Guardian Address  </td>
<td>Guardian Phone Number</td>
<td>Your Application Status</td>
</tr>
<%
String id = request.getParameter("id");
try{
Connection connection = null;
Statement statement= null;
ResultSet resultSet = null;
Class.forName("com.mysql.jdbc.Driver");
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/miniprojectwdt","root","");
statement = connection.createStatement();
String displayquery = "SELECT * FROM userinfo WHERE id="+id;
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
<td><%=resultSet.getString("status")%></td>
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
<button class="btn" id="btnback"><a href="homepage.jsp">Back</a></button>
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