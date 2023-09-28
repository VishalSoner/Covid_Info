import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class verifyUser extends HttpServlet 
{
    private static Connection con;
    private PreparedStatement pst, pst1;

    //called while loading
    public void init() {
        try {
            con = mypkg.utility.connection();
            pst = con.prepareStatement("SELECT * FROM Super_Admin WHERE Gmail=? AND password=?;");
            pst1 = con.prepareStatement("SELECT * FROM State_Admin WHERE User_Id=? AND password=?;");
        } catch (SQLException e) {
        }
    }

    //called while unloading
    public void destroy() {
        try {
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException 
    {
        String userid = request.getParameter("userid");
        String password = request.getParameter("password");
        String usertype = request.getParameter("usertype");

//        if (userid == null || password == null) {
//            response.sendRedirect("JSP/Home/my_Error_Page.jsp");
//        }

        //step - 1 ( Create Cookies Object)
        Cookie ck1 = new Cookie("gmail", userid);
        Cookie ck2 = new Cookie("usertype", usertype);

        //Step - 2  (Specify the maximum Age of the Cookie)
        ck1.setMaxAge(60 * 60 * 24);
        ck2.setMaxAge(60 * 60 * 24);

        //Step - 3 
        response.addCookie(ck1);
        response.addCookie(ck2);

//        java.util.Date dt = new java.util.Date();
//        long val = dt.getTime();
//        java.sql.Date idate = new java.sql.Date(val);
//        System.out.println("Last Time Was : " + idate);

        PrintWriter out = response.getWriter();
        if(usertype.equalsIgnoreCase("Super-User")) 
        {
            try {
                pst.setString(1, userid);
                pst.setString(2, password);

                ResultSet rs = pst.executeQuery();
               boolean found = rs.next();

                if (found) 
                {
                    response.sendRedirect("superDashboard.jsp");
                }
                else {
                    response.sendRedirect("JSP/Home/my_Error_Page.jsp");
                }
            }
            catch (IOException | SQLException e) 
            {
                response.sendRedirect("JSP/Home/my_Error_Page.jsp");
            }
        }
        
        else if(usertype.equalsIgnoreCase("State-User")) 
        {
            try {
                pst1.setString(1, userid);
                pst1.setString(2, password);
                ResultSet rs = pst1.executeQuery();
                boolean found = rs.next();
                
                if (found) 
                {
                    String status = rs.getString("status");
                    if (status.equalsIgnoreCase("disabled")) 
                    {
                        out.println("<html><body>");
                        out.println("<h3>Profile Complition Form Show</h3>");
                        out.println("<hr>");
                        out.println("<form action=UpdateStateAdminProfile>");
                        out.println("<pre>");
//                        User_id, Password, Uname, Address, Mobile, Email, 
                        out.println("User_Id   : <input type=text name=uid />");
                        out.println("Password  : <input type=password name=pwd />");
                        out.println("User Name : <input type=text name=uname />");
                        out.println("Address   : <input type=text name=address />");
                        out.println("Mobile No.: <input type=text name=number />");
                        out.println("Email     : <input type=text name=email />");
                        out.println("<input type=submit value=Update />");
                        out.println("</pre>");
                        out.println("</form>");
                        out.println("</body></html>");
                    } 
                    else {
                        // 01
                        HttpSession session = request.getSession();
                        // 02
                        session.setAttribute("userid", userid);
                        session.setAttribute("state", rs.getString("state"));

                        response.sendRedirect("stateDashboard.jsp");
                    }
                } 
                else {
                    response.sendRedirect("JSP/Home/error_Page_Not_Found.jsp");
                }
            } catch (Exception e) {
                out.println(e);
            }
        } 
        
        else if (usertype.equalsIgnoreCase("End-User")) 
        {
            if (userid.equalsIgnoreCase("rahul") && password.equalsIgnoreCase("1234")) 
            {
                response.sendRedirect("Demo_stateDashboard.jsp");
//                response.sendRedirect("endDashboard.jsp");
            } else {
                response.sendRedirect("JSP/Home/error_Page_Not_Found.jsp");
            }
        } 
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
//9826417650
