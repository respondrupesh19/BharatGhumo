<%@page import="java.sql.ResultSet"%>
<%@page import="Bharatghumoaction.SignUpAction"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link href="css/bootstrap.css" type="text/css" rel="stylesheet"/>
    </head>
    <body>
         <div class="container-fluid">
           <div class="row">
             <%@include file="top.jsp" %>
           </div>
           <div>
               <%@include file="nav.jsp" %>   
           </div>
        </div>
           <%
                   HttpSession sess = request.getSession(); 
                   String email = sess.getAttribute("adminsessionid").toString();
                   
                   if(sess!=null)
                   {
                       email=sess.getAttribute("adminsessionid").toString();
                   }
                   else
                   {
                     response.sendRedirect("login.jsp");
                   }
                   String emailid=request.getParameter("email");
               %>
            
               <h1>Welcome admin <%=email%></h1>
               <div sxztyle="float: left">
                   <a href="logout.jsp">Logout</a>
               </div>
               <div style="float: right">
                <div>
                      <%@include file="addpackagebyadmin.jsp" %>   
                </div>
               </div>
                
                <div style="float: left">
                <div>
                      <%@include file="viewpackagebyadmin.jsp" %>   
                </div>
               </div>
                
                <table class="table table-dark table-bordered">
                   <tr>
                       <th>SNO</th>
                       <th>EMAIL</th>
                       <th>NAME</th>
                       <th>MOBILE</th>
                       <th>PASSWORD</th>
                       <th>DELETE</th>
                       <th>UPDATE</th>
                   </tr>
               <%
                   SignUpAction ac=new SignUpAction();
                   ResultSet rs=ac.getCustomers();
                   int i=1;
                   while(rs.next())
                   {
               %>
               <tr>
                   <td><%=i%></td>
                   <td><%=rs.getString(1)%> </td>
                   <td><%=rs.getString(2)%> </td>
                   <td><%=rs.getString(3)%> </td>
                   <td><%=rs.getString(4)%> </td>
                   <td><a href="viewpackagedeleteservlet"><img src="img/delete.png" style="width: 30px; height: 35px;"></a></td>
                   <td><a href="admin.jsp?email=<%=rs.getString(1)%>" class="btn btn-info btn-sm">Update</a></td>
               </tr>
               
               
                   
               <%
                       i++;
                        }
                   %>
               </table>
                   <%
                      rs.beforeFirst();
                      String id=null,name=null,mobile=null,password=null;
                      while(rs.next())
                      {
                         if(rs.getString(1).equals(emailid))
                         {
                            id=rs.getString(1);
                            name=rs.getString(2);
                            mobile=rs.getString(3);
                            password=rs.getString(4);
                         }
                      }
                   %>
               
               <div id="update" class="modal">
                   <div class="modal-dialog">
                       <div class="modal-content">
                           <div class="modal-header">
                               <h4>Update User</h4>
                               <button type="button" class="close" data-dismiss="modal">&times;</button>
                           </div>
                           <div class="modal-body">
                               <form method="post" action="UpdateUserServlet">
                                   <div class="form-group">
                                       <label>Email</label>
                                       <input type="email" class="form-control" value="<%=id%>" name="email" readonly=""/>
                                   </div>
                                   <div class="form-group">
                                       <label>Name</label>
                                       <input type="text" class="form-control" value="<%=name%>" name="user"/>
                                   </div>
                                   <div class="form-group">
                                       <label>Mobile</label>
                                       <input type="text" class="form-control" value="<%=mobile%>" name="mobile"/>
                                   </div>
                                   <div class="form-group">
                                       <label>Password</label>
                                       <input type="password" class="form-control" value="<%=password%>" name="pwd"/>
                                   </div>
                                   <input type="submit" value="update" class="btn btn-info">
                               </form>
                           </div>
                           <div class="modal-footer">
                               
                           </div>
                       </div>
                   </div>
               </div>
               
               
               
           <script src="js/jquery.js"></script>
        <script src="js/bootstrap.js"></script>
        <%
                   if(emailid!=null)
                   {
                       %>
        <script>
            
            $(document).ready(function()
             {
                 $("#update").modal('show');
             }
            );
            
        </script>
        <%
                   }   
          %>  
    </body>
</html>