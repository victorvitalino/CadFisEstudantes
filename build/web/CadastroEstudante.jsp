<%-- 
    Document   : CadastroEstudante
    Created on : May 9, 2017, 8:43:15 AM
    Author     : adminn
--%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
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
         <h1>Bem vindo ao Sistema de Cadastro dos Alunos, <%=session.getAttribute("loginName")%>!</h1>
         
        <form name="form" action="ControllerEstudante" method="POST">

            <table border="1">
                <thead>
                    <tr>
                        <th colspan="2">Cadastro</th>
                    </tr>
                </thead>

                <tbody>
                    <tr>
                        <td>Nome:</td>
                        <td><input type="text" name="txtnome" value=""/> </td>
                    </tr>

                    <tr>
                        <td>Sobrenome:</td>
                        <td><input type="text" name="txtsobrenome" value=""/> </td>
                    </tr>

                    <tr>
                        <td>Massa (kg):</td>
                        <td><input type="text" name="txtmassa" value=""/> </td>
                    </tr>

                    <tr>
                        <td>Altura (m):</td>
                        <td><input type="text" name="txtaltura" value=""/> </td>
                    </tr>

                    <tr>
                        <td colspan="2">
                            <input type="submit" name="btCadastrar" value="Cadastrar"/> 
                        </td>
                    </tr>

                </tbody>
            </table>
        </form>




        <p></p>
        <p></p>
        <p></p>

    <thead>
        <tr>


            <th colspan="2">Lista dos alunos cadastrados</th>
        </tr>
    </thead>


    <%
        List<Estudante> listEstudante = new ArrayList<Estudante>();
        EstudanteDao estudanteDao = new EstudanteDao();
        String nome = request.getParameter("txtnome");
        String sobrenome = request.getParameter("txtsobrenome");
        //String sexo = request.getParameter("rdsexo");
        String massa = request.getParameter("txtmassa");
        String altura = request.getParameter("txtaltura");
    %>

    <table border="1">
        <thead>
            <tr>
                <th>Codigo</th>
                <th>Nome</th>
                <th>Sobrenome</th>
                <th>Massa (kg)</th>
                <th>Altura (m)</th>
                <th>&nbsp;</th>
            </tr>
        </thead>

        <tbody>
            <%listEstudante = estudanteDao.listar();
                for (Estudante b : listEstudante) {
            %>

            <tr>
                <td><%=b.getEstcodigo()%></td>
                <td><%=b.getEstnome()%></td>
                <td><%=b.getEstsobrenome()%></td>
                <td><%=b.getEstmassa()%></td>
                <td><%=b.getEstaltura()%></td>
                <td>
                    <input type="button" value="Alterar" name="btAlterar" onclick="location = 'AlterarEstudante.jsp?codigo=<%=b.getEstcodigo()%>'"/>
                    <input type="button" value="Excluir" name="btExcluir" onclick="location = 'ExcluirEstudante.jsp?codigo=<%=b.getEstcodigo()%>'"/>
                </td>
            </tr>
            <%
                }
            %>
        </tbody>
    </table>
</body>
</html>
