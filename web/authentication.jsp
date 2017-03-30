<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Authentication</title>
    </head>
    <body>
        <%
            String id = request.getParameter("username");
            String fin = request.getParameter("password");
            out.println(id);
            out.println(fin);
        %>
        <%
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/game?zeroDateTimeBehavior=convertToNull" , "root", "2580456");
                PreparedStatement ps = con.prepareStatement("select * from player where username=? and password=?");
                ps.setString(1,id);
                ps.setString(2,fin);
                ResultSet rs = ps.executeQuery();
                if(rs.next())
                {
                    response.sendRedirect("positive.jsp");
                }
                else
                {
                    response.sendRedirect("negative.jsp");
                }
            }catch(SQLException e){}
        %>
    </body>
</html>
