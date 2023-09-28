package State;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Vishal Soner
 */
public class State_InsertData extends HttpServlet 
{
    private static Connection con;
    private PreparedStatement pst;

    //called while loading
    public void init() {
        try {
            con = mypkg.utility.connection();

            String s1 = "Insert Into Covid_info(Data_Date, state, Total_Cases, Total_Death, Total_Active, Total_Recover ,User_Id) VALUES(now(), ?, ?, ?, ?, ?, ?);";
            pst = con.prepareStatement(s1);
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
    }

    //called while unloading
    @Override
    public void destroy() {
        try {
            con.close();
        } catch (SQLException e) {
        }
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException 
    {
        PrintWriter out = response.getWriter();
        //01 CREATE Object
        HttpSession session = request.getSession();
        //02 Get Data
        String state = (String) session.getAttribute("state");
        String user_id = (String) session.getAttribute("userid");

        String total = request.getParameter("total");
        String active = request.getParameter("active");
        String death = request.getParameter("death");
        String recovery = request.getParameter("recovery");
        
        try {
            pst.setString(1, state);
            pst.setString(2, total);
            pst.setString(3, active);
            pst.setString(4, death);
            pst.setString(5, recovery);
            pst.setString(6, user_id);
            
            pst.executeUpdate();
            response.sendRedirect("stateDashboard.jsp");
        } catch (Exception e) {
            e.printStackTrace();
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
