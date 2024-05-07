package dbconnection;

import java.sql.Connection;
import java.sql.DriverManager;




public class BharatGhumoDBConnect 
{
   public static final String url="jdbc:mysql://localhost:3306/bharatghumo"; 
   public static final String user="root"; 
   public static final String password="root"; 
   public static Connection con=null;
   static
   {
       try
      {
          Class.forName("com.mysql.jdbc.Driver");
      }
      catch(Exception e)
      {
      
      }
   }
    public static Connection getBharatGhumoDBConnection()
    {
      try
      {
          con=DriverManager.getConnection(url, user, password);
      }
      catch(Exception e)
      {
      
      }
      return con;
    }
}
