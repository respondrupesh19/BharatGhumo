 <%@page import="Bharatghumoaction.PackageAction"%>
<%@page import="java.sql.ResultSet"%>
<a data-toggle="modal" data-target="#viewpackagebyadmin">View Package</a>
               <div id="viewpackagebyadmin" class="modal fade bd-example-modal-x1" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">
                   <div class="modal-dialog modal-xl"> 
                       <div class="modal-content">
                           <div class="modal-header">
                               <h1 class="modal-title">View Package</h1>
                               <button class="close" type="button" data-dismiss="modal">&times;</button>
                           </div>
                           <div class="modal-body">
                               <table class="table table-primary table-bordered">
                                   <thead>
                                          <th>Id</th>
                                          <th>Name</th>
                                          <th>Detail</th>
                                          <th>Price</th>
                                          <th>Quantity</th>
                                          <th>Sell Quantity</th>
                                          <th>Payment Status</th>
                                          <th>Delete</th>
                                   </thead>
                                   <tbody>
                                       <%
                                          PackageAction pac=new PackageAction();
                                          ResultSet rs3=pac.getPackage();
                                          while(rs3.next())
                                          {
                                       %>
                                       <tr>
                                           <td><%=rs3.getInt(1)%></td>
                                           <td><%=rs3.getString(2)%></td>
                                           <td><%=rs3.getString(3)%></td>
                                           <td><%=rs3.getInt(4)%></td>
                                           <td><%=rs3.getInt(5)%></td>
                                           <td><%=rs3.getInt(6)%></td>
                                           <td><%=rs3.getString(7)%></td>
                                           <td><a href="PackageDeleteServlet?gid=<%=rs3.getInt(1)%>"><img src="img/delete.png" style="width: 30px; height: 35px;" onclick="return confirm('Are you sure want to delete?')"></a></td>
                                       </tr>
                                       <%
                                          }
                                       %>
                                   </tbody>
                               </table>
                           </div>
                           <div class="modal-footer"></div>  
                       </div>
                   </div>
                   
               </div>
