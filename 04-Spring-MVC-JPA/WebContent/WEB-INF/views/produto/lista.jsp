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
						<th scope="col" class="border-right">Perecível</th>
						<th scope="col"></th>
						<th></th>
					</tr>
				</thead>
				
				<tbody>
					<c:forEach var="p" items="${produtos}">
						<tr>
							<td>${p.codigo}</td>
							<td>${p.nome}</td>
							<td>R$ ${p.preco}</td>
							<td>${p.perecivel ? "perecível" : "Não perecível"}</td>
							<td>
								<a href="<c:url value="/produto/editar/${p.codigo}" />">Editar</a>
							</td>
							<td>
								<!-- Button trigger modal -->
								<button type="button" class="btn btn-danger" data-toggle="modal" data-target="#exampleModal">
								  Excluir
								</button>
								
								<!-- Modal -->
								<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
								  <div class="modal-dialog" role="document">
								    <div class="modal-content">
								      <div class="modal-header">
								        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
								        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
								          <span aria-hidden="true">&times;</span>
								        </button>
								      </div>
								      <div class="modal-body">
								        <form>
								        	<inpu type="hidden" id="inputProduto" name="id">
								        </form>
								      </div>
								      <div class="modal-footer">
								        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
								        <button type="button" class="btn btn-primary">Save changes</button>
								      </div>
								    </div>
								  </div>
								</div>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</jsp:body>
</tags:template>