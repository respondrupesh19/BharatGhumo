<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Signup</title>
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
           <div class="row">
               <div class="col-lg-3"></div>
               <div class="col-lg-6">
                   <form method="post" action="signUpServlet">
                       <fieldset class="border p-3">
                           <legend class="w-auto">Sign Up</legend>
                       <div class="form-group">
                           <label>Name</label>
                           <input type="text" name="user" class="form-control">
                       </div>
                        <div class="form-group">
                           <label>Mobile</label>
                           <input type="text" name="mobile" class="form-control">
                       </div>
                       
                        <div class="form-group">
                           <label>Email</label>
                           <input type="email" name="email" class="form-control">
                       </div>
                        <div class="form-group">
                           <label>Password</label>
                           <input type="password" name="password" class="form-control">
                       </div>
                       <div class="form-group">
                           <label>Confirm Password</label>
                           <input type="password" name="cpassword" class="form-control">
                       </div>
                       <div class="form-group">
                           <input type="submit" value="Signup" class="btn btn-success">
                           
                            <input type="reset" value="Reset" class="btn btn-danger" style="float:right">
                       </div>
                       </fieldset>
                   </form>
               </div>
               <div class="col-lg-3"></div>
           </div>
        </div>
            
            
             <script src="js/jquery.js"></script>
        <script src="js/bootstrap.js"></script>
    </body>
</html>
