<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<tags:template titulo="Cadastro" tituloPagina="Cadastro de convidados">
	<jsp:attribute name="scripts">
		<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
	</jsp:attribute>

	<jsp:body>
		<div class="container">
			<c:if test="${not empty msg }">
				<div class="alert alert-success mt-5 mb-5">
					${msg}
				</div>	
			</c:if>
			
			<c:url value="/home/cadastrar" var="a" />		
			<form action="${a}" method="post" class="form">
			
				<div class="form-group">
					<label for="inputNome">Nome do convidado</label>
					<input type="text" id="inputNome" name="nome" placeholder="Digite o nome do convidado" class="form-control">
				</div>
				
				<div class="form-group">
					<label for="inputEmail">E-mail do convidado</label>
					<input type="email" id="inputEmail" name="email" placeholder="Digite o email do convidado" class="form-control">
				</div>
				
				<div class="form-check pl-0">
					<input type="checkbox" id="inputIsConfirmado" name="confirmado" value="false" class="mt-1">
					<label for="inputIsConfirmado">Foi convidado?</label>
				</div>
				
				<button class="btn btn-primary mt-5">Cadastrar</button>
			
			</form>			
		</div>
		
		
	</jsp:body>

</tags:template>