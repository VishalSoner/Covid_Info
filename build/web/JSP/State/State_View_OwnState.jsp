<%-- 
    Document   : State_View_OwnState
    Created on : 13 Apr, 2023, 3:13:43 PM
    Author     : Lenovo
--%>


<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Integrate datatable - Coding Birds Online</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

        <!--<link   rel="icon" href="https://codingbirdsonline.com/wp-content/uploads/2019/12/cropped-coding-birds-favicon-2-1-192x192.png" type="image/x-icon">-->

        <link rel="stylesheet" href="../../CSS/State/State_View_OwnState1.css"

    </head>

    <body>
        <h2>Own State's</h2>
        <div class="table-wrapper">
            <table class="fl-table">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Name</th>
                        <th>Surname</th>
                        <th>Contact</th>
                        <th>Salary</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        for(int i = 1; i <= 100; i++)
                        {
                    %>
                    <tr>
                        <td><%= i %></td>
                        <td>Vishal</td>
                        <td>Soner</td>
                        <td>7987824608</td>
                        <td><%= i*1000 %></td>
                    </tr>
                    <%
                        }
                    %>
                 
            </table>
        </div>
    </body>
</html>
