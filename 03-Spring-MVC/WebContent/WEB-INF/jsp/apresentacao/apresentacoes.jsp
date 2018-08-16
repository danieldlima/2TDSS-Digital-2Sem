<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<tags:template titulo="Página de sucesso">
	<jsp:attribute name="scripts">
		<script src="<c:url value="/resources/js/bootstrap.min.js"/>" ></script>
	</jsp:attribute>
	
	<jsp:body>
		<h1>Cadastrado com sucesso</h1>
		
		
		
	<div class="container mt-5">	
		<table class="table">
		  <thead>
		    <tr>
		      <th scope="col"></th>
		      <th scope="col">Nome do grupo</th>
		      <th scope="col">Duração</th>
		      <th scope="col">Descrição</th>
		      <th scope="col">O grupo se apresentou?</th>
		      <th scope="col">Tipo do câmbio</th>
		    </tr>
		  </thead>
		  <tbody>
		    <tr>
		      <th scope="row">1</th>
		      <td>${apresentacao.nomeGrupo}</td>
		      <td>${apresentacao.duracao}</td>
		      <td>${apresentacao.descricao}</td>
		      <td>${apresentacao.apresentado}</td>
		    </tr>    
		  </tbody>
		</table>
</div>
		
	</jsp:body>


</tags:template>