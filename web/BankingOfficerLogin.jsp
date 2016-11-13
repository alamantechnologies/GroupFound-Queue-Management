
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    
    <head>
    
                <title>GroupFound Queue Management</title>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
                <link rel="stylesheet" type="text/css" href="Stylesheet.css">

    </head>
    
    
  <body class="bodyAdd">
       
        
        
        <div class="container">
	    <h1 class="text-center"  style="color:white;font-size: 70px">Banking Officer</h1>
          
                    <hr class="small"></h1>

                        <div class="icon">
                        <div class="col-md-5"></div>
                        <div class="col-md-2 img-responsive"><img src="img/administrator.png" class="img-responsive"></div>
                        <div class="col-md-4"></div>
                        </div>

         </div>
            
       
      
      <div class="formDetails">
          <form id="form1" action="LoginServlet" >
     
                        	<div class="form-group">
                                <label for="inputEmail">Email</label>
                                <input type="email" name="Email" class="form-control" id="inputEmail" placeholder="Email">
                                </div>
    
                                <div class="form-group">
                                <label for="inputPassword">Password</label>
                                <input type="password" name="pwd" class="form-control" id="inputPassword" placeholder="Password">
                                </div>
    
                                <div class="checkbox">
                        	<label><input type="checkbox"> Remember me</label>
                                <label><a href="#">forgot password</label>
                                </div>
                                 </form>

    
                                 <button type="submit" class="btn btn-primary" form="form1">Login</button>
                                 <button type="submit" class="btn btn-primary" form="form1">Sign Up</button>
        
        
        
        
        
        
        
        <script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
    </body>
</html>
