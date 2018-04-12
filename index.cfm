<cfsilent>
  <cfset qDestinos = queryNew("CODIGO,  FRUTA,   VALOR,
                            numeric, varchar, decimal") />
  <cfset queryAddRow(qDestinos, 1) >
  <cfset querySetCell(qDestinos, "CODIGO", 1)>
  <cfset querySetCell(qDestinos, "FRUTA", 'Maçã')>
  <cfset querySetCell(qDestinos, "valor", 1.29)>

  <cfset queryAddRow(qDestinos, 1) >
  <cfset querySetCell(qDestinos, "CODIGO", 2)>
  <cfset querySetCell(qDestinos, "FRUTA", 'Limão')>
  <cfset querySetCell(qDestinos, "valor", 0.99)>

  <cfset queryAddRow(qDestinos, 1) >
  <cfset querySetCell(qDestinos, "CODIGO", 3)>
  <cfset querySetCell(qDestinos, "FRUTA", 'Banana')>
  <cfset querySetCell(qDestinos, "valor", 1.19)>

</cfsilent>


<!doctype html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Listagem</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="navbar-top-fixed.css" rel="stylesheet">
  </head>

  <body>

    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="C:\Users\Usuario\Desktop\Projeto II\Empresa\index.cfm">Destinos<span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="C:\Users\Usuario\Desktop\Projeto II\Empresa\inserir.cfm">Inserir<span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="#">Relatorio<span class="sr-only">(current)</span></a>
          </li>
        </ul>
      </div>
    </nav>

    <main role="main" class="container">
      <div class="jumbotron">
      
      <h1>Destinos de Viagem</h1> </br>

      <table class="table table-striped">
        <thead class="thead-light">
          <tr>
            <th>CÓDIGO</th>
            <th>DESTINO</th>
            <th>VALOR</th>
            <th>AÇÕES<th>
          </tr> 
        </thead>
        <tbody>
          <cfoutput query="qDestinos">
            <tr>
              <td>#CODIGO#</td>
              <td>#DESTINO#</td>
              <td>R$ #VALOR#</td>
              <td> 
                <a name="alterar" value="alterar" type="button" class="btn btn-outline-warning" href="editar.cfm?codigo=#CODIGO#">Alterar</a>
                <a name="excluir" value="excluir" type="button" class="btn btn-outline-danger" href="delete.cfm?codigo=#CODIGO#">Excluir</a>
              </td>
            </tr>
          </cfoutput>  
        </tbody>       
      </table>
      </div>
    </main>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="js/jquery-slim.min.js"><\/script>')</script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
