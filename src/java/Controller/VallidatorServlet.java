/*
 * The MIT License
 *
 * Copyright 2016 Mypc.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */
package Controller;

import DBmanager.DBconnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Mypc
 */
public class VallidatorServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */

 /*common dbms connection variables*/
            Connection con;
            PreparedStatement psmt;
            ResultSet rs;

            /*dont close connection (con.close()) because we are using a single connection
            all over the applicatoin. check class DBconnection for more details.*/
            con = DBconnection.getConnection();

            /*suppose 'itemName' is the name of input field on the JSP*/
            String itmName = request.getParameter("itemName");

            try {
                /*suppose we have a table item with only itemName varchar()*/
 /*code for inserting value to db table*/
                psmt = con.prepareStatement("INSERT INTO item VALUES(?)");

                /*'1' is the indes of '?' mark and second parameter is the values of '?' place.*/
                psmt.setString(1, itmName);

                /*here we don't want ResultSet*/
                int updatedRowCount = psmt.executeUpdate();

                if (updatedRowCount > 0) {
                    //success
                } else {
                    //fail or no mathc for where condition in the query(if exist).
                }

            } catch (SQLException ex) {
                Logger.getLogger(VallidatorServlet.class.getName()).log(Level.SEVERE, null, ex);
            }

            /*code for delete*/
            itmName = request.getParameter("itemName");
            try{
                psmt = con.prepareStatement("DELETE FROM item WHERE itemName=?");
            
                psmt.setString(1, itmName);

                int updateRowCount = psmt.executeUpdate();
                if (updateRowCount > 0) {
                    //success
                } else {
                    //fail or no mathc for where condition in the query(if exist).
                }
            } catch (SQLException ex) {
                Logger.getLogger(VallidatorServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
            
            /*code for update*/
            itmName = request.getParameter("itemName");
            String itmCode = request.getParameter("itemCode");
            try{
                psmt = con.prepareStatement(" UPDATE item SET itemName=? where itemCode=?");
                /*suppose item table has itemName varchar and itemCode integer or any other numeric (not float)*/
               
                
                psmt.setString(1, itmName);
                psmt.setInt(2, Integer.parseInt(itmCode));
                
                int updateRowCount = psmt.executeUpdate();
                if (updateRowCount > 0) {
                    //success
                } else {
                    //fail or no mathc for where condition in the query(if exist).
                }
            } catch (SQLException ex) {
                Logger.getLogger(VallidatorServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
