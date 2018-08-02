<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

<title>Insert title here</title>
</head>
<body>

	<div class="container mt-5">

		<h1 class="mb-5 pl-3">Contato</h1>
	
		<div class="col-12">
			<form action="enviar" method="post">
				<div class="form-group">
					<label for="name">Nome</label>
					<input type="text" class="form-control" id="name" name="name" placeholder="Digite o seu nome">
				</div>
				
				<div class="form-group mb-5">
					<label for="msg">Mensagem</label>
					<textarea class="form-control" rows="5" cols="50" name="mensagem"></textarea>
				</div>
				
				<button type="submit" value="Enviar" class="btn btn-primary">Enviar</button>
			</form>
		</div>
	
	</div>

</body>
</html>