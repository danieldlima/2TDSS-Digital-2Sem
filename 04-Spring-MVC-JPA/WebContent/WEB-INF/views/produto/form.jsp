<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<tags:template titulo="Cadastrar Produtos" tituloPagina="Cadastro de produto">

	<jsp:attribute name="scripts">
		<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
	</jsp:attribute>
	
	<jsp:body>
		<div class="container">
			<c:if test="${not empty msg}">
				<div class="alert alert-success mt-5 mb-5">
					${msg}					
				</div>
			</c:if>
		
			<form action="cadastrar" method="post">
				<div class="form-group">
					<label for="inputNome">Nome do produto</label>
					<input type="text" id="inputNome" name="nome" placeholder="Digite o nome do produto"  class="form-control">
				</div>			
				
				<div class="form-group">
					<label for="inputPreco">Preço do produto</label>
					<input type="number" id="inputPreco" name="preco" placeholder="Digite o preco do produto"  class="form-control">
				</div>
				
				<div class="form-check pl-0">
					<label for="inputPerecivel">Perecível</label>
					<input type="checkbox" id="inputPerecivel" name="perecivel" class="mt-1">
				</div>
				
				<button class="btn btn-primary mt-5">Cadastrar</button>
					
			</form>
		</div>
		
	</jsp:body>

</tags:template>