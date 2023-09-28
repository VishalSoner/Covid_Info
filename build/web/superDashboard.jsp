
<%@page import="com.mysql.cj.xdevapi.Result"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%
    String sql = "SELECT * FROM State_admin;";

    Connection con = mypkg.utility.connection();
    PreparedStatement pst = con.prepareStatement(sql, ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);

    ResultSet rs = pst.executeQuery();
    rs.afterLast();
%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <title>Super Admin Dashboard | By Code Info</title>
        <link rel="stylesheet" href="CSS/Super/superDashboard1.css" />

        <!-- Font Awesome Cdn Link -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
    </head>

    <body>
        <div class="container">
            <nav>
                <ul>
                    <li><a href="#" class="logo">
                            <img src="Images/Logo/Home.gif">
                            <span class="nav-item">Super<br>Admin</span>
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

                    <li><a href="#">
                            <i class="fas fa-chart-bar"></i>
                            <span class="nav-item">Design</span>
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
                    <h1>Super Admin DashBoard</h1>
                </div>

                <div class="users">
                    <div class="card">
                        <img src="Images/Icon/contact.jpg">         <!--120 Line For i-->
                        <h4>Create State <br>Admin Account </h4>
                        <a href="JSP/Super/Super_State_Create_Admin_Account.jsp">
                            <button>Create Account</button>
                        </a>
                    </div>

                    <div class="card">
                        <img src="Images/Icon/contact.jpg">         <!--120 Line For i-->
                        <h4>View User<br>Account detailes </h4>
                        <a href="JSP/Super/Super_view_UserAccount.jsp">
                            <button>View User</button>
                        </a>
                    </div>

                    <div class="card">
                        <img src="Images/Icon/contact.jpg">         <!--120 Line For i-->
                        <h4>View Information<br>All States<br></h4>
                        <!--<p>Ui designer</p>-->
                        <a href="JSP/Super/Super_view_AllState.jsp">
                            <button>All States</button>
                        </a>
                    </div>

                    <div class="card">
                        <img src="Images/Icon/contact.jpg">                          <!--120 Line For i-->
                        <!--<i class="fas fa-"></i>-->
                        <h4>Remove <br>State Admin<br></h4>
                        <!--<p>Ui designer</p>-->
                        <a href="JSP/Super/Super_Remove_StateAdmin.jsp">
                            <button>Remove States</button>
                        </a>
                    </div>



                </div>


                <section class="attendance">
                    <div class="attendance-list">
                        <h1>Currently Added Admin's</h1>
                        <table class="table">
                            <thead>
                                <tr>
                                    <!--User_Id | Password | State | Uname     | Address | Mobile     | Email               | Status-->
                                    <th>ID</th>
                                    <th>User Id</th>
                                    <th>State</th>
                                    <th>User Name</th>
                                    <th>Address</th>
                                    <th>Mobile</th>
                                    <th>Email</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    int i = 1;
                                    for (int j = 1; j <= 6; j++) 
                                    {
                                        rs.previous();
                                    
                                        if (i >= 6) {
                                            break;
                                        }
                                        String s1 = rs.getString("user_id");
                                        String s2 = rs.getString("State");
                                        String s3 = rs.getString("Uname");
                                        String s4 = rs.getString("Address");
                                        String s5 = rs.getString("Mobile");
                                        String s6 = rs.getString("Email");
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