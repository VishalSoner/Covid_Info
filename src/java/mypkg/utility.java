package mypkg;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class utility
{
    static Connection con;
    
    public static Connection connection()
    {
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Covid","root","root");
        }
        catch(ClassNotFoundException | SQLException e)
        {}
        return con;
    }
}
