<html>
    <head>
        <title>JSP Page</title>
        <link href="css/bootstrap.css" type="text/css" rel="stylesheet"/>
    </head>
    <body>
        <%
           String email=null;
           try
           {
              HttpSession sess=request.getSession();
              if(sess!=null)
                     email=sess.getAttribute("userSessionid").toString();
           }
           catch(Exception e)
           {
               response.sendRedirect("login.jsp");
           }
        %>
        <div class="container-fluid">
            <div class="row">
             <%@include file="top.jsp" %>
           </div>
           <div>
               <%@include file="nav.jsp" %>   
           </div>
           
            <div class="row">
                
            </div>
            <div class="row">
                <div class="col-lg-3"></div>
                <div class="col-lg-6">
                    <form>
            <div class="form-group">
                <label>Email</label>
                <input type="text" class="form-control">
            </div>
            <div class="form-group">
                <label>Package Id</label>
                <input type="text" class="form-control">
            </div>
            <div class="form-group">
                <label>Package Name</label>
                <input type="text" class="form-control">
            </div>
            <div class="form-group">
                <label>Package Detail</label>
                <input type="text" class="form-control">
            </div>
            <div class="form-group">
                <label>Price</label>
                <input type="text" class="form-control">
            </div>
            <div class="form-group">
                <label>Quantity</label>
                <input type="text" class="form-control">
            </div>
            <div class="form-group">
                <label>Discount</label>
                <input type="text" class="form-control" readonly="">
            </div>
            <div class="form-group">
                <label>Total</label>
                <input type="text" class="form-control">
            </div>
       <input type="submit" class="btn btn-success">
                        
       </form>
         
                </div>
                <div class="col-lg-3"></div>
            </div>
        </div>
           <script src="js/jquery.js"></script>
        <script src="js/bootstrap.js"></script>
    </body>
</html>
