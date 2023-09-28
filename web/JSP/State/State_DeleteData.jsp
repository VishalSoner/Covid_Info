<%-- 
    Document   : State_UpdateData
    Created on : 14 Apr, 2023, 11:22:37 PM
    Author     : Lenovo
--%>

<!DOCTYPE html>
<html lang="en" >
    <head>
        <meta charset="UTF-8">
        <title>State | delete Data </title>
        <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.2.0/css/all.css'>
        <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.2.0/css/fontawesome.css'><link rel="stylesheet" href="./style.css">
        <link rel="stylesheet" href="../../CSS/State/State_DeleteData1.css">
    </head>
    <body>
        <!-- partial:index.partial.html -->
        <div class="container">
            <div class="screen">
                <div class="screen__content">
                    <form class="login" action="../../State_DeleteData">
                        <h1> Delete Information</h1>
                        <div class="head">
                            <div class="login__field">
                                State : <br>
                                <input type="text" class="login__input" placeholder="Enter State Here">
                            </div>
                            <div class="login__field">
                                User Id : <br>
                                <input type="text" class="login__input" placeholder="Entre User Id">
                            </div>
                        </div>
                        <div class="btn">
                            <button class="button login__submit">
                                    delete
                            </button>				
                        </div>
                    </form>

                    <div class="btn">
                        <button class="button login__submit1" >
                            <a href="../../stateDashboard.jsp" class="button__text">Back</a>
                        </button>				
                    </div>
                </div>

                <div class="screen__background">
                    <span class="screen__background__shape screen__background__shape4"></span>
                    <span class="screen__background__shape screen__background__shape3"></span>		
                    <span class="screen__background__shape screen__background__shape2"></span>
                    <span class="screen__background__shape screen__background__shape1"></span>
                </div>		
            </div>
        </div>
    </body>
</html>
