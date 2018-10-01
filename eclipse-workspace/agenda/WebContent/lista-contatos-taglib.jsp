<%@ page import="java.util.*,
 br.com.caelum.jdbc.dao.*,
br.com.caelum.jdbc.modelo.*,
 java.text.*" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<c:import url="cabecalho.jsp"/>
	
	<!--  cria o DAO -->
	<table>
		<tr>
			<th>Nome</th>
			<th>Email</th>
			<th>Endereço</th>
			<th>Data de Nascimento</th>
		</tr>
		<!-- percorre os contatos montando as linhas da tabela -->
		<c:forEach var="contato" items="${contatos}" varStatus="id">
			<tr bgcolor="#${id.count % 2 == 0 ? 'aaee88' : 'ffffff'}">
				<td>${contato.nome}</td>
				<td>
					<c:if test="${not empty contato.email}">
						<a href="mailto:${contato.email}">${contato.email}</a>
					</c:if>
					<c:if test="${empty contato.email}">
						E-mail não informado
					</c:if>
				</td>
				<td>${contato.endereco}</td>
				<td><fmt:formatDate value="${contato.dataNascimento.time}" pattern="dd/MM/yyyy"/></td>
				<td>
        			<a href="mvc?logica=RemoveContatoLogic&id=${contato.id}">Remover</a>
       			</td>
       			<td>
        			<a href="mvc?logica=AlteraContatoLogic&id=${contato.id}">Alterar</a>
       			</td>
			</tr>
		</c:forEach>
	</table>
	
	<c:import url="rodape.jsp" />
</body>
</html>