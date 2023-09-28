<%@page import="com.mysql.cj.xdevapi.Result"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%
    String sql = "SELECT * FROM State_Admin;";

    Connection con = mypkg.utility.connection();
    PreparedStatement pst = con.prepareStatement(sql);

    ResultSet rs = pst.executeQuery();

%>


<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <title>Super Admin | View State User Accounts</title>
        <link rel="stylesheet" href="../../CSS/Super/Super_view_UserAccount1.css" />

        <!-- Font Awesome Cdn Link -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
    </head>

    <body>
        <div class="container">
            <div class="btn">

                <form action="JSP/Super/Super_Search_StateAdmin.jsp" method="" class="" >
                    <input type="search" placeholder="Search User Name" name="userid" >
                    <button type="submit" class="submit_btn" ><i class="fas fa-search" ></i></button>
                </form>

                <a href="../../superDashboard.jsp">
                    <button type="submit"> Back </button>
                </a>
                <a href="../../index.jsp">
                    <button type="submit"> Home </button>
                </a>
            </div>
            <section class="attendance">
                <div class="attendance-list">
                    <h1>Currently Added Admin's</h1>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Number</th>
                                <th>User ID</th>
                                <th>User Name</th>
                                <th>State</th>
                                <th>Address</th>
                                <th>Mobile</th>
                                <th>Email</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%                                int i = 1;
                                while (rs.next()) {
                                    String s1 = rs.getString("User_Id");
                                    String s2 = rs.getString("UName");
                                    String s3 = rs.getString("state");
                                    String s4 = rs.getString("Address");
                                    String s5 = rs.getString("Mobile");
                                    String s6 = rs.getString("EMail");
                            %>
                            <tr>
                                <td><%= i++%> </td>
                                <td> <%= s1%> </td>
                                <td> <%= s2%> </td>
                                <td> <%= s3%> </td>
                                <td> <%= s4%> </td>
                                <td> <%= s5%> </td>
                                <td> <%= s6%> </td>
                            </tr>
                            <% }%>
                        </tbody>

                    </table>
                </div>
            </section>
        </section>
    </div>

</body>

</html>





<!--
            <a href="state-Account.jsp">Create State</a>
            <a href="">View State</a>
            <a href="">View User Account</a>
            <a href="">View All State Data</a>
            <a href="">Logout</a>
-->