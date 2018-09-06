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
		<c:if test="${not empty msg}">
			<div class="alert alert-success mt-5 mb-5">
				${msg}
			</div>
		</c:if>
		
			<table class="table">
				<thead>
					<tr class="bg-secondary text-light">
						<th scope="col" class="border-right">Codigo</th>
						<th scope="col" class="border-right">Nome</th>
						<th scope="col" class="border-right">Preço do produto</th>
						<th scope="col" class="border-right">Perecível</th>
						<th scope="col"></th>
					</tr>
				</thead>
				
				<tbody>
					<c:forEach var="p" items="${produtos}">
						<tr>
							<td>${p.codigo}</td>
							<td>${p.nome}</td>
							<td>R$ ${p.preco}</td>
							<td>${p.perecivel ? "perecível" : "Não perecível"}</td>
							<td align="center">
								<a href="<c:url value="/produto/editar/${p.codigo}" />" class="btn btn-primary">Editar</a>
							
								<!-- Button trigger modal -->
								<button onclick="idRemover.value = ${p.codigo}" id="${p.codigo}" type="button" class="btn btn-danger" data-toggle="modal" data-target="#exampleModal">
								  Excluir
								</button>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
					
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
      					<p>Deseja relmente excluir o item selecionado?</p>								        
			      </div>
			      <div class="modal-footer">
			      <form method="post" action="remover">
			      	<input type="hidden" id="idRemover" name="id" />
			        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			        <button type="submit" class="btn btn-primary">Remover</button>
		        </form>
			      </div>
			    </div>
			  </div>
			</div>
		</div>
	</jsp:body>
</tags:template>