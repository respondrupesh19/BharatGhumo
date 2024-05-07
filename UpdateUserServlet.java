package Bharatghumoservlet;

import Bharatghumoaction.UpdatePersonAction;
import Bharatghumobean.SignUpBean;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UpdateUserServlet extends HttpServlet 
{

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
       String email=request.getParameter("email");
       String user=request.getParameter("user");
       String mobile=request.getParameter("mobile");
       String pwd=request.getParameter("pwd");
       
       SignUpBean data=new SignUpBean();
       data.setEmail(email);
       data.setUser(user);
       data.setMobile(mobile);
       data.setPassword(pwd);
       
       UpdatePersonAction ac=new UpdatePersonAction();
       boolean b=ac.updateUser(data);
       if(b==true)
       {
         response.sendRedirect("admin.jsp");
       }
    }

    
}
