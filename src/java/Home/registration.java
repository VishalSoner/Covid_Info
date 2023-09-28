package Home;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class registration extends HttpServlet 
{
    private static Connection con;
    private PreparedStatement pst;

    @Override
    public void init() {
        try {
            con = mypkg.utility.connection();
            
            //INSERT INTO End_User(Name, DOB, EMail, Phone, City, Pin_Code, Address, Gender, Password, Today, Adhar_Card)
            //VALUES('A', now(), 'vishalsoner7987@gmail.com', 7987824608, 'Harda', 461441, '72, Nand Vihar Colony Rau', 'on', 'india', now(), 7987824608);

            String s1 = "INSERT INTO End_User(Name, DOB, EMail, Phone, City, Pin_Code, Address, Gender, Password, Today, Adhar_Card)VALUES(?,?,?,?,?,?,?,?,?, now(),?);";
            pst = con.prepareStatement(s1);
        } 
        catch (SQLException e){}
    }

    //called while unloading
    @Override
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
//      Name, DOB, EMail, Phone, City, Pin_Code, Address, Gender, Pasword...
        
        String name = request.getParameter("name");
        String dob = request.getParameter("dob");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String city = request.getParameter("city");
        String pin_code = request.getParameter("pin_code");
        String address = request.getParameter("address");
        String gender = request.getParameter("gender");
        String password = request.getParameter("password");
        String adhar_card = request.getParameter("adhar_card");

      PrintWriter out = response.getWriter();
     
//      Name, DOB, EMail, Phone, City, Pin_Code, Address, Gender, Password...

        try 
        {
            pst.setString(1, name);
            pst.setString(2, dob);
            pst.setString(3, email);
            pst.setString(4, phone);
            pst.setString(5, city);
            pst.setString(6, pin_code);
            pst.setString(7, address);
            pst.setString(8, gender);
            pst.setString(9, password);
            pst.setString(10, adhar_card);

            pst.executeUpdate();
            out.println("Data Insert Completed");
            response.sendRedirect("JSP/Home/registration_completed.jsp");
        }
        catch (SQLException e)
        {
            response.sendRedirect("JSP/Home/error_Page_Not_Found.jsp");
        }
        catch (Exception e)
        {
            response.sendRedirect("JSP/Home/error_Page_Not_Found.jsp");
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