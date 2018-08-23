<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<tags:template titulo="Lista de Produtos" tituloPagina="Lista de produtos">

	<jsp:attribute name="scripts">
		<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
	</jsp:attribute>

	<jsp:body>
		<div class="container p-0">
			<table class="table">
				<thead>
					<tr class="bg-secondary text-light">
						<th scope="col" class="border-right">Codigo</th>
						<th scope="col" class="border-right">Nome</th>
						<th scope="col" class="border-right">Preço do produto</th>
						<th scope="col">Perecível</th>
					</tr>
				</thead>
				
				<tbody>
					<c:forEach var="p" items="${produtos }">
						<tr>
							<td>${p.codigo}</td>
							<td>${p.nome}</td>
							<td>R$ ${p.preco}</td>
							<td>${p.perecivel ? "perecível" : "Não perecível"}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</jsp:body>

</tags:template>