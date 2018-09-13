<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<tags:template titulo="Lista" tituloPagina="Lista de Convidados">

	<jsp:attribute name="scripts">
		<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
	</jsp:attribute>
	
	<jsp:body>
		
		<div class="container">
			
			<c:if test="${not empty msg }">
				<div class="alert alert-success">
					${msg }
				</div>
			</c:if>
			
			<table class="table">
				
				<thead>
					<tr>
						<th>Codigo</th>
						<th>Nome</th>
						<th>E-mal</th>
						<th>Confirmado</th>
					</tr>
				</thead>
				
				<tbody>
					<c:forEach var="c" items="${convidados}">
						<tr>
							<td>${c.codigo}</td>
							<td>${c.email}</td>
							<td>${c.nome}</td>
							<td>${c.confirmado ? "Convidado confirmado" : "Confirmação pendente"}</td>
							<td align="center">
								<%-- <a href="<c:url value="/produto/editar/${p.codigo}" />" class="btn btn-primary">Editar</a> --%>
							
								<!-- Button trigger modal -->
								<button onclick="idAlterarStatus.value = ${p.confirmado}" id="${p.confirmado}" type="button" class="btn btn-danger" data-toggle="modal" data-target="#exampleModal">
								  	Alterar Status
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
			      	<input type="hidden" id="idAlterarStatus" name="id" />
			        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			        <button type="submit" class="btn btn-primary">Alterar Status</button>
		        </form>
			      </div>
			    </div>
			  </div>
			</div>
					
		</div>
		
	</jsp:body>

</tags:template>