<%-- 
    Document   : State_UpdateData
    Created on : 14 Apr, 2023, 11:22:37 PM
    Author     : Lenovo
--%>
<!--<link rel="stylesheet" href="../../CSS/State/State_InsertData12.css">-->
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>State Admin | Updating Data</title>
        <link rel="stylesheet" href="../../CSS/State/State_UpdateData12.css">

    </head>
    <body>
        <div class="wrapper">
            <div class="title">
                <h1>Update Data</h1>
            </div>

            <div class="contact-form">
                <div class="input-fields">
                    <form action="../../State_UpdateData">
                        <div class="input">Data Inserted Date : <input type="Date" class="input1" placeholder="Data Inserted Date" name="date"></div>
                        <input type="number" class="input" placeholder="Total Cases" name="total">
                        <input type="number" class="input" placeholder="Active Cases" name="active">
                        <input type="number" class="input" placeholder="Death Cases" name="death">
                        <input type="number" class="input" placeholder="Recovery Cases" name="recovery">
                        <button class="btn" type="submit">Insert</button>
                    </form>
                    
                    <a href="../../stateDashboard.jsp"> 
                        <button class="btn1" > back </button> 
                    </a>
                </div>
            </div>
        </div>
    </body>
</html>