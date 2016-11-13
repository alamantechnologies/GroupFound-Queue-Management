
package DBmanager;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import java.sql.DriverManager;
import static java.util.jar.Pack200.Packer.PASS;


public class DBconnection
{
    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
    static final String DB_URL = "jdbc:mysql://localhost:3306/userdb";
    
      
public static Connection createConnection()
 {
 Connection con = null;
 String username = "root"; //username of database 
 String password = ""; //password

try
 {
 try
 {
 Class.forName(JDBC_DRIVER);// differs from DB server to server
 }
 catch (ClassNotFoundException e)
 {
 e.printStackTrace();
 }

con = (Connection) DriverManager.getConnection(DB_URL, username, password);

}
 catch (Exception e)
 {
 e.printStackTrace();
 }

return con;
 }
 
}
