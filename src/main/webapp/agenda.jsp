<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="model.JavaBeans"%>
<%@ page import="java.util.ArrayList"%>

<%
ArrayList<JavaBeans> lista = (ArrayList<JavaBeans>) request.getAttribute("contatos");
%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<title>Agenda de Contatos</title>
<link rel="icon" href="imagens/fone.png">
<link rel="stylesheet" href="style.css">

</head>

<body>
	<main>
		<h1>Agenda de contatos</h1>
		<div class="agendabutton">
			<a href="novo.html" class="botao1">Novo Contato</a> <a
				href="index.html" class="botao1">Sair</a>
		</div>


		<table class="table">
			<thead>
				<tr>
					<th>ID</th>
					<th>Nome</th>
					<th>Fone</th>
					<th>Email</th>
					<th>Opções</th>
				</tr>
			</thead>

			<tbody>
				<%
				for (int i = 0; i < lista.size(); i++) {
				%>
				<tr>
					<td><%=lista.get(i).getIdcon()%></td>
					<td><%=lista.get(i).getNome()%></td>
					<td><%=lista.get(i).getFone()%></td>
					<td><%=lista.get(i).getEmail()%></td>
					<td><a href="select?idcon=<%=lista.get(i).getIdcon()%>"
						class="botao1">Editar</a> <a class="botaox"
						href="javascript: confirmar(<%=lista.get(i).getIdcon()%>)">Apagar</a></td>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>
		<script src="scripts/confirmador.js"></script>
	</main>
</body>
</html>