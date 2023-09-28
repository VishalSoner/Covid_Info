package Super;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Vishal Soner
 */
public class Super_Remove_StateAdmin extends HttpServlet {

    private static Connection con;
    private PreparedStatement pst;

    //called while loading
    public void init() {
        try {
            con = mypkg.utility.connection();

            String s1 = "DELETE FROM State_admin WHERE User_id = ? AND State=?";
            pst = con.prepareStatement(s1);
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
            throws ServletException, IOException {
        String userid = request.getParameter("userid");
        String state = request.getParameter("state");

        PrintWriter out = response.getWriter();
        out.print("ID : " + userid);
        out.print("State : " + state);
        try {
            pst.setString(1, userid);
            pst.setString(2, state);
            int count = pst.executeUpdate();
            out.println("<html><body>");
            out.println("<h2>Account Successfully Deleted</h2>");
            out.println("<a href=superDashboard.jsp>Go to Login Page</a>");
            out.println("</body></html>");
        } catch (SQLException e) {
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
