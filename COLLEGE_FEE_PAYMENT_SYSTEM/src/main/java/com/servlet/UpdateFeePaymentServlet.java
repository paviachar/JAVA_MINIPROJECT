package com.servlet;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import com.dao.FeePaymentDAO;
import com.model.FeePayment;

public class UpdateFeePaymentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
    throws ServletException, IOException {

        try {
            FeePayment f = new FeePayment();

            f.setPaymentID(Integer.parseInt(req.getParameter("pid")));
            f.setStudentID(Integer.parseInt(req.getParameter("sid")));
            f.setStudentName(req.getParameter("sname"));
            f.setPaymentDate(req.getParameter("date"));
            f.setAmount(Double.parseDouble(req.getParameter("amount")));
            f.setStatus(req.getParameter("status"));

            FeePaymentDAO dao = new FeePaymentDAO();

            java.sql.Connection con = java.sql.DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/collegefee","root","PAVI");

            java.sql.PreparedStatement ps = con.prepareStatement(
            		
            "UPDATE FeePayments SET StudentID=?, StudentName=?, PaymentDate=?, Amount=?, Status=? WHERE PaymentID=?");

            ps.setInt(1, f.getStudentID());
            ps.setString(2, f.getStudentName());
            ps.setString(3, f.getPaymentDate());
            ps.setDouble(4, f.getAmount());
            ps.setString(5, f.getStatus());
            ps.setInt(6, f.getPaymentID());

            ps.executeUpdate();
            con.close();

            res.sendRedirect("feepaymentsdisplay");

        } catch(Exception e){ e.printStackTrace(); }
    }
}