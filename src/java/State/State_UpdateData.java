package State;

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
import javax.servlet.http.HttpSession;

/**
 *
 * @author Lenovo
 */
public class State_UpdateData extends HttpServlet {

    private static Connection con;
    private PreparedStatement pst;

    //called while loading
    public void init() {
        try {
            con = mypkg.utility.connection();

            String s2 = "UPDATE Covid_info SET Total_Cases=?, Total_Active=?, Total_Death=?, Total_Recover=?  WHERE Data_Date=? AND State=? AND User_Id=?";
            pst = con.prepareStatement(s2);

        } catch (SQLException e){
            e.printStackTrace();
        }
    }

    //called while unloading
    @Override
    public void destroy() {
        try {
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException 
    {
        //01 CREATE Object
        HttpSession session = request.getSession();
        //02 Get Data
        String state = (String) session.getAttribute("state");
        String user_id = (String) session.getAttribute("userid");

        String date = request.getParameter("date");
        String total = request.getParameter("total");
        String active = request.getParameter("active");
        String death = request.getParameter("death");
        String recovery = request.getParameter("recovery");

        PrintWriter out = response.getWriter();

//      "UPDATE Covid_info SET Total_Cases=?, Total_Active=?, Total_Death=?, Total_Recover=?  WHERE Data_Date=? AND State=? AND User_Id=CHUser";

        try {
            pst.setString(1, total);
            pst.setString(2, active);
            pst.setString(3, death);
            pst.setString(4, recovery);
            pst.setString(5, date);
            pst.setString(6, state);
            pst.setString(7, user_id);
            
            pst.executeUpdate();
            
//            out.print("Data Update Sucessfully");
            response.sendRedirect("stateDashboard.jsp");

        }catch (Exception e) {
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
