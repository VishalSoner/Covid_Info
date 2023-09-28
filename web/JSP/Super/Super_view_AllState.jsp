<%-- 
    Document   : Super_viewOwnState
    Created on : 12 Apr, 2023, 3:59:22 AM
    Author     : Visahl Soner
--%>

<%@page import="com.mysql.cj.xdevapi.Result"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%
    String sql = "SELECT * FROM Covid_info;";

    Connection con = mypkg.utility.connection();
    PreparedStatement pst = con.prepareStatement(sql);

    ResultSet rs = pst.executeQuery();
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Super Admin | All State's</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

        <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css"></script>

        <link   rel="icon" href="https://codingbirdsonline.com/wp-content/uploads/2019/12/cropped-coding-birds-favicon-2-1-192x192.png" type="image/x-icon">
        <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

        <link rel="stylesheet" href="../../CSS/Super/Super_view_AllState1.css">

    </head>


    <body>
        <section class="main-content">
            <div class="container">
                <header class="head">

                    <div class="container_btn">
                        <h1>All State Covid Cases Data</h1>
                        <div class="btn">
                            <a href="../../superDashboard.jsp" ><button>Back</button> </a>
                        </div>
                    </div>
                </header>

                <table class="table">
                    <thead>
                        <tr>
                            <th>No.</th>
                            <th>State</th>
                            <th>Total Cases</th>
                            <th>Total Active Cases</th>
                            <th>Total Deaths Cases</th>
                            <th>Total Recover Cases</th>
                            <th>State User</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            int i = 1;
                            while (rs.next()) {
                                //                            String s1 = rs.getString(1);
                                String s2 = rs.getString("state");
                                String s3 = rs.getString(3);
                                String s4 = rs.getString(4);
                                String s5 = rs.getString(5);
                                String s6 = rs.getString(6);
                                String s7 = rs.getString(7);
                                String s8 = rs.getString(8);
                        %>
                        <tr>
                            <td>    <%= i++%>.   </td>
                            <td>    <%= s3%>   </td>
                            <td>    <%= s4%>   </td>
                            <td>    <%= s5%>   </td>
                            <td>    <%= s6%>   </td>
                            <td>    <%= s7%>   </td>
                            <td>    <%= s8%>   </td>
                        </tr>
                        <%  }%>
                    </tbody>


                </table>

        </section>
    </body>

</html>