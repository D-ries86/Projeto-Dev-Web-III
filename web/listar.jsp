
<%@page import="modelo.User" %>

<%
    User uSession = (User) session.getAttribute("userNameSession");
%>

<%@page import="modelo.Pet"%>
<%@page import="modelo.PetDAO"%>
<%@page import="modelo.Cliente"%>
<%@page import="modelo.ClienteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="pt-br">
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="img/LTPicon.png"/>
        
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Fontwesome -->
        <script src="https://kit.fontawesome.com/b1e6413798.js" crossorigin="anonymous"></script>
        
        <!-- CSS externo -->
        <link rel="stylesheet" type="text/css" href="css/style.css">        
       
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        
        <style>
            
            ::-webkit-scrollbar {
              width: 8px;
              border-radius: 50px;
              background: #D4D4D4;
            }

            /* Track */
            ::-webkit-scrollbar-track {
              border-radius: 50px;
            }

            /* Handle */
            ::-webkit-scrollbar-thumb {
              background: #FF914D;
              border-radius: 50px;
            }

            /* Handle on hover */
            ::-webkit-scrollbar-thumb:hover {
              background: #888; 
              
            }

        </style>
        
        <title>Registro - Little Tooth Pets</title>
        
    </head>
    
    <body class="bgsec">
              
        <header class="shadow">
            <nav class="navbar navbar-expand-sm navbar-light bgsec">
                <div class="container">

                    <a href="home.jsp" class="navbar-brand" onclick="window.location.href='home.jsp'">
                        <img class="img-fluid" src="img/Little-Tooth-Pets.svg" width="140">
                    </a>

                    <button class="navbar-toggler" data-toggle="collapse" data-target="#navprincipal">
                      <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse bg-nav" id="navprincipal">
                      <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                          <a href="home.jsp" class="nav-link font-italic rounded-lg shadow-sm">Home</a>
                        </li>

                        <li class="nav-item divisor mt-1"></li>

                        <li class="nav-item">
                          <a href="cadastropet.jsp" class="nav-link mr-1 font-italic rounded-lg shadow-sm" onclick="window.location.href='cadastropet.jsp'">Registrar Pet </a>
                        </li>

                        <li class="nav-item divisor mt-1"></li>

                        <li class="nav-item">
                          <a href="cadastro.jsp" class="nav-link mr-1 font-italic rounded-lg shadow-sm" onclick="window.location.href='cadastro.jsp'">Registrar Cliente</a>
                        </li>

                        <li class="nav-item divisor mt-1"></li>

                        <li class="nav-item">
                          <a href="listar.jsp" class="nav-link mr-5 font-italic rounded-lg shadow-sm disabled" onclick="window.location.href='listar.jsp'">Lista de Dados</a>
                        </li>

                        <li class="nav-item">
                            <p class="align-text-bottom p-2 text-light">
                                 <%= (uSession != null) ? uSession.getUserName() : "visitante" %>
                            </p>
                        </li>

                        <li class="nav-item">
                          <button class="btn btn-sm btn-outline-secondary ml-3 p-2 shadow" onclick="window.location.href='session/logout.jsp'"><i class="fa-solid fa-arrow-right-from-bracket fa-lg"></i>&nbsp Sair</button>
                        </li>

                      </ul>
                    </div>

                </div>
            </nav>
        </header>
        
        <section id="home"> <!--/Início seção Home -->
            <div class="container">
                <div class="row">       <!-- Tabela Cliente -->
                    <div class="col-md-12 d-md-block text-center align-self-center bgsec mt-5 mb-4 p-3 rounded-lg shadow-lg"> 
                    <h2 class="text-justify text-lg-center text-black-50 shadow-sm text-uppercase p-3">lista de clientes</h2>
                    <div class="form-group-sm input-group p-3">
                        <input class="form-control-sm bgsec text-dark border-0 shadow rounded-lg" id="filtro-cliente" type="text" style="border: none; outline: none;" placeholder="Buscar...">                        
                    </div>
                    <hr class="bg-dark">
                       <div style="height: 700px; overflow: auto;">
                        <table id="listacliente" class="table table-sm table-striped table-borderless table-hover table-responsive-md">
                            <thead class="thead-dark table-responsive-md">
                                <tr class="table-responsive-md">
                                    <th class="text-light font-italic font-weight-lighter">ID</th>
                                    <th class="text-light font-weight-lighter">NOME</th>
                                    <th class="text-light font-weight-lighter">CPF</th>
                                    <th class="text-light font-weight-lighter">TELEFONE</th>
                                    <th class="text-light font-weight-lighter">CIDADE</th>
                                    <th class="text-light font-weight-lighter">NÚMERO</th>
                                    <th class="text-light font-weight-lighter">CEP</th>                   
                                    <th></th>
                                    <th></th>
                                </tr>
                            </thead>                        
                            <tbody>                        
                                <%
                                ClienteDAO pdao = new ClienteDAO();
                                for(Cliente p : pdao.listCliente()) {
                                %>                           
                                <tr class="table-responsive-md">
                                        <td><%= p.getIdCliente() %></td>
                                        <td><%= p.getNome() %></td>
                                        <td><%= p.getCpf() %></td>
                                        <td><%= p.getTelefone() %></td>
                                        <td><%= p.getCidade() %></td>
                                        <td><%= p.getNumero() %></td>
                                        <td><%= p.getCep() %></td>                   
                                        <td>
                                            <a class="poiter" href="UpdateCliente?cod=<%= p.getIdCliente() %>"> <i class="fa-regular fa-pen-to-square fa-xl" style="color: #ffffff;"></i> </a>
                                        </td>
                                        <td class="" onclick="confirmDeleteCliente(<%= p.getIdCliente() %>)"> <button class="bg-transparent border-0"><i class="fa-regular fa-trash-can fa-xl" style="color: #ffffff;"></i></button> </td>
                                    </tr>                
                                    <%
                                        }
                                    %>                                      
                            </tbody>                   
                        </table>
                      </div>
                      <hr class="bg-dark">
                    </div>    
                  </div>                                       <!-- Tabela Cliente -->
                                  
                <div class="row">                               <!-- Tabela Pets --> 
                  <div class="col-md-12 d-md-block text-center align-self-center bgsec mt-4 mb-5 p-3 rounded-lg shadow-lg">                                  
                        <h2 class="text-justify text-lg-center text-black-50 shadow-sm text-uppercase p-2">lista de pets</h2>
                        <div class="form-group-sm input-group p-3">                            
                            <input class="form-control-sm bgsec text-dark border-0 shadow rounded-lg" id="filtro-pet" style="border: none; outline: none;" type="text" placeholder="Buscar...">                         
                        </div>
                        <hr class="bg-dark"> 
                        <div style="height: 700px; overflow: auto;">
                            <table id="listapet" class="table table-sm table-striped table-borderless table-hover table-responsive-md">
                                <thead class="thead-dark">
                                    <tr class="table-responsive-md">
                                        <th class="text-light font-italic font-weight-lighter">ID</th>
                                        <th class="text-light font-weight-lighter">NOME</th>
                                        <th class="text-light font-weight-lighter">RAÇA</th>
                                        <th class="text-light font-weight-lighter">PORTE</th>
                                        <th class="text-light font-weight-lighter">IDADE</th>
                                        <th class="text-light font-weight-lighter">PESO</th>
                                        <th class="text-light font-weight-lighter">DESCRIÇÃO</th>                   
                                        <th></th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                    PetDAO tdao = new PetDAO();
                                    for(Pet t : tdao.listPet()) {
                                    %>
                                    <tr class="table-responsive-md">
                                        <td><%= t.getIdPet() %></td>
                                        <td><%= t.getNome() %></td>
                                        <td><%= t.getRaca() %></td>
                                        <td><%= t.getPorte() %></td>
                                        <td><%= t.getIdade() %></td>
                                        <td><%= t.getPeso() %></td>
                                        <td><%= t.getDescricao() %></td>                   
                                        <td class="">
                                            <a class="poiter" href="UpdatePet?cod=<%= t.getIdPet() %>"> <i class="fa-regular fa-pen-to-square fa-xl" style="color: #ffffff;"></i> </a>
                                        </td>
                                        <td class="" onclick="confirmDeletePet(<%= t.getIdPet() %>)"> <button class="bg-transparent border-0"><i class="fa-regular fa-trash-can fa-xl" style="color: #ffffff;"></i></button> </td>
                                    </tr>
                                    <%
                                        }
                                    %>
                                </tbody>
                            </table>
                        </div>
                        <hr class="bg-dark">               <!-- Tabela Pets -->                                                                                                     
                  </div> 
                </div>
              </div>              
        </section>
                     
        <script>
            function confirmDeleteCliente(cod) {
                if(confirm("Deseja realmente excluir?")){
                    window.location.replace("DeleteCliente?cod=" + cod);
                } else {
                    alert("Exclusão cancelada!");
                }
            }
        </script>   
        <script>
            function confirmDeletePet(cod) {
                if(confirm("Deseja realmente excluir?")){
                    window.location.replace("DeletePet?cod=" + cod);
                } else {
                    alert("Exclusão cancelada!");
                }
            }
        </script>
        
        <footer class="mt-4 mb-4">
            <div class="container">
            <div class="row">

              <div class="col-md-8">
                <p>
                  Porto Alegre - RS | 80240-131 Av. Algum lugar, 115 / Centro
                </p>
              </div>

              <div class="col-md-4 d-flex justify-content-end">

                <a class="text-dark mr-5" href="#">
                  <i class="fab fa-facebook fa-xl"></i>
                </a>

                <a class="text-dark mr-5" href="#">
                  <i class="fab fa-twitter fa-xl"></i>
                </a>

                <a class="text-dark mr-1" href="#">
                  <i class="fab fa-instagram fa-xl"></i>
                </a>

              </div>
            </div>

            </div>
        </footer>
        
        <script src="js/clientesList.js"></script>
        <script src="js/petsList.js"></script>

        <!-- Optional JavaScript; choose one of the two! -->

        <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

        <!-- Option 2: Separate Popper and Bootstrap JS -->
        <!--
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
        -->
        
    </body>
</html>
