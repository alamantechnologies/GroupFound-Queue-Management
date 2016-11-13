<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="DBmanager.DBconnection"%>
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



    <body class="cbody">
        <div class="container-fluid img-responsive" id="cbk" >

            <h1 class="text-center post-tittle " style="font-size: 100px;color: white;">Our Services</h1>

            "></span>

    </div>


    <h1 class="text-center" style="color: #08d698;">Products Details</h1>

    <hr class="tittle-line" style="margin-left: 490px; width: 150px;">

    <div  class="container">
        <table class="table table-bordered" >

            <thead>
                <tr>
                    <th>#</th>
                    <th>Product Code</th>
                    <th>Product Description</th>
                    <th>Product Type</th>
                </tr>
            </thead>
            <tbody>
                <%
                    int i = 1;
                    Connection con;
                    con = DBconnection.getConnection();
                    PreparedStatement psmt;
                    ResultSet rs;
                    
                    psmt = con.prepareStatement("SELECT * FROM productDetails");
                    
                    rs = psmt.executeQuery();
                    
                    while(rs.next())
                    {
                        %>
                        <tr>
                            <th scope="row"><%=i%></th>
                            <td><%=rs.getString("ProductCode") %></td>
                            <td><%=rs.getString("ProductDiscription") %></td>
                            <td><%=rs.getString("ProductType") %></td>
                        </tr>
                        <%
                            i++;
                    }
                    %>
            </tbody>
        </table>
    </div>
</div>
<hr>

<h1 class="text-center" style="color: #08d698;">Branch <span class="spn">Details</span></h1>
<hr class="tittle-line">
<div class="container">
    <table class="table table-bordered" >
        <thead>
            <tr>
                <th>Branch code</th>
                <th>Branch Name</th>
                <th>Branch location</th>
                <th>No:of Service Desk</th>
            </tr>
        </thead>
        <tbody>
            
             <%
                    
                    
                    psmt = con.prepareStatement("SELECT * FROM branchdetails");
                    
                    rs = psmt.executeQuery();
                    
                    while(rs.next())
                    {
                        %>
                        <tr>
                          
                            <td><%=rs.getString("BranchCode") %></td>
                            <td><%=rs.getString("BranchName") %></td>
                            <td><%=rs.getString("BranchLocation") %></td>
                            <td><%=rs.getString("serviceDesk") %></td>
                        </tr>
                        <%
                            i++;
                    }
                    %>
                
        </tbody>
    </table>

</div>
<hr>
<h1 class="text-center" style="color: #08d698;">Service <span class="spn">Desk</span> Details</h1>
<hr class="tittle-line">
<div class="container">
    <table class="table table-bordered" >
        <thead>
            <tr>
                <th>Service Desk Code</th>
                <th>Branch Code</th>
                <th>Is active</th>
                <th>Bank Officer Code</th>
            </tr>
        </thead>

        <tbody>
              <%
                    
                    
                    psmt = con.prepareStatement("SELECT * FROM servicedeskdetails");
                    
                    rs = psmt.executeQuery();
                    
                    while(rs.next())
                    {
                        %>
                        <tr>
                            
                            <td><%=rs.getString("ServiceDeskCode") %></td>
                            <td><%=rs.getString("BrancjCode") %></td>
                            <td><%=rs.getString("IsActive") %></td>
                            <td><%=rs.getString("BankingOfficerCode") %></td>
                        </tr>
                        <%
                            i++;
                    }
                    %>
        </tbody>
    </table>
</div>
<hr>

<h1 class="text-center" style="color: #08d698;" >Costumer <span class="spn">Details</span></h1>
<hr class="tittle-line">







<div class="form2" style="margin-left:490px;">
       
              <form  action="ActionServlet" method="post" >
       
                  <div class="form-group">


                <label for="customerID">CustomerID</label>
                
                <input type="text" class="form-control" name="CostumerID" placeholder="CustomerID" required>
               
                  </div>


        <div class="form-group">


            <label for="inputName">CoupunNumber</label>
            <input type="text" class="form-control" name="coupunno" placeholder="coupunNumber" required>
        </div>
         
         
         
         
        <div class="form-group">


            <label for="inputName">Name</label>
            <input type="text" class="form-control" name="name" placeholder="name" required>
        </div>


        <div class="form-group">

            <label for="inputEmail">Email</label>
            <input type="text" class="form-control" name="email" placeholder="Email">


        </div>


        <div class="form-group">

            <label for="inputPhoneNumber">Phone number</label>
            <input type="text" class="form-control" name="phone" placeholder="Phone number" required>


        </div>


        <div class="form-group">

            <label for="inputList">Product Type</label>

            <select class="form-control input-lg" name="producttype"  required>
                <option >select</option>
                <option>Current</option>
                <option>fixed</option>
                <option>creadit</option>
                <option>savings</option>
               

            </select>


        </div>

        <div class="form-group">


            <input type="submit" class="form-control" name="submiit">

    
        </div>
    </form>
     
 </div>

<hr>
<h1 class="text-center"  style="color: #08d698;">Coupon <span class="spn"> Details </span></h1>
<hr class="tittle-line">
<div class="container">
    <div class="CouponTable">

        <table class="table table-bordered" >
            <thead>
                <tr>
                    <th>Service Desk Code</th>
                    <th>Branch Code</th>
                </tr>

            <tbody>
                <%
                    
                    
                    psmt = con.prepareStatement("SELECT * FROM coupondetails");
                    
                    rs = psmt.executeQuery();
                    
                    while(rs.next())
                    {
                        %>
                        <tr>
                            
                            <td><%=rs.getString("CouponId") %></td>
                            <td><%=rs.getString("CouponNumber") %></td>
                           
                        </tr>
                        <%
                            i++;
                    }
                    %>
            </tbody>
            </thead>
        </table>

    </div>
</div>   

<hr>


</div>

<footer>

    <div class="container">

        <div class="col-lg-12">

            <p  class="copyright text-muted small text-center">Copyright &copy; Your Company 2014. All Rights Reserved</p>
        </div>

    </div>
</footer>









<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>
</html>

