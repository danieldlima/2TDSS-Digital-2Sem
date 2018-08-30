<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<tags:template titulo="Editar Produto" tituloPagina="Editar Produto">

	<jsp:attribute name="scripts">
		<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
	</jsp:attribute>
	<jsp:body>
		<div class="container p-0">
			
			<c:if test="${not empty msg}">
				<div class="alert alert-success mt-5 mb-5">
					${msg}
				</div>
			</c:if>
		
			<c:url value="/produto/editar" var="link" />
			<form:form action="${link}" method="post" commandName="produto">
				<form:hidden path="codigo"/>
			
				<div class="form-group">
					<form:label path="nome">Nome</form:label>
					<form:input path="nome" cssClass="form-control" />
				</div>
				
				<div class="form-group">
					<form:label path="preco">Preço</form:label>
					<form:input path="preco" cssClass="form-control" />
				</div>
				
				<div class="form-check pl-0">					
					<form:checkbox path="perecivel"/>
					<form:label path="perecivel">Perecível</form:label>
				</div>
				
				<input type="submit" value="ALTERAR" class="btn btn-primary"/>		
			</form:form>		
		</div>
	</jsp:body>
</tags:template>
