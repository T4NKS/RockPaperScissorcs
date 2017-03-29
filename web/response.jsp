<%-- 
    Document   : response
    Created on : 28-Mar-2017, 23:13:08
    Author     : Tank
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="myBean" scope="session" class="org.mypackage.hello.NameHandler" />
        <jsp:setProperty name="myBean" property="name"  />
        <h1>Hello, <jsp:getProperty name="myBean" property="name" />, you little whore.</h1>
    </body>
</html>
