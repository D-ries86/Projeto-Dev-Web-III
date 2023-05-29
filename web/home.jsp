
<%@page import="modelo.User" %>  

<%
    User uSession = (User) session.getAttribute("userNameSession");
%>

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
        <link rel="stylesheet" href="css/fontawesome.min.css"/>
        
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <!-- CSS externo -->

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
        
        <title>Home - Little Tooth Pets</title>
        
    </head>
    <body class="bgsec">

    <header class="shadow-lg">
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
                <a href="home.jsp" class="nav-link font-italic rounded-lg shadow-sm disabled">Home</a>
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
                <a href="listar.jsp" class="nav-link mr-5 font-italic rounded-lg shadow-sm" onclick="window.location.href='listar.jsp'">Lista de Dados</a>
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
        <div class="row">

          <div class="col-md-6 d-flex"> <!-- Textos da section -->
            <div class="align-self-center">
                <%@include file="session/verify.jsp" %>
            
                <h2 class="text-dark">
                    Bem-vindo, <span class="text-light"><%= (uSession != null) ? uSession.getUserName() : "visitante" %></span>!
                </h2>
                
            </div>
          </div> <!-- Textos da section -->

          <div class="col-md-6 d-none d-md-block">
            <section>         
                <figure class="gif">
                    <img class="img-fluid" src="img/bemvindoLTP.gif" alt="Seja Bem-vindo a Little Tooth Pets!"/>
                </figure>
            </section>
          </div>

        </div>
      </div>
    </section> <!--/Fim seção Home -->

     <section class="caixa bg-warning"> <!--/Início seção Saiba -->
      <div class="container">
        <div class="row">        
          <div class="col-md-12 d-flex">
            <br><br>
          </div>
        </div>
      </div>
    </section><!--/Fim seção Saiba -->

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
