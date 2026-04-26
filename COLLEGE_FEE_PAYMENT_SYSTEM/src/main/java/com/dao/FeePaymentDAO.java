package com.dao;
import java.sql.*;
import java.util.*;
import com.model.FeePayment;

public class FeePaymentDAO {

    private Connection getConnection() throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/collegefee","root","PAVI");
    }

    public void addPayment(FeePayment f) throws Exception {
        Connection con = getConnection();
        PreparedStatement ps = con.prepareStatement(
        "INSERT INTO FeePayments(StudentID,StudentName,PaymentDate,Amount,Status) VALUES(?,?,?,?,?)");

        ps.setInt(1, f.getStudentID());
        ps.setString(2, f.getStudentName());
        ps.setString(3, f.getPaymentDate());
        ps.setDouble(4, f.getAmount());
        ps.setString(5, f.getStatus());

        ps.executeUpdate();
        con.close();
    }

    public List<FeePayment> getAllPayments() throws Exception {
        List<FeePayment> list = new ArrayList<>();
        Connection con = getConnection();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("SELECT * FROM FeePayments");

        while(rs.next()){
            FeePayment f = new FeePayment();
            f.setPaymentID(rs.getInt(1));
            f.setStudentID(rs.getInt(2));
            f.setStudentName(rs.getString(3));
            f.setPaymentDate(rs.getString(4));
            f.setAmount(rs.getDouble(5));
            f.setStatus(rs.getString(6));
            list.add(f);
        }
        con.close();
        return list;
    }

    public void deletePayment(int id) {
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                "DELETE FROM FeePayments WHERE PaymentID=?"
            );
            ps.setInt(1, id);
            ps.executeUpdate();
            con.close();
        } catch(Exception e) {
            e.printStackTrace();
        }
    }
}