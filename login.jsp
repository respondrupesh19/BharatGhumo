<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
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
           <div class="row mt-3">
               <div class="col-lg-4"></div>
                <div class="col-lg-4">
                    <form method="post" action="LoginServlet">
                        <fieldset class="border p-3">
                            <legend class="w-auto">Login</legend>
                        <div class="form-group" style="background-color: success">
                            <input type="radio" name="person" value="user"/>&nbsp;USER &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="radio" name="person" value="admin"/>ADMIN
                        </div>
                        <div class="form-group">
                            <label>USER</label>
                            <input type="text" name="user" class="form-control"/>
                            <label>PASSWORD</label>
                            <input type="password" name="password" class="form-control"/><br>
                            <input type="submit" value="Login" class="btn btn-success"/>
                        </div>
                             <a href="#">Forget Password</a>
                             <a href="signup.jsp" style="float: right">Signup</a>
                    </fieldset>
                    </form>
                   
                </div>
                 <div class="col-lg-4"></div>
           </div>
            
            
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.js"></script>
    </body>
</html>
