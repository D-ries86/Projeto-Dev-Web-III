
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             <%
    if(session.getAttribute("userNameSession") != null){
        response.sendRedirect("home.jsp");
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="img/LTPicon.png"/>
       
        <!-- Required meta tags -->      
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
               
        <!-- Fontwesome -->
        <script src="https://kit.fontawesome.com/b1e6413798.js" crossorigin="anonymous"></script> 
        <link rel="stylesheet" href="css/fontawesome.min.css"/>
        
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <!-- CSS externo -->
        
        <title>Início - Little Tooth Pets</title>
        
    </head>
    
    <body class="bgsec">

    <header>
      <nav class="navbar navbar-expand-sm navbar-light bgsec">
        <div class="container">
          
          <a href="index.jsp" class="navbar-brand">
            <img class="img-fluid" src="img/Little-Tooth-Pets.svg" width="140">
          </a>

          <button class="navbar-toggler" data-toggle="collapse" data-target="#navprincipal">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navprincipal">
            <ul class="navbar-nav ml-auto">
              <li class="nav-item">
                <a href="index.jsp" class="nav-link font-italic rounded-lg shadow-sm disabled">Home</a>
              </li>
              
              <li class="nav-item divisor my-1"></li>

              <li class="nav-item">
                <a href="#" class="nav-link mr-2 font-italic rounded-lg shadow-sm">Utilitários</a>
              </li>
              
              <li class="nav-item divisor my-1"></li>

              <li class="nav-item">
                <a href="#" class="nav-link mr-5 font-italic rounded-lg shadow-sm">Sobre</a>
              </li>

              <li class="nav-item">
                <a href="newcadastro.jsp" class="btn btn-outline-secondary ml-5 shadow"><i class="fa-regular fa-address-card fa-lg"></i>&nbsp Cadastrar</a>
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
            <div class="align-self-center bgsec p-5 rounded-lg shadow-lg">
              <h2 class="text-light text-sm-center font-weight-bolder shadow-sm p-3 text-uppercase">
                <img class="img-fluid mr-1" width="60" src="img/logo_loginsec.png">
                Faça seu login
              </h2>             
              <form class="mt-4 mb-4" action="verifica_usuario.java" method="post" id="form-login">
                  <label style="color: black;
                      display: block;
                      font-size: 0.9rem;
                      font-weight: 600;">
                      &nbsp;Usuário
                  </label>           
                  <input class="form-control mb-4 shadow-sm" type="text" name="user" id="user" placeholder="Insira seu usuário" required>
                  
                  <label style="color: black;
                      display: block;
                      font-size: 0.9rem;
                      font-weight: 600;">
                      &nbsp;Senha
                  </label>
                  <button type="button" style="text-decoration: 
                    underline;
                    color: #333333;
                    width: auto;
                    margin: 0;
                    padding: 0;                                            
                    font-size: .74375rem;
                    background: none;
                    font-size: .8rem;
                    border: none; 
                    min-height: 1.1875rem;
                    width: 100%;
                    cursor: pointer;
                    text-align: center;
                    white-space: nowrap;
                    align-items: center;
                    text-align: right;">
                        Esqueci a senha 
                  </button>
                  
                  <div class="input-group">
                    <input class="form-control shadow-sm" type="password" name="pass" id="pass" placeholder="Insira sua senha" required>
                    <div class="input-group-append">
                        <button type="button" class="btn btn-secondary"><i class="fa fa-eye-slash" id="togglePassword" style="cursor: pointer;"></i></button>
                    </div>
                  </div>
                  
                  <div class="input-group-lg mt-4">
                    <button class="btn btn-lg btn-block btn-outline-secondary font-weight-bold shadow-sm" type="submit" value="Entrar">Entrar</button>
                  </div>
                
              </form>       
            </div>
          </div>

          <div class="col-md-6 d-none d-md-block">
            <figure class="gif">
                <img class="img-fluid" src="img/inicioLTP.gif" alt="Bem-vindo(a) a Little Tooth Pets!"/>
            </figure>
          </div>

        </div>
      </div>
    </section>

     <section class="caixa bg-warning">
      <div class="container">
        <div class="row">
          
          <div class="col-md-12 d-flex">
          <br><br>

          </div>
        </div>
      </div>
    </section>

    <footer class="mt-4 mb-4 ">
      <div class="container">
        <div class="row">
          
          <div class="col-md-8">
            <p>
              Porto Alegre - RS | Av. Algum lugar, 115 / Centro
            </p>
          </div>
         
          <div class="col-md-4 d-flex justify-content-end">
            
            <a class="text-dark mr-4" href="#">
              <i class="fab fa-facebook fa-xl"></i>
            </a>

            <a class="text-dark mr-4" href="#">
              <i class="fab fa-twitter fa-xl"></i>
            </a>

            <a class="text-dark mr-4" href="#">
              <i class="fab fa-instagram fa-xl"></i>
            </a>

          </div>
        </div>

      </div>
    </footer>
    
    <script>
        const togglePassword = document.querySelector("#togglePassword");
        const password = document.querySelector("#pass");

        togglePassword.addEventListener("click", function () {
        
        const type = password.getAttribute("type") === "text" ? "password" : "text";
        password.setAttribute("type", type);

        this.classList.toggle("fa-eye");
        });
     
        const form = document.querySelector("form");
        form.addEventListener('', function (e) {
            e.preventDefault();
        });
    </script>    

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
