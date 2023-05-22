
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
        <!-- Required meta tags -->      
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

        <link rel="stylesheet" type="text/css" href="css/style.css">

        <script src="https://kit.fontawesome.com/b1e6413798.js" crossorigin="anonymous"></script>

        <title>Cadastro - Little Tooth Pets</title>
    </head>
    <body class="bgsec">

    <header>
      <nav class="navbar navbar-expand-sm navbar-light bgsec">
        <div class="container">
          
          <a href="index.jsp" class="navbar-brand">
            <img src="img/Little-Tooth-Pets.svg" width="140">
          </a>

          <button class="navbar-toggler" data-toggle="collapse" data-target="#navprincipal">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navprincipal">
            <ul class="navbar-nav ml-auto">
              <li class="nav-item">
                <a href="index.jsp" class="nav-link">Home</a>
              </li>

              <li class="nav-item">
                <a href="#" class="nav-link">Utilitários</a>
              </li>

              <li class="nav-item">
                <a href="#" class="nav-link mr-5">Sobre</a>
              </li>

              <li class="nav-item">
                <a href="index.jsp" class="btn btn-outline-secondary ml-5">Login</a>
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
            <div class="align-self-center bgsec p-5 rounded-pill">
              <h1>
                <img class="img-fluid pr-1" width="60" src="img/logo_cadastrosec.png">
                Novo cadastro
              </h1>             
              <form class="mt-4 mb-4">
                <label style="color: black;
                    display: block;
                    font-size: 0.9rem;
                    font-weight: 600;">
                    &nbsp;Nome &nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email
                </label>
                <div class="input-group input-group-lg">           
                  <input type="text" placeholder="Seu nome" class="form-control">
                  <input type="text" placeholder="Seu email" class="form-control">
                  <div class="input-group-append">
                    <button type="button" class="btn btn-outline-secondary font-weight-bold">Solicitar</button>
                  </div>
                </div>
              </form>

              <p>Cadastrar com  
                <a href="#" class="btn btn-outline-danger ml-2">
                  <i class="fa-brands fa-google fa-lg"></i>
                </a> 
              </p>
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
