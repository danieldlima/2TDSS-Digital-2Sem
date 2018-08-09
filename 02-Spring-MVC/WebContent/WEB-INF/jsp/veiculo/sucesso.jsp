<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<title>Página de sucesso</title>
</head>
<body>
<div class="container mt-5">
	<ul>
		<li class="list-group-item list-group-item-success">${msg}</li>
	</ul>
	
	
	<table class="table">
	  <thead>
	    <tr>
	      <th scope="col"></th>
	      <th scope="col">Modelo</th>
	      <th scope="col">Marca</th>
	      <th scope="col">Ano do carro</th>
	      <th scope="col">Estado do carro</th>
	      <th scope="col">Tipo do câmbio</th>
	    </tr>
	  </thead>
	  <tbody>
	    <tr>
	      <th scope="row">1</th>
	      <td>${veiculo.modelo}</td>
	      <td>${veiculo.marca}</td>
	      <td>${veiculo.ano}</td>
	      <td>${veiculo.estadoCarro}</td>
	      <td>${veiculo.cambio}</td>
	    </tr>    
	  </tbody>
	</table>
</div>

</body>
</html>