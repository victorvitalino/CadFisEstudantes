<%-- 
    Document   : AlterarEstudante
    Created on : May 9, 2017, 10:04:12 AM
    Author     : adminn
--%>

<%@page import="com.edcarlos.model.bean.Estudante"%>
<%@page import="com.edcarlos.model.dao.EstudanteDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

    <form name="form" method="POST" action="ControllerAlterarEstudante">
        <table border="1">
            <thead>
                <tr>
                    <th colspan="2"> Alteração de Estudante</th>
                </tr>
            </thead>

            <%
                EstudanteDao estudanteDao = new EstudanteDao();
                Estudante estudante = estudanteDao.consultarPorId(Integer.valueOf(request.getParameter("codigo")));
            %>

            <tbody>
                <tr>
                    <td>Nome: </td>
                    <td>
                        <input type="hidden" name="txtid" value="<%=estudante.getEstcodigo()%>"/>
                        <input type="text" name="txtnome" value="<%=estudante.getEstnome()%>"/>
                        <input type="text" name="txtsobrenome" value="<%=estudante.getEstsobrenome()%>"/>
                        <input type="text" name="txtmassa" value="<%=estudante.getEstmassa()%>"/>
                        <input type="text" name="txtaltura" value="<%=estudante.getEstaltura()%>"/>

                    </td>

                </tr>

                <tr>
                    <td colspan="2">
                        <input type="submit" value="Salvar" name="btSalvar" />
                    </td>
                </tr>

            </tbody>


        </table>               
    </form>

</html>
