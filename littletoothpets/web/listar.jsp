
<%@page import="modelo.User" %>  

<%
    User uSession = (User) session.getAttribute("userNameSession");
%>

<%@page import="modelo.Cliente"%>
<%@page import="modelo.ClienteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Animaland</title>
    </head>
    <body>
        <h1>LISTAR</h1>
        <hr>
        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>NOME</th>
                    <th>CPF</th>
                    <th>TELEFONE</th>
                    <th>CIDADE</th>
                    <th>NÚMERO</th>
                    <th>CEP</th>                   
                    <th></th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <%
                ClienteDAO pdao = new ClienteDAO();
                for(Cliente p : pdao.listCliente()) {
                %>
                <tr>
                    <td><%= p.getIdCliente() %></td>
                    <td><%= p.getNome() %></td>
                    <td><%= p.getCpf() %></td>
                    <td><%= p.getTelefone() %></td>
                    <td><%= p.getCidade() %></td>
                    <td><%= p.getNumero() %></td>
                    <td><%= p.getCep() %></td>                   
                    <td>
                        <a href="UpdateCliente?cod=<%= p.getIdCliente() %>">📝</a>
                    </td>
                    <td onclick="confirmDelete(<%= p.getIdCliente() %>)">❌</td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>

        <hr>
        <a href="home.jsp">Página Inicial</a>
        
        <script>
            function confirmDelete(cod) {
                if(confirm("Deseja realmente excluir?")){
                    window.location.replace("DeleteCliente?cod=" + cod);
                } else {
                    alert("Exclusão cancelada!");
                }
            }
        </script>
    </body>
</html>
