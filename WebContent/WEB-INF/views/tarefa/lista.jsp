<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista de Tarefas</title>
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/estilo.css">
<link rel="stylesheet" href="resources/css/dragndrop_table_columns.css">
<script src="resources/js/valida.js"></script>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title" align="center">Teste Prático Supero TI - Sistema de TaskList</h3>
				</div>
				<div class="row">
					<div class="col-sm-12">
						<div class="panel panel-default">
							<!-- Default panel contents -->
							<div class="panel-heading">
								<a href="novaTarefa" class="btn btn-success">Adicionar
									Tarefa</a>
							</div>

							<!-- Table -->
							<table class="table table-bordered table-hover">
								<thead>
									<tr class="dnd-moved success">
										<th>Tarefa</th>
										<th>Título</th>
										<th width="30%">Descrição</th>
										<th>Status</th>
										<th>Data de finalização</th>
										<th>Ação</th>
										<th>Concluir?</th>
									</tr>
								</thead>

								<c:forEach var="tarefa" items="${tarefas}">
									<tbody>
										<tr class="dnd-moved info">
											<td>${tarefa.id}</td>
											<td>${tarefa.titulo}</td>
											<td>${tarefa.descricao}</td>
											<c:if test="${tarefa.finalizado eq true}">
												<td><span class="label label-info">Finalizado</span></td>
											</c:if>
											<c:if test="${tarefa.finalizado eq false}">
												<td><span class="label label-danger">Não
														Finalizado</span></td>
											</c:if>
											<td><fmt:formatDate
													value="${tarefa.dataFinalizacao.time}" pattern="dd/MM/yyyy" /></td>
											<td><a href="removeTarefa?id=${tarefa.id}"
												onclick="return confirm('Tem certeza que deseja remover a tarefa?')"><img
													src="resources/img/remover.png" alt="Remover" /></a> <a
												href="mostraTarefa?id=${tarefa.id}"><img
													src="resources/img/alterar.png" alt="Alterar" /></a></td>
											<td><a href="finalizaTarefa?id=${tarefa.id}"
												onclick="return confirm('Tem certeza que deseja finalizar a tarefa?')"><img
													src="resources/img/concluido.png" alt="Finalizar" /></a></td>
										</tr>
									</tbody>
								</c:forEach>
							</table>
						</div>
						<script src="resources/js/jquery-1.11.0.min.js"></script>
						<script src="resources/jquery/dist/dragndrop_table_columns.min.js"
							type="text/javascript"></script>
						<script src="resources/js/bootstrap.min.js"></script>
						<script>
							$('.table').dragableColumns({
								drag : true,
								dragClass : 'drag',
								overClass : 'over',
								movedContainerSelector : '.dnd-moved'
							})
						</script>
					</div>
				</div>
			</div>
		</div>
		<center>Teste desenvolvido por Felipe Stegel</center>
	</div>
</body>
</html>