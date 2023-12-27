<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%
try{
Connection connection = null;
Statement statement= null;
ResultSet resultSet = null;
String id = request.getParameter("id");
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/miniprojectwdt","root","");
statement = connection.createStatement();
String updatequery = "SELECT * FROM userinfo WHERE id="+id;
resultSet = statement.executeQuery(updatequery);
while(resultSet.next()){
%>
<!-- DISPLAY DATA IN HTML FORMAT TO THE USER -->
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MRCMS Candidate Application</title>
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

<body>
<form action="updateprocess.jsp" method="POST">
    <input type="hidden" name="id" value="<%=resultSet.getString("id")%>">
<center>
<h1>MRCMS Application Update Form</h1>
<table>
<tr>
<td><label>User Full Name</label></td>
<td><input type="text" name="name" value="<%=resultSet.getString("name")%>" readonly=""></td>
</tr>
<tr>
<td><label>User Address</label></td>
<td><input type="text" name="type" value="<%=resultSet.getString("address")%>" readonly=""></td>
</tr>
<tr>
<td><label>User Identification Number </label></td>
<td><input type="text" placeholder="Silver" name="color" value="<%=resultSet.getString("icnum")%>" readonly=""></td>
</tr>
<tr>
<td><label>User Phone Number</label></td>
<td><input type="text" placeholder="4Y1SL65848Z411439" name="registration" value="<%=resultSet.getString("phone")%>" readonly=""></td>
</tr>
<tr>
<td><label>User Guardian Full Name</label></td>
<td><input type="text" name="name" value="<%=resultSet.getString("guardianName")%>" readonly=""></td>
</tr>
<tr>
<td><label>Relation </label></td>
<td><input type="text" name="type" value="<%=resultSet.getString("relation")%>" readonly=""></td>
</tr>
<tr>
<td><label>User Guardian Address </label></td>
<td><input type="text" placeholder="Silver" name="color" value="<%=resultSet.getString("guardianAddress")%>" readonly=""></td>
</tr>
<tr>
<td><label>User Guardian Phone Number</label></td>
<td><input type="text" placeholder="4Y1SL65848Z411439" name="registration" value="<%=resultSet.getString("guardianPhone")%>" readonly=""></td>
</tr>
<tr>
<td><label>Candidate Application Status</label></td>
<td><input type="text" value="<%=resultSet.getString("department")%>" readonly></td>
</tr>
<tr>
<td>MRCMS Application Status</td>
<td>
<input type="radio" name="status" value="Approved" required>Approve
<input type="radio" name="status" value="Decline" required>Decline
</td>
</tr>
<tr>
<td colspan="2"><input type="submit" value="Submit" class="btn"></td>
</tr>
<tr>
<td>
<button class="btn" id="btnback"><a href="admin.jsp">Back</a></button>
</td>
</tr>
</table>
</center>
</form>
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
<%
}
}
catch(Exception e){
out.println(e);
}
%>
}