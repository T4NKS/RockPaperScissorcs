<%-- 
    Document   : index
    Created on : 28-Mar-2017, 23:06:57
    Author     : Tank
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/game.css"
              <title><h1>Rock Paper Scissors</h1></title>
        <script language="javascript">
            function check(form)
            {

                if (form.username.value == "Gowthaman" && form.password.value == "pass123")
                {
                    alert('Success')
                } else
                {
                    alert("Error Password or Username")
                }
            }
        </script>
    </head>
    <body>
        <div id="main">
            <div id="centre">
                <h1>Log In</h1>
                <br/>
                <form name="Name Input Form" action="login.jsp">
                    Username:
                    <input type="text" name="username"/>
                    <br/>
                    <br/>
                    Password:&nbsp;
                    <input type="password" name="password"/>
                    <br/>
                    <br/>
                    <input type="submit" value="SUBMIT" onclick="check(this.form)"/>
                </form>
                <br/>
            </div>

        </div>

    </body>
</html>
