<!DOCTYPE html>
<!-- Coding by CodingLab | www.codinglabweb.com-->
<html lang="en" dir="ltr">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title> Registration or Sign Up form in HTML CSS | CodingLab </title>
        <!--<link rel="stylesheet" href="style.css">-->
        <link rel="stylesheet" href="../../CSS/State/State_InsertData.css">

    </head>
    <body>
        <div class="wrapper">
            <h2>Insert Data</h2>
            <form action="../../State_InsertData">
                <div class="input-box">
                    Total Cases : <input type="number" class="input" placeholder="Enter Total Cases" name="total" required>
                </div>

                <div class="input-box">
                    Total Active :  <input type="number" class="input" placeholder="Enter Active Cases" name="active" required>
                </div>

                <div class="input-box">
                    Total Death : <input type="number" class="input" placeholder="Enter Death Cases" name="death" required>
                </div>

                <div class="input-box">
                    Total Recovery : <input type="number" class="input" placeholder="Enter Recovery Cases" name="recovery" required>
                </div>
                <div class="main_btn">
                    <div class="button1">
                        <button type="submit">Insert Data</button>
                    </div>
                    <div class=" button12">
                        <button type="submit"><a href="../../stateDashboard.jsp"> Back </a></button>
                        <button type="reset">Reset</button>
                    </div>
                </div>
            </form>
        </div>

    </body>
</html>


