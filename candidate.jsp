<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MRCMS Application System</title>
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
<form action="candidateprocess.jsp" method="POST">
<center>
    <h1>MRCMS Application Form</h1>
    <table border="3">
        <tr>
        <td><label>Full Name</label></td>
        <td><input type="text" placeholder="Tony Wayne" name="name" required></td>
        </tr>
        <tr>
        <td><label>Address</label></td>
        <td><input type="text" name="address" required></td>
        </tr>
        <tr>
        <td><label>Identification Number</label></td>
        <td><input type="text" name="icnum" required></td>
        </tr>
        <tr>
        <td><label>Phone Number</label></td>
        <td><input type="text" placeholder="01122334455" name="phone" required></td>
        </tr>
        <tr>
        <td><label>Guardian Full Name</label></td>
        <td><input type="text" placeholder="Tony Wayne" name="guardianName" required></td>
        </tr>
        <tr>
        <td><label>Relation</label></td>
        <td><input type="text" name="relation" required></td>
        </tr>
        <tr>
        <td><label>Guardian Address</label></td>
        <td><input type="text" name="guardianAddress" required></td>
        </tr>
        <tr>
        <td><label>Guardian Phone Number</label></td>
        <td><input type="text" placeholder="01122334455" name="guardianPhone" required></td>
        </tr>
        
        
        </table><br><br>
        <table>
        <tr>
        <td colspan="2"><input type="submit" value="Submit" class="btn"></td>
        </tr>
        <tr>
        <td>
        <button class="btn" id="btnback"><a href="homepage.jsp">Back</a></button>
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