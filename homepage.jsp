<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MRCMS Home Page</title>
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
        <form method="POST" action="checkstatusprocess.jsp">
            <h1>MRCMS User Application System</h1>
            <table>
                <tr>
                    <td>
                        <label>Full Name</label>
                        <input type="text" placeholder="Enter Username" name="name">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Identification Number</label>
                        <input type="text" placeholder="Enter Identification Number" name="icnum">
                    </td>
                </tr>
                <tr><td>
                        <a href="checkstatusprocess.jsp?"><button class="btn">Check Application Status</button></a>
                    </td>
                </tr>
                <tr><td>
                        <button class="btn"><a href="index.jsp">Admin Login</a></button>
                    </td>
                </tr>
                <tr><td>
                        <button class="btn"><a href="candidate.jsp">Apply as a New Member of MRCMS</a></button>
                    </td>
                </tr>
            </table>
        </form></center>
    </body>
</html>
