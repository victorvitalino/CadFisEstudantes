<%-- 
    Document   : login
    Created on : May 9, 2017, 8:33:42 PM
    Author     : adminn
--%>

<%@page  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    
    <body >
        <b> Login: admin </b><br>
        <b> Senha: admin </b><br><br><br>

        <form action="./LoginServlet" method="POST">
            <table border="1">
                <tbody>
                    <tr>
                        <td>Login</td>
                        <td><input type="text" name="userName"/></td>
                    </tr>
                    <tr>
                        <td>Senha</td>
                        <td><input type="password" name="password"/></td>
                    </tr>
                    <tr><td colspan="2" align="center">
                            <input type="submit" value="Login"/></td>
                    </tr>
                </tbody>
            </table>
        </form>
    </body>
</html>