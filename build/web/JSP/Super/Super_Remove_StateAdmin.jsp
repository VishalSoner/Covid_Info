<%-- 
    Document   : Super_Remove_StateAdmin
    Created on : 13 Apr, 2023, 2:08:43 AM
    Author     : Vishal Soner
--%>

<!DOCTYPE html>
<!-- Created By CodingNepal -->
<html lang="en" dir="ltr">
    <head>
        <meta charset="utf-8">
        <title>Glowing Inputs Login Form UI</title>
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
        <link rel='stylesheet' href="../../CSS/Super/Super_Remove_StateAdmin.css">

        <!--Google Fonts-->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Anton&family=Bungee+Spice&family=Dancing+Script:wght@400;500&family=Lilita+One&family=Oswald:wght@500&family=Sedgwick+Ave+Display&display=swap" rel="stylesheet">


    </head>
    <body>
        <div class="login-form">
            <div class="text">
                Removing <br>   State Admin
            </div>
            <form action="../../Super_Remove_StateAdmin" method="get">
                <div class="field">
                    <div class="fas fa-envelope"></div>
                    <input type="text" placeholder="Enter User Id" name="userid">
                </div>
                <div class="field">
                    <div class="fas fa-country"></div>
                    <input type="text" placeholder="Enter State" name="state">
                </div>
                <button>Remove</button>

                <div class="link">
                    Don't Want to Remove <br> Admin
                    <a href="../../superDashboard.jsp">Back</a>
                </div>
            </form>
        </div>
    </body>
</html>
