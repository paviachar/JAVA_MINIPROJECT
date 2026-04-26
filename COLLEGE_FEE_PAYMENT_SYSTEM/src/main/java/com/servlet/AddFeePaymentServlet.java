package com.servlet;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import com.dao.FeePaymentDAO;
import com.model.FeePayment;

public class AddFeePaymentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
    throws ServletException, IOException {

        try {
            FeePayment f = new FeePayment();

            f.setStudentID(Integer.parseInt(req.getParameter("sid")));
            f.setStudentName(req.getParameter("sname"));
            f.setPaymentDate(req.getParameter("date"));
            f.setAmount(Double.parseDouble(req.getParameter("amount")));
            f.setStatus(req.getParameter("status"));

            FeePaymentDAO dao = new FeePaymentDAO();
            dao.addPayment(f);
            res.sendRedirect("feepaymentsdisplay");
        } catch(Exception e){
            e.printStackTrace();
        }
    }
}