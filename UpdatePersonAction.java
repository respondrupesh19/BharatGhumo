
package Bharatghumoaction;

import Bharatghumobean.SignUpBean;
import dbconnection.BharatGhumoDBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;

public class UpdatePersonAction
{
  public boolean updateUser(SignUpBean data) 
  {
      boolean b=false;
      try 
      {
             Connection con=BharatGhumoDBConnect.getBharatGhumoDBConnection();
             PreparedStatement ps=con.prepareStatement("update signup set name=?,mobile=?,password=? where email=?");
             ps.setString(1, data.getUser());
             ps.setString(2, data.getMobile());
             ps.setString(3, data.getPassword());
             ps.setString(4, data.getEmail());
             int i=ps.executeUpdate();
             if(i>0)
             {
                 b=true;
             }
      } 
      catch (Exception e) 
      {
          
      }
      return b;
  }
}
