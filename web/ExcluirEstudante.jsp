<%-- 
    Document   : ExcluirEstudante
    Created on : May 9, 2017, 11:11:19 AM
    Author     : adminn
--%>

<%@page import="com.edcarlos.model.dao.EstudanteDao"%>
<%@page import="com.edcarlos.model.bean.Estudante"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form name="form" method="post" action="ControllerExcluirEstudante">
            <table border="1">
                <%
                    Estudante estudante = new Estudante();
                    EstudanteDao estudanteDao = new EstudanteDao();
                    estudante = estudanteDao.consultarPorId(Integer.valueOf(request.getParameter("codigo")));

                %>

                <tbody>
                    <tr>
                        <td>Nome:</td>
                        <td>
                            <input type="hidden" name="txtid" value="<%=estudante.getEstcodigo()%>"/>
                            <input type="text" name="txtnome" value="<%=estudante.getEstnome()%>"/>
                        </td>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            <input type="submit" name="btSalvar" value="EXCLUIR"/>
                        </td>
                        
                    </tr>

                </tbody>

            </table>                    
        </form>
    </body>
</html>
