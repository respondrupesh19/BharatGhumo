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
                   String email = sess.getAttribute("userSessionid").toString();
                   
                   if(sess!=null)
                   {
                       email=sess.getAttribute("userSessionid").toString();
                   }
                   else
                   {
                     response.sendRedirect("login.jsp");
                   }
               %>
            
               <h1>Welcome <%=email%></h1>
               <a href="logout.jsp">Logout</a>
               
               
             <script src="js/jquery.js"></script>
        <script src="js/bootstrap.js"></script>
    </body>
</html>
