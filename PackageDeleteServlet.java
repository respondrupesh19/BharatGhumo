package Bharatghumoservlet;

import Bharatghumoaction.PackageAction;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PackageDeleteServlet extends HttpServlet
{

    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
       String gid=request.getParameter("gid");
       int packageId=Integer.parseInt(gid);
       
       PackageAction ac=new PackageAction();
          if(ac.deletePackage(packageId));
          {
            response.sendRedirect("admin.jsp");
          }
    }

}
