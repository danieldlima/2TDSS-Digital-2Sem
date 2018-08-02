<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<title>Cadastro</title>
</head>
<body>

	<div class="container mt-5">
		<h1 class="mb-5 pl-3">Cadastro de pessoa</h1>
		<div class="col-12">
			<form action="cadastrar" method="post">
				<div class="form-group">
					<label for="name">Nome</label> <input type="text"
						class="form-control" id="name" name="name"
						placeholder="Digite o seu nome">
				</div>

				<div class="form-group mb-4">
					<label for="msg">Idade</label>
					<input type="number" class="form-control" id="age" name="age" placeholder="Digite a sua idade">
				</div>

				<div class="form-check mb-5">
					<input class="form-check-input" type="checkbox" id="formCheckAposen" name="aposentado">
					<label class="form-check-label" for="formCheckAposen" > Aposentado </label>
				</div>
				<button type="submit" value="Enviar" class="btn btn-primary">Cadastrar</button>
			</form>
		</div>
	</div>
</body>
</html>