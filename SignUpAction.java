package Bharatghumoaction;

import Bharatghumobean.SignUpBean;
import dbconnection.BharatGhumoDBConnect;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class SignUpAction
{
    static Connection con=BharatGhumoDBConnect.getBharatGhumoDBConnection();
    public boolean signUpRegister(SignUpBean data)
    {
        
      boolean b=false;
      try
      {
         
         Statement smt=con.createStatement();
         int i=smt.executeUpdate("insert into signup values('"+data.getEmail()+"','"+data.getUser()+"','"+data.getMobile()+"','"+data.getPassword()+"')");
         if(i>0)
         
           b=true;
         
         else
         
           b=false;
         
      }
      catch(Exception e)
      {
      
      }
      return b;
    }
    
    public ResultSet getCustomers()
    {
        ResultSet rs=null;
        try 
        {
           Statement smt=con.createStatement();
           rs=smt.executeQuery("select * from signup ");
        }
        catch (Exception e) 
        {
            
        }
        return rs;
    }
}
