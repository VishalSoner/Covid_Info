<%@page import="com.mysql.cj.xdevapi.Result"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%
    String sql = "SELECT * FROM Covid_info;";

    Connection con = mypkg.utility.connection();
    PreparedStatement pst = con.prepareStatement(sql, ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);

    ResultSet rs = pst.executeQuery();
    rs.afterLast();

    //02 Get Data
    String state = (String) session.getAttribute("state");
    String user_id = (String) session.getAttribute("userid");
%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <title>State Admin Dashboard | By Code Info</title>
        <link rel="stylesheet" href="CSS/State/stateDashBoard1.css" />

        <!-- Font Awesome Cdn Link -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
    </head>

    <body>
        <div class="container">
            <nav>
                <ul>
                    <li><a href="#" class="logo">
                            <img src="Images/Logo/Home.gif">
                            <!--<span class="nav-item">State<br>Admin</span>-->
                            <span class="nav-item">
                                <%= user_id%><br>
                            </span>
                        </a>
                    </li>

                    <li><a href="index.jsp">
                            <i class="fas fa-home"></i>
                            <span class="nav-item"> Home </span>
                        </a>
                    </li>

                    <li><a href="about_us.jsp">
                            <i class="fas fa-comment"></i>
                            <span class="nav-item">About</span>
                        </a>
                    </li>

                    <li><a href="#">
                            <i class="fas fa-database"></i>
                            <span class="nav-item">Service</span>
                        </a>
                    </li>

                    <li><a href="contact.jsp">
                            <i class="fas fa-cog"></i>
                            <span class="nav-item">Contact</span>
                        </a>
                    </li>

                    <li><a href="endSession" class="logout">
                            <i class="fas fa-sign-out-alt"></i>
                            <span class="nav-item">Log out</span>
                        </a>
                    </li>
                </ul>
            </nav>

            <section class="main">
                <div class="main-top">
                    <h1>State Admin DashBoard  </h1>
                </div>

                <div class="users">
                    <div class="card">
                        <!--<i class="fa fa-users" aria-hidden="true"></i>--> 
                        <img src="Images/Icon/contact.jpg">
                        <h4>Add <br>Information</h4>
                        <a href="JSP/State/State_InsertData.jsp" >
                            <button>Add Info</button>
                        </a>
                    </div>

                    <div class="card">
                        <img src="Images/Icon/contact.jpg">         <!--120 Line For i-->
                        <h4>Update <br>Information</h4>
                        <a href="JSP/State/State_UpdateData.jsp">
                            <button>Update Info</button>
                        </a>
                    </div>

                    <div class="card">
                        <img src="Images/Icon/contact.jpg">         <!--120 Line For i-->
                        <h4> Delete<br>Information</h4>
                        <a href="JSP/State/State_DeleteData.jsp">
                            <button>Delete Case</button>
                        </a>
                    </div>

                    <div class="card">
                        <img src="Images/Icon/contact.jpg">                          <!--120 Line For i-->
                        <!--<i class="fas fa-"></i>-->
                        <h4> View <br>Own State</h5></h4>
                        <a href="JSP/State/State_View_OwnState.jsp">
                            <button>Own State</button>
                        </a>
                    </div>

                    <div class="card">
                        <img src="Images/Icon/contact.jpg">
                        <h4> View <br>All State</h5></h4>
                        <a href="JSP/State/State_View_AllState.jsp">
                            <button>All State</button>
                        </a>
                    </div>

                    <div class="card">
                        <img src="Images/Icon/contact.jpg">
                        <h4> Download<br> <h5>Information</h5> </h4>
                        <a href="#">
                            <button>Own State</button>
                        </a>
                    </div>



                </div>


                <section class="attendance">
                    <div class="attendance-list">
                        <h1 class="head">Currently Added Covid Cases</h1>
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
                                    while (rs.previous() && i <= 5) {
        //                                String date = rs.getString(1);
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
                    </div>
                </section>
            </section>
        </div>

    </body>
</html>