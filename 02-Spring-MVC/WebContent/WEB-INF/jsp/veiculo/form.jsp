<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<title>Cadastro de veículo</title>
</head>
<body>

	<div class="container mt-5">
		<h1 class="mb-5 pl-3 pb-3 border-bottom">Cadastrar</h1>
		<div class="col-12 border p-5">
			<form action="cadastrar" method="post">
				<div class="form-group">
					<label for="modelo">Modelo do carro</label>
					<input type="text" class="form-control" id="modelo" name="modelo" placeholder="Digite o modelo do carro">
				</div>
				
				<div class="form-group">
					<label for="marca">Marca</label>
					<input type="text" class="form-control" id="marca" name="marca" placeholder="Digite a marca do carro">
				</div>
				
				<div class="form-group">
					<label for="ano">Ano do carro</label>
					<input type="number" class="form-control" id="ano" name="ano" placeholder="Digite o ano do carro">
				</div>
				
				<div class="form-row mb-5">
					<div class="col-md-3 border p-3 mt-4 radius-2">
						<div class="form-check">							
							<label for="chkEstadoDoCarro">Novo?</label>
					        <input type="checkbox" class="form__radio-input" id="chkEstadoDoCarro" name="novo">					        
					        <span style="display: none" name="estadoCarro"></span>
						</div>
					</div>
			        
			        <div class="form-group">
                           <div class="">
                               <label for="auto" class="form__radio-label">
                                   Automático
                               </label>
                               <input type="radio" value="AUTOMATICO" id="auto" name="cambio">
                           </div>

                           <div class="">
                               <label for="manual">
                                   Manual
                               </label>
                               <input type="radio" value="MANUAL" id="manual" name="cambio">
                           </div>
                       </div>
		        	</div>
				<button type="submit" value="Enviar" class="btn btn-primary pl-5 pr-5">Enviar</button>
			</form>
		</div>	
	</div>
</body>
</html>