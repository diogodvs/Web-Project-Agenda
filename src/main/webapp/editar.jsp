<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="icon" href="imagens/fone.png">
<link rel="stylesheet" href="style.css">
<title>Editar Contato</title>
</head>
<body>
	<div id="agendanew">
		<h1>Editar Contato</h1>
		<form name="frmContato" action="update">
			<table id="table">
			
					<input type="text" name="idcon" class="caixa3" readonly
						value="<%out.print(request.getAttribute("idcon"));%>">
				
					<input type="text" name="nome" class="caixa1"
						value="<%out.print(request.getAttribute("nome"));%>">
				
					<input type="text" name="fone" class="caixa1"
						value="<%out.print(request.getAttribute("fone"));%>"
						onkeypress="mask(this, mphone)" onblur="mask(this, mphone)">
				
					<input type="text" name="email" class="caixa1"
						value="<%out.print(request.getAttribute("email"));%>">
				
			</table>
			<table>
				<div class="botoesedt">
					<button value="Salvar" type="submit" onclick="validar()"
						class="but">Salvar</button>
					<button href="main" class="but">Cancelar</button>
				</div>
			</table>
		</form>
		<script src="scripts/validador.js"></script>
	</div>

</body>
</html>
