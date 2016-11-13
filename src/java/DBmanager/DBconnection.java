package DBmanager;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DBconnection
{
    /*replace URL's last portion 'userdb' with your database's name.First part will be the same in almost all conditions.*/
    private static final String DB_URL = "jdbc:mysql://localhost:3306/userdb";
    /*replace 'root' with your MySQL Server's desired user name.*/
    private static final String DB_USR = "root";
    /*replace 'password' with your MySQL Server password(of user account 'root').*/
    private static final String DB_PAS = "";
    
    /*Connection variable con is static for avoiding the creation of multiple connections for each request.*/
    private static Connection con;
    
    /*static block of a Java Class will only execute for the first invoke or call and will not create new instances
    for every function or method invoking.*/
    static
    {
        try
        {
            /*Specifing the driver class of the DBMS driver library. Its depends on the Driver Library and DBMS system inuse.*/
            Class.forName("com.mysql.jdbc.Driver");
            
            /*creating DBMS Connection and initializing it to 'con'*/
            con = DriverManager.getConnection(DB_URL, DB_USR, DB_PAS);
        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(DBconnection.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    /**
     * public Connection getConnection() returns the static java.sql.Connection which is initialized
     * on this class.
     * @return 
     * java.sql.Connection con.
     */
    public static Connection getConnection()
    {
        return con;
    }
}
