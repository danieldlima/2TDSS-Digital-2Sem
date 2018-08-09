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
		<h1 class="mb-5 pl-3 pb-3 border-bottom">Cadastrar</h1>
		<div class="col-12 border p-5">
			<form action="cadastrar" method="post">
				<div class="form-group">
					<label for="name">Nome</label>
					<input type="text" class="form-control" id="name" name="nome" placeholder="Digite o seu nome">
				</div>
				
				<div class="form-group">
					<label for="idade">Idade</label>
					<input type="number" class="form-control" id="idade" name="idade" placeholder="Digite a sua idade">
				</div>
				<div class="form-row mb-5">
					<div class="col-md-3 border p-3 mt-4 radius-2">
						<div class="form-check">
							<input class="form-check-input" type="checkbox" id="chkCNH" name="cnh">
							<label class="form-check-label" for="chkCNH">CNH</label>
						</div>
					</div>
					
					<div class="col-md-9">
						<div class="form-group">
					        <label for="inputGenero">Gênero</label>
					        <select id="inputGenero" class="form-control" name="genero">			        
						        <option selected>Selecione o gênero</option>
						        <option value="FEMININO">Feminino</option>
						        <option value="MASCULINO">Masculino</option>
					        </select>
				        </div>
			        </div>
		        </div>
				<button type="submit" value="Enviar" class="btn btn-primary pl-5 pr-5">Enviar</button>
			</form>
		</div>	
	</div>
</body>
</html>