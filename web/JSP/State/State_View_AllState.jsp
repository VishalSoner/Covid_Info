<%-- 
    Document   : State_View_AllState
    Created on : 13 Apr, 2023, 2:50:18 PM
    Author     : Lenovo
--%>


<%--<%@page import="com.mysql.cj.xdevapi.Result"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>--%>
<%
//    import java.sql.ResultSet;
//
//    String sql = "SELECT * FROM Covid_info;";
//
//    Connection con = mypkg.utility.connection();
//    PreparedStatement pst = con.prepareStatement(sql);
//
//    ResultSet rs = pst.executeQuery();

%>


<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <title>State Admin | View State User Accounts</title>
        <link rel="stylesheet" href="../../CSS/State/State_View_AllState.css" />

        <!-- Font Awesome Cdn Link -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
    </head>

    <body>
        <div class="container">
            <div class="btn">
                
                <form action="../State/State_Search_AllState.jsp" method="" class="" >
                    <input type="search" placeholder="Search State Name" name="state" >
                    <button type="submit" class="submit_btn" ><i class="fas fa-search" ></i></button>
                </form>
                
                <a href="../../stateDashboard.jsp">
                    <button type="submit"> Back </button>
                </a>
                <a href="../../index.jsp">
                    <button type="submit"> Home </button>
                </a>
            </div>
            <section class="attendance">
                <div class="attendance-list">
                    <h1>State Admin View All State's</h1>
                    </table> <table class="table">
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

