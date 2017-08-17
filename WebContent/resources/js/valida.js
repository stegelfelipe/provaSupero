function finalizaAgora(id) {
	$.get("finalizaTarefa?id=" + id, function(dadosDeResposta) {
		alert("Tarefa Finalizada!");
	});
}

function exibir_ocultar(){
	var valor = document.getElementById("finalizado").value;

	if(valor == 'true'){
		document.getElementById('dtFinalizacao').style.display = 'block';

	} else {
		document.getElementById('dtFinalizacao').style.display = 'none';

	}
};


function Alerta(){
	alert('Tarefa adicionada com sucesso');
}