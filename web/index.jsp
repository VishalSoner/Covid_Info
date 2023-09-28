<%-- 
    Document   : Index
    Created on : 8 Apr, 2023, 4:17:41 PM
    Author     : Vishal Soner
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



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Covid Info</title>
        <link rel="stylesheet" href="CSS/Home/index1.css">
    </head>
    <body>

        <div class="main">
            <div class="navbar">
                <div class="icon">
                    <h2 class="logo">Covid Info</h2>
                </div>

                <div class="menu">
                    <ul>
                        <li><a href="#menu">HOME</a></li>
                        <li><a href="about_us.jsp" target="_blank">ABOUT</a></li>
                        <li><a href="#">SERVICE</a></li>
                        <li><a href="#">DESIGN</a></li>
                        <li><a href="#">CONTACT</a></li>
                    </ul>
                </div>
                <div class="search">
                    <form action="JSP/State/State_Search_AllState.jsp" method="get">
                        <input class="srch" type="search" name="state" placeholder="Type To text" >
                        <a href="JSP/State/State_Search_AllState.jsp"> <button class="btn">Search</button></a>
                    </form>
                </div>
            </div> 
           
              <%        int i = 1;
                int total = 0;
                int active = 0;
                int death = 0;
                int recover = 0;

                while (rs.next()) {
                    total += rs.getInt("Total_Cases");
                    death += rs.getInt("Total_Death");
                    active += rs.getInt("Total_Active");
                    recover += rs.getInt("Total_Recover");
                }
            %>
           <div class="row col-md-6 stretch-card transparent">
                    <table >
                        <tr>
                            <th class="card card-light-danger"><p class="mb-4">Total Case's</p><%= total%></th>
                            <th class="card card-tale"> <p class="mb-4">Total Active</p><%= active%></th>
                            <th class="card card-dark-blue"><p class="mb-4">Total Deaths</p><%= death%></th>
                            <th class="card card-light-blue"><p class="mb-4">Total Recovery</p><%= recover%></th>
                        </tr>
                    </table>
            </div>


            <div action="verifyUser" method="get" class="content">
                <h1>Welcome TO  <br><span> Covid Helpline  </span> <br> Center</h1>
                <p class="par"> We are a resource for individuals seeking information and assistance related to the <br> COVID-19 
                    pandemic. Our team is dedicated to providing accurate and <br> up-to-date information,
                    as well as guidance on how to stay safe <br>  and healthy during this challenging time.<br>

                    <button class="cn"><a href="about_us.jsp" >Learn More</a></button>

                <form class="form" action="verifyUser" method="get">
                    <h2>Login Here</h2>
                    <input type="text" name="userid" placeholder="Enter User Id">
                    <input type="text" name="password" placeholder="Enter Password">
                    <p class="userId" >User Type : </p><select class="userTypes" name="usertype">
                        <option>Super-User</option>
                        <option>State-User</option>
                        <option>End-User</option>
                    </select>


                    <div class="sub_reset">
                        <button class="btnn_submit " type="submit"> Login</button>
                        <button class="btnn" type="reset"> Reset</button>
                    </div>

                    <p class="link">Don't have an account<br>
                        <a href="JSP/Home/registration.jsp" target="_black">Sign up</a> here
                    </p>
                </form>
            </div>
        </div>
    </div>
</div>
<!--<script src="https://unpkg.com/ionicons@5.4.0/dist/ionicons.js"></script>-->
</body>
</html>
