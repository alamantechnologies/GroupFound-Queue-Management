package Dao;

import DBmanager.DBconnection;
import Model.LoginModel;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class LoginDao {
    private String userName;
    private String password;
    private Connection con;
    private PreparedStatement smt;
    private ResultSet rs;

    public boolean authenticateUser(LoginModel loginBean) 
    {
        boolean result = false;
        
        userName = loginBean.getUserName();
        password = loginBean.getPassword();
        
        try
        {
            /*initializing con*/
            con = DBconnection.getConnection();
            /*Preparing SQL statement or query to be executed. for security always 
            use java.sql.PreparedStatement instead of java.sql.Statement.
            */
            smt = con.prepareStatement("SELECT password FROM userrg WHERE Email = ?");
            
            /*adding the value of userName value into the preparedStatement query.*/
            smt.setString(1, userName);
            
            /*Executing query and storing returning ResultSet Object to rs.*/
            rs = smt.executeQuery();
            
            /*the rs.next() method will returns 'true' if the ResultSet Object rs contains
            a next row and returns 'flase' when there is to row in the ResultSet Object.*/
            while(rs.next())
            {
                /*rs.getString(String columnLabel) returns the record of the current pointing row */
                if(password.equals(rs.getString("password")))
                {
                    result = true;
                }
            }
            
            smt.close();
            rs.close();
            
            
            
        } 
        catch (SQLException ex) 
        {
            Logger.getLogger(LoginDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return result;
    }
}
