<html>
    <head>
        <title>JSP Page</title>
        <link href="css/bootstrap.css" type="text/css" rel="stylesheet">
    </head>
    <body>
        
        <div class="container-fluid">
           <div class="row">
             <%@include file="top.jsp" %>
           </div>
           <div> 
               <%@include file="nav.jsp" %>   
           </div>
           <div>
               <%@include file="slider.jsp" %>
           </div>
           <div>
               <%@include file="card.jsp" %>
           </div>
            <div>
               <%@include file="footer.jsp" %>
           </div>
           
        </div>
        
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.js"></script>
    </body>
</html>
