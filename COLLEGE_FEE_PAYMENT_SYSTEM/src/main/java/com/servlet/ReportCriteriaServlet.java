package com.servlet;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class ReportCriteriaServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
    throws ServletException, IOException {

        String type = req.getParameter("type");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/collegefee","root","PAVI");

            PreparedStatement ps = null;

            if(type.equals("overdue")) {
                ps = con.prepareStatement(
                    "SELECT * FROM FeePayments WHERE Status='Overdue'");
            }
            else if(type.equals("paid")) {
                ps = con.prepareStatement(
                    "SELECT * FROM FeePayments WHERE Status='Paid'");
            }
            else if(type.equals("range")) {
                String from = req.getParameter("from");
                String to = req.getParameter("to");

                ps = con.prepareStatement(
                    "SELECT * FROM FeePayments WHERE PaymentDate BETWEEN ? AND ?");
                ps.setString(1, from);
                ps.setString(2, to);
            }

            ResultSet rs = ps.executeQuery();

            req.setAttribute("rs", rs);
            RequestDispatcher rd = req.getRequestDispatcher("report_result.jsp");
            rd.forward(req, res);

        } catch(Exception e){
            e.printStackTrace();
        }
    }
}