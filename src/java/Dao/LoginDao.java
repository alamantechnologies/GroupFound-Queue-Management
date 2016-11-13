
package Dao;

import DBmanager.DBconnection;
import Model.LoginModel;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDao 
{
    
  public String authenticateUser(LoginModel loginBean)
 {
    String userName = loginBean.getUserName(); 
    String password = loginBean.getPassword(); 
    
       Connection con = null;
       Statement statement = null;
       ResultSet resultSet = null;
        String userNameDB = "";
       String passwordDB = "";
     
     try
 {
                con = DBconnection.createConnection();
                statement = (Statement) con.createStatement(); 
                resultSet = statement.executeQuery("select userName,password from userrg"); 

               while(resultSet.next()) 
                {
                 userNameDB = resultSet.getString("userName"); 
                 passwordDB = resultSet.getString("password");

                  if(userName.equals(userNameDB) && password.equals(passwordDB))
                  {
                     return "SUCCESS"; 
                  }
                }
 }
                catch(SQLException e)
                {
                e.printStackTrace();
                }
                return "Invalid user credentials";
                }
 }  
    
    
    
    
    
    

