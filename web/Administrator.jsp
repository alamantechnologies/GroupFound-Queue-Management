

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="DBmanager.DBconnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>GroupFound Queue Management</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="Stylesheet.css">

    </head>
    <body class="adbody">
        <div class="container">
            <div class="jumbotron img-responsive" style="background-image: url('img/bk12.jpg');">
                <h1 class="text-center post-tittle"><span style="color: black;">Our</span> Products</h1>
                <hr>
            </div>
            <h1 class="text-center" style="margin-top: 100px;">View <span class="spn">Products</span> details</h1>
            <hr class="tittle-line">
            <div class="form2">
                <form>
                    <div class="form-group " >

                        <label for="inputProductCode">Product Code</label>
                        <input type="text" name="Pcode" class="form-control">
                    </div>
                    <div class="form-group " >

                        <label for="inputProductCode">Product Code</label>
                        <input type="text" name="Pcode" class="form-control">
                    </div>
                    <label for="inputList">Product Type</label>

                    <select class="form-control input-lg" >
                        <option>select</option>
                        <%
                            int i = 1;
                            Connection con;
                            con = DBconnection.getConnection();
                            PreparedStatement psmt;
                            ResultSet rs;

                            psmt = con.prepareStatement("SELECT producttype FROM productDetails");

                            rs = psmt.executeQuery();

                            while (rs.next()) {
                        %>
                        <option><%=rs.getString("productType")%></option>
                        <%
                            }
                        %>

                    </select>

                </form>

                <button class="btn-success ">send</button>
                <button class="btn-success ">edit</button>
                <button class="btn-success ">remove</button>

                <button class="btn-success ">reset</button>
            </div>
        </div>
        <hr>


        <div class="container">
            <h1 class="text-center">Service <span class="spn">Desk</span> details</h1>
            <hr class="tittle-line">
            <form id="form3">
                <div class="form-group " >

                    <label for="inputProductCode">Product Code</label>
                    <input type="text" name="Pcode" class="form-control">
                </div>
                <div class="form-group " >

                    <label for="inputProductCode">Product Code</label>
                    <input type="text" name="Pcode" class="form-control">
                </div>
                <label for="inputList">Product Type</label>

                <select class="form-control input-lg" >
                    <option>select</option>
                    <option>fixed deposit</option>
                    <option>current </option>
                    <option>saving</option>
                    <option>Credit card</option>
                    
                </select>

                <div class="form-group " >

                    <label for="inputProductCode">Product Code</label>
                    <input type="text" name="Pcode" class="form-control">
                </div>


                <button class="btn-success ">send</button>
                <button class="btn-success ">edit</button>
                <button class="btn-success ">remove</button>

                <button class="btn-success ">reset</button>
        </div>
    </form>
</div>


</div>

<hr style="margin-top: 50px;">
<div class="container">

    <h1 class="post-tittle text-center ">Customer <span class="spn"> Details </span></h1>
    <hr class="tittle-line">
    <div class="Details text-center">

        <div class="list-group ">
            <a href="#" class="list-group-item ">
                Cras justo odio
            </a>
            <a href="#" class="list-group-item list-group-item-action">Dapibus ac facilisis in</a>
            <a href="#" class="list-group-item list-group-item-action">Morbi leo risus</a>
            <a href="#" class="list-group-item list-group-item-action">Porta ac consectetur ac</a>
            <a href="#" class="list-group-item list-group-item-action">Vestibulum at eros</a>
        </div>
    </div>

</div>

<div class="container">


    <table class="table table-bordered" >
        <thead>
            <tr>
                <th>CustomerID</th>
                <th>CoupunNumber</th>
                <th>name</th>
                <th>EmailID</th>
                <th>ContactNumbe</th>
                <th>ProductType</th>
            </tr>
        </thead>
        <tbody>
            <%
                    psmt = con.prepareStatement("SELECT * FROM customerdetails");
                    
                    rs = psmt.executeQuery();
                    
                    while(rs.next())
                    {
                        %>
                        <tr>
                           
                            <td><%=rs.getString("CustomerID") %></td>
                            <td><%=rs.getString("CoupunNumber") %></td>
                            <td><%=rs.getString("name") %></td>
                            <td><%=rs.getString("EmailID") %></td>
                            <td><%=rs.getString("ContactNumber") %></td>
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
<div class="container">
    <h1 class="text-center">Ticket <span class="spn">Details </span></h1>
    <hr class="tittle-line">
    <form id="form4">
        <div class="form-group " >

            <label for="inputProductCode">Product Code</label>

            <input type="text" name="Pcode" class="form-control">

            <label for="inputList">Product Type</label>

            <select class="form-control input-lg" >
                <option>select</option>
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>1</option>
                <option>2</option>
                <option>3</option>

            </select>

            <div class="form-group " >

                <label for="inputProductCode">Product Code</label>
                <input type="text" name="Pcode" class="form-control">
            </div>
            <div class="col-md-3"><button class="btn-success" style="width:70px" >send</button></div>
            <div class="col-md-3" style="margin-left: 10px;"><button class="btn-success " style="width: 70px;">edit</button></div>
        </div>
    </form>


</div>

<hr>
<footer style="margin-top: 100px;">

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
