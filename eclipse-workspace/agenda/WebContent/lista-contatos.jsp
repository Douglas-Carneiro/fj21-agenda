<%@ page import="java.util.*,
 br.com.caelum.jdbc.dao.*,
br.com.caelum.jdbc.modelo.*,
 java.text.*" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="dao" class="br.com.caelum.jdbc.dao.ContatoDao"/>
	<table>
		<tr>
			<th>Nome</th>
			<th>Email</th>
			<th>Data de Nascimento</th>
		</tr>
		<%
		//ContatoDao dao = new ContatoDao();
		List<Contato> contatos = dao.getLista();
		
		for(Contato contato : contatos){
		%>
			<tr>
				<td><%=contato.getNome() %></td>
				<td><%=contato.getEmail() %></td>
				<td><%=contato.getEndereco() %></td>
				<%SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy"); %>
				<td><%=sdf.format(contato.getDataNascimento().getTime()) %></td>
			</tr>
		<%
		}
		%>
	</table>
</body>
</html>