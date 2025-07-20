<%@ page import="jakarta.servlet.http.*,jakarta.servlet.*" %>
<%
    HttpSession session = request.getSession(false);
    if (session != null) {
        session.invalidate();
    }
    response.sendRedirect("index.jsp");
%>
