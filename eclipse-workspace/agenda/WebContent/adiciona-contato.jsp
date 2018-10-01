<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="caelum" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Adicionar contato</title>
		<link href="js/jquery-ui.css" rel="stylesheet">
		<script src="js/external/jquery/jquery.js"></script>
		<script src="js/jquery-ui.js"></script>
	</head>
	<body>
		<c:import url="cabecalho.jsp" />
		
		<h1>Adiciona Contatos</h1>
		<hr />
		<form action="adicionaContato">
			Nome: <input type="text" name="nome" /><br />
			E-mail: <input type="text" name="email" /><br />
			Endereço: <input type="text" name="endereco"/><br />
			Data Nascimento: <caelum:campoData id="dataNascimento" /><br />
			<input type="submit" value="Gravar" /><br /> 
		</form>
		<c:import url="rodape.jsp"/>
	</body>
</html>