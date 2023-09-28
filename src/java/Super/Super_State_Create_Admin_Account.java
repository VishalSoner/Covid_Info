package Super;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Vishal Soner
 */
public class Super_State_Create_Admin_Account extends HttpServlet {

    private static Connection con;
    private PreparedStatement pst;

    //called while loading
    public void init() {
        try {
            con = mypkg.utility.connection();

            String s1 = "INSERT INTO State_Admin(User_Id, Password, state, UName, Address, Mobile, EMail, status) VALUES(?, ?, ?, null, null, null, null, 'disabled')";
            pst = con.prepareStatement(s1);
        } catch (SQLException e) {
        }
    }

    //called while unloading
    public void destroy() {
        try {
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String userid = request.getParameter("userid");
        String password = request.getParameter("password");
        String state = request.getParameter("state");

        PrintWriter out = response.getWriter();

        try {
            pst.setString(1, userid);
            pst.setString(2, password);
            pst.setString(3, state);
            pst.executeUpdate();

            out.println("<html><body>");
            out.println("<h2>Account Successfully Created</h2>");
            out.println("<a href=superDashboard.jsp>Go to Login Page</a>");
            out.println("</body></html>");
        }
        catch (SQLException e)
        {
            out.println(e);
            
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
