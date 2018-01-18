<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>!!!Erro Senha!!!</title>
    </head>
    <body>
        <h1>Erro! - <%=request.getAttribute("error")%> </h1>
        <a href="login.jsp">Voltar</a>
    </body>
</html>
