package Bharatghumoaction;

import Bharatghumobean.PackageBean;
import dbconnection.BharatGhumoDBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class PackageAction
{
    static  Connection con=BharatGhumoDBConnect.getBharatGhumoDBConnection();
    public boolean addPackage(PackageBean data)
    {
        boolean b=false;
        try 
        {
          
           PreparedStatement ps=con.prepareStatement("insert into ghumo(gid,gname,gdetail,gprice,gquantity) values(?,?,?,?,?)");
           ps.setInt(1,data.getGid());
           ps.setString(2, data.getGname());
           ps.setString(3,data.getGdetail());
           ps.setInt(4, data.getGprice());
           ps.setInt(5, data.getGquantity());
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
     public ResultSet getPackage()
     {
         ResultSet rs=null;
         try 
         {
             Statement smt=con.createStatement();
             rs=smt.executeQuery("select*from ghumo;");
         }
         catch (Exception e) 
         {
             
         }
     return rs;
     }
     public boolean deletePackage(int gid)
     {
       boolean b=false;
         try 
         {
             Statement smt=con.createStatement();
             int i=smt.executeUpdate("delete from ghumo where gid='"+gid+"'");
             if(i>0)
                    b=true;
         }
         catch (Exception e) 
         {
             
         }
         return b;
     }
    
}
