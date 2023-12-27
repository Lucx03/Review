<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
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
        <form method="POST" action="j_security_check">
            <h1>Admin Login Page</h1>
            <table>
                <tr>
                    <td>
                        <label>Username</label>
                        <input type="text" placeholder="Enter Username" name="j_username">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Password</label>
                        <input type="password" placeholder="Enter Password" name="j_password">
                    </td>
                </tr>
                <tr><td>
                        <input class="btn" type="submit" value="Login"></td>
                </tr>
                <tr><td>
                        <button class="btn" id="btnback"><a href="homepage.jsp">Back</a></button>
                    </td>
                </tr>
            </table>
        </form></center>
    </body>
</html>
