<%-- 
    Document   : newjspSuper_State_Create_Admin_Account
    Created on : 12 Apr, 2023, 2:32:02 AM
    Author     : Vishal Soner
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Super Admin Create State Admin Account</title>
        
        <!--Google Fonts-->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400;500&family=Lilita+One&family=Sedgwick+Ave+Display&display=swap" rel="stylesheet">
        <!--CSS File-->
        <link rel="stylesheet" href="../../CSS/Super/Super_State_Create_Admin_Account1.css" />
    </head>

    <body>
        <div class="wrapper login">
            <div class="container">
                <div class="col-left">
                    <div class="login-text">
                        <h2>Super Admin</h2>
                        <p>Creating State<br> Account.</p>
                        <a href="../../superDashboard.jsp" class="btn">Back</a>
                    </div>
                </div>

                <div class="col-right">
                    <div class="login-form">
                        <form class="text" action="../../Super_State_Create_Admin_Account" method="post">
                            <p>
                                <label>User Id or Email<span>*</span></label>
                                <input type="text" placeholder="User Id or Email" name="userid" required>
                            </p>
                            <p>
                                <label>Password<span>*</span></label>
                                <input type="password" placeholder="Password" name="password" required>
                            </p>
                            <p>
                                <label>State <span>*</span></label>
                                <input type="text" placeholder="State" name="state" required>
                            </p>
                            <p>
                                <input type="submit" value="Create">
                            </p>
                        </form>
                    </div>
                </div>

            </div>
        </div>
    </body>
</html>
