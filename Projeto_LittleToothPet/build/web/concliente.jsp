
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        
        <title>Consultar</title>
    </head>
    
    <body>
        
        <div class="container">
            <h2>Consultar Clientes</h2> 
            <table class="table"> 
                <thead> 
                    <tr> 
                        <th>Código</th> 
                        <th>Nome</th> 
                        <th>CPF</th> 
                        <th>#</th> 
                    </tr> 
                </thead> 
                
                <tbody> 
                    <% 
                        Conexao c = new Conexao(); for(int i=0;i<c.consultaCliente().size();i++){ 
                    %> 
                    <tr> 
                        <td><%=c.consultaCliente().get(i).getId() %></td> 
                        <td><%=c.consultaCliente().get(i).getNome() %></td> 
                        <td><%=c.consultaCliente().get(i).getCpf() %></td> 
                        <td> 
                            <form method="GET" action="controle.jsp">
                                <button name="altbutao" class="btn btn-warning" value="<%=c.consultaCliente().get(i).getId()%>">
                                    <i class="fa fa-pencil-square-o "></i>
                                </button> 
                                
                                <button name="excbutao" class="btn btn-danger" value="<%=c.consultaCliente().get(i).getId()%>">
                                    <i class="fa fa-trash " ></i>
                                </button> 
                            </form> 
                        </td> 
                    </tr>
                    <% } %> 
                </tbody> 
            </table> 
        </div>
        
    </body>
</html>
