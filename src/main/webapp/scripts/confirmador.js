/**
 * Confirmacao de exclusao de um contato
 * @author Diogo Silva
 */
 
 function confirmar(idcon){
 	let resposta = confirm("Confirma a exclusao deste contato?")
 	if(resposta == true){
 		window.location.href = "delete?idcon=" + idcon
 	}
 }