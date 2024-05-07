package Bharatghumoservlet;

import Bharatghumoaction.PackageAction;
import Bharatghumobean.PackageBean;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PackageAddServlet extends HttpServlet
{

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
       String gid=request.getParameter("gid");
       String gname=request.getParameter("gname");
       String gdetail=request.getParameter("gdetail"); 
       String gprice=request.getParameter("gprice");
       String gquantity=request.getParameter("gquantity");  
       
       int packageId=Integer.parseInt(gid);
       int packageprice=Integer.parseInt(gprice); 
       int packagequantity=Integer.parseInt(gquantity);
       
       PackageBean data=new PackageBean();
       data.setGid(packageId);
       data.setGname(gname);
       data.setGdetail(gdetail);
       data.setGprice(packageprice);
       data.setGsellquantity(packagequantity);
       
        PackageAction ac=new PackageAction();
        if(ac.addPackage(data))
        {
          response.sendRedirect("admin.jsp?msg=Package added successfully");
        }
    }

}
