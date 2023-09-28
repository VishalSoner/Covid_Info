<%-- 
    Document   : State_Search_AllState
    Created on : 13 Apr, 2023, 3:25:04 PM
    Author     : Lenovo
--%>
<%--<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>--%>
<%
//    import java.sql.ResultSet;
    //geting Data From Super Search Bar.
//    String state = request.getParameter("state");
//
//    String sql = "SELECT * FROM Covid_info where State = ?;";
//
//    Connection con = mypkg.utility.connection();
//    PreparedStatement pst = con.prepareStatement(sql);
//    state = "MP";
//    pst.setString(1, state);
//    ResultSet rs = pst.executeQuery();

//    out.println("User ID " + userid + "<br>");
//    out.println("User ID " + rs.next() + "<br>");
//    try {
//        if (rs.next() == true) {
//            response.sendRedirect("Super_Search_DataNotFound.jsp");
//        } else {
//            rs.previous();
//        }
//    } catch (Exception e) {
//    }

%>


<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <title>Super Admin | View State User Accounts</title>
        <link rel="stylesheet" href="../../CSS/State/State_Search_AllState.css" />

        <!-- Font Awesome Cdn Link -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
    </head>

    <body>
        <div class="container">
            <div class="btn">

                <a href="../State/State_View_AllState.jsp">
                    <button type="submit"> Back </button>
                </a>
                <a href="../../stateDashboard.jsp">
                    <button type="submit"> State Admin </button>
                </a>
            </div>
            <section class="attendance">
                <div class="attendance-list">
                    <h1>Search Data</h1>
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
                        
                    </table>
                </div>
            </section>
        </section>
    </div>

</body>

</html>
