<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <style>
            body {margin:0;}

            .topnav {
                overflow: hidden;
                background-color: #333;
            }

            .topnav a {
                float: left;
                display: block;
                color: #f2f2f2;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
                font-size: 17px;
            }

            .topnav a:hover {
                background-color: #ddd;
                color: black;
            }

            .topnav a.active {
                background-color: #4CAF50;
                color: white;
            }
        </style>
    </head>
    <body>

        <div class="topnav" id="myTopnav">
            <a href="CadastroEstudante.jsp">Cadastrar</a>
            <a href="ListarEstudante.jsp">Listar</a>
        </div>

        <h1>Bem vindo, <%=session.getAttribute("loginName")%>!</h1>
        <h1>Escolha uma das op��es no menu acima.</h1> 
        <h1>Cadastrar - Cadastra um novo aluno.</h1>
        <h1>Listar - Listar os alunos cadastados, permitindo tamb�m exlclus�o ou edi��o dos mesmos.</h1>
    </body>
</html>
