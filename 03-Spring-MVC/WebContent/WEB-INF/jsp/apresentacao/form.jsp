<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<tags:template titulo="Cadastrar Apresentação">

	<jsp:attribute name="scripts">
		<script src="<c:url value="/resources/js/bootstrap.min.js"/>" ></script>
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
					<label for="inputNome">Nome do Grupo</label>
					<input type="text" id="inputNome" name="nomeGrupo" placeholder="Digite o nome do grupo" class="form-control">
				</div>
				
				<div class="form-group">
					<label for="inputDuracao">Duração da apresentação</label>
					<input type="number" id="inputDuracao" name="duracao" placeholder="Digite a duração da apresentação" class="form-control">
				</div>
				
				<div class="form-group">
					<label for="inputDesc">Descrição da apresentação</label>
					<textarea rows="5" cols="1" id="inputDesc" name="descricao" placeholder="Digite a descrição da apresentação" class="form-control"></textarea>
			
				</div>
				
				<div class="form-check pl-0">
					<label for="inputIsApresentado" class="mr-2">O grupo se apresentou?</label>
					<input type="checkbox" id="inputIsApresentado" name="apresentado" class="form__radio-input mt-1">
				</div>
				
				<button type="submit" class="btn btn-primary mt-5">Cadastrar</button>
			</form>
		</div>	
	</jsp:body>

</tags:template>