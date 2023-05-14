
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelo.Conexao" %>
<!DOCTYPE html>
<html lang="pt-br">
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <!-- Bootstrap -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous"> 
        <link rel="stylesheet" type="text/css" href="css/style.css">
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
        
        <!-- Fontawesome -->
        <script src="https://kit.fontawesome.com/b1e6413798.js" crossorigin="anonymous"></script>
        
        <!-- HTML5Shiv -->
        <!--[if lt IE 9]>
         <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script>
        <![endif]-->
        
        <title>Controle</title>
    </head>
    
    <body>
        
        <% 
            Conexao c = new Conexao();
            if(request.getParameter("cadcliente")!=null &&
        request.getParameter("nome")!=null &&
        request.getParameter("cpf")!=null){
            c.inserirClientesBD(request.getParameter("nome"),request.getParameter("cpf"));
            out.print("<h2>Cliente inserido no banco de dados.</h2>");
            response.setHeader("Refresh","3;URL=cadCliente.jsp");
        }else if(request.getParameter("altbutao")!=null){
            String id = request.getParameter("altbutao");
            String nome = request.getParameter("nome");
            String cpf = request.getParameter("cpf");
            response.setHeader("Refresh","0;URL=altcliente.jsp?nome="+nome+"&cpf="+cpf+"&altbutao="+id+"");
        }else if(request.getParameter("excbutao")!=null){
            String id = request.getParameter("excbutao");
            String nome = request.getParameter("nome");
            String cpf = request.getParameter("cpf");
            response.setHeader("Refresh","0;URL=altcliente.jsp?nome="+nome+"&cpf="+cpf+"&excbutao="+id+"");
        }else if(request.getParameter("altcliente")!=null){ 
            c.alterarClientesBD(request.getParameter("id"),request.getParameter("nome"),request.getParameter("cpf"));
            out.print("<h2>Cliente atualizado no banco de dados.</h2>");
            response.setHeader("Refresh","3;URL=concliente.jsp");
        }else if(request.getParameter("exccliente")!=null){ 
            c.excluirClientesBD(request.getParameter("id"),request.getParameter("nome"),request.getParameter("cpf"));
            out.print("<h2>Cliente excluido no banco de dados.</h2>");
            response.setHeader("Refresh","3;URL=concliente.jsp"); 
        }else{
            out.print("<h2>Operação não realizada</h2>");
            response.setHeader("Refresh","13;URL=cadcliente.jsp"); 
        } 
        
        %> 
        
    </body>
</html>
