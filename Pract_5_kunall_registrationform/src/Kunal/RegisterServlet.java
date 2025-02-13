package Kunal;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            conn = DatabaseConnection.getConnection();
            String sql = "INSERT INTO users_demo (name, email, password, phone, gender, address, city, state, pin_code) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
            stmt = conn.prepareStatement(sql);

            stmt.setString(1, request.getParameter("name"));
            stmt.setString(2, request.getParameter("email"));
            stmt.setString(3, request.getParameter("password")); // Storing plain text password
            stmt.setString(4, request.getParameter("phone"));
            stmt.setString(5, request.getParameter("gender"));
            stmt.setString(6, request.getParameter("address"));
            stmt.setString(7, request.getParameter("city"));
            stmt.setString(8, request.getParameter("state"));
            stmt.setString(9, request.getParameter("pin_code"));

            stmt.executeUpdate();
            response.sendRedirect("login.jsp"); // Redirect to login page

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp?message=Registration Failed");
        } finally {
            try {
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
