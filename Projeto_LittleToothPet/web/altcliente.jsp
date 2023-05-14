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
        
        <title>Alterações</title>
    </head>
    
    <body>
        
        <%
        String titulo="",tituloBotao="",editarCampo="",tituloAcao="",id="0"; 
        if(request.getParameter("excbutao")!=null || 
        request.getParameter("exccliente")!=null){ 
            id = request.getParameter("excbutao"); 
            titulo="Excluir cliente";
            tituloBotao="Excluir";
            editarCampo="readonly='readonly'";
            tituloAcao = "exccliente";
            }   else if(request.getParameter("altbutao")!=null ||
                request.getParameter("altcliente")!=null){
                    id = request.getParameter("altbutao")!=null?request.getParameter("altbutao"):request.getParameter("altcliente");
                    titulo="Alterar cliente";
                    tituloBotao="Alterar";
                    tituloAcao = "altcliente";
                }
        %> 
        <h2><%=titulo%></h2> 
        <form class="col-md-8" method="GET" action="controle.jsp" >
            <div class="form-row">
                <input type="hidden" id="nome" value="<%=id %>" name="id" >
                <div class="col-md-8 col-sm-12 col-lg-8 mb-3">
                    <label for="nome">Nome:</label>
                    <input type="text" class="form-control" id="nome" value="<%=request.getParameter("nome")%>" name="nome" required <%=editarCampo%>>
                </div>
                <div class="col-md-4 col-sm-6 col-lg-4 mb-3">
                    <label for="cpf">CPF:</label>
                    <input type="text" class="form-control" id="cpf" value="<%=request.getParameter("cpf")%>" name="cpf" required <%=editarCampo%>>
                </div> 
            </div>
            <button style="float:right;margin-top:10px;" class="btn btn-danger" name="<%=tituloAcao%>" type="submit">
                <%=tituloBotao%>
            </button>
        </form>
        
    </body>
</html>
