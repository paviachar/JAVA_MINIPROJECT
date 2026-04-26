package com.servlet;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class ReportServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
    throws ServletException, IOException {

        try {
            String from = req.getParameter("from");
            String to = req.getParameter("to");

            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/collegefee","root","PAVI");

            PreparedStatement ps = con.prepareStatement(
                "SELECT * FROM FeePayments WHERE PaymentDate BETWEEN ? AND ?");
            ps.setString(1, from);
            ps.setString(2, to);

            ResultSet rs = ps.executeQuery();
            req.setAttribute("rs", rs);

            RequestDispatcher rd = req.getRequestDispatcher("report_result.jsp");
            rd.forward(req, res);

        } catch(Exception e){ e.printStackTrace(); }
    }
}