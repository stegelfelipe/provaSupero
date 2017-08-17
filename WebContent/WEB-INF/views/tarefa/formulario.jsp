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
<script src="resources/jquery/dist/jquery.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
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
					<div class="col-sm-1"></div>
					<div class="col-sm-5">
						<h3>Adicionar Tarefa</h3>
						<form  id="ajax_form" action="adicionaTarefa" method="post">
							<div class="form-group">
								<label for="descricao">Titulo</label> <input
									class="form-control" type="text" name="titulo"
									placeholder="Título da tarefa" /> <label for="descricao">Descrição</label>
								<textarea class="form-control" rows="5" cols="5"
									name="descricao" placeholder="Descrição da tarefa"></textarea>
								<form:errors path="tarefa.descricao" cssStyle="color:red" />
								</br>
								<button class="btn btn-primary" type="submit" onclick=Alerta()>Adicionar</button>
								<a href="index.jsp" class="btn btn-default">Cancelar</a>
							</div>
						</form>
					</div>
					<div class="col-sm-6"></div>
				</div>
			</div>
		</div>
		<center>Teste desenvolvido por Felipe Stegel</center>
	</div>
</body>
</html>