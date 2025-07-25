package com.cslc.MainPackage;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
public class Controller extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String uname = request.getParameter("userName");
        String pwd = request.getParameter("userPassword");

        try (Connection conn = Connect.getConnection()) {
            
            PreparedStatement ps = conn.prepareStatement("SELECT user_name, user_password FROM user_credentials WHERE user_name=? AND user_password=?");
            ps.setString(1, uname);
            ps.setString(2, pwd);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                // Successful login
                HttpSession session = request.getSession();
                session.setAttribute("username", uname);
                response.sendRedirect("welcome.jsp");
           } else {
                // Failed login
                response.sendRedirect("login_failed.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        }
    }
}
