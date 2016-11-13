

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
            <h1 class="text-center" style="color:white;font-size: 70px">Administrator</h1>
          
                    <hr class="small">

                        <div class="icon">
                        <div class="col-md-5"></div>
                        <div class="col-md-2 img-responsive"><img src="img/administrator.png" class="img-responsive"></div>
                        <div class="col-md-4"></div>
                        </div>

         </div>
            
       
      
     
      <div class="formDetails">
          
                         <form id="form1" action="LoginServlet"  >
              
<!--                                <label for="inputList">User Type</label>

                                <select class="form-control input-lg" name="producttype" name="type" required>
                                 
                                       <option >Admin</option>
                                   
                                       <option>officer</option>
                                   </select>
                                -->
              
                        	<div class="form-group">
                                <label for="inputUserName">UserName</label>
                                <input  name="UserName" class="form-control" id="inputUserName" placeholder="UserName" required>
                                </div>
    
                                <div class="form-group">
                                <label for="inputPassword">Password</label>
                                <input type="password" name="pwd" class="form-control" id="inputPassword" placeholder="Password">
                                </div>
                         </form>
                                <div class="checkbox">
                        	<label><input type="checkbox"> Remember me</label>
                                <label><a href="#">forgot password</label>
                                </div>
                         

                                   
                                 <button type="submit" class="btn btn-primary" form="form1">Login</button>
                                 <button type="submit" class="btn btn-primary" form="form1">Sign Up</button>
                                        
      
        
        
        
        
        
        
        <script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
    </body>
</html>
