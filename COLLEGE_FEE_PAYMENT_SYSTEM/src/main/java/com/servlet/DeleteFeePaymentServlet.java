package com.servlet;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import com.dao.FeePaymentDAO;

public class DeleteFeePaymentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
    throws ServletException, IOException {

        try {
            int id = Integer.parseInt(req.getParameter("pid"));

            FeePaymentDAO dao = new FeePaymentDAO();
            dao.deletePayment(id);

            res.sendRedirect("feepaymentsdisplay");

        } catch(Exception e){ e.printStackTrace(); }
    }
}