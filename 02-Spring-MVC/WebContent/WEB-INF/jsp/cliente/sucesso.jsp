<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<title>Página de Sucesso</title>
</head>
<body>

	<h1>Sucesso</h1>
	<li class="list-group-item list-group-item-success">${msg}</li>
	<table class="table">
  <thead>
    <tr>
      <th scope="col"></th>
      <th scope="col">Nome</th>
      <th scope="col">Genero</th>
      <th scope="col">Idade</th>
      <th scope="col">Habilitado</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>${cli.nome}</td>
      <td>${cli.genero}</td>
      <td>${cli.idade}</td>
      <td>${cli.cnh}</td>
    </tr>    
  </tbody>
</table>

</body>
</html>