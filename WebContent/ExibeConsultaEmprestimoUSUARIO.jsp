<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset='ISO-8859-1'>
<title>SGB</title>
<style>   
Body {  
  font-family: Calibri, Helvetica, sans-serif;  
  background-color: rgb(191, 189, 223);  
    } 
</style> 
</head>
<body>
	<h1>Emprestimos Totais</h1>
		<table border="5">
					<tr>
						<th>Emprestimo ID:</th>
						<th>Livro ID:</th>
						<th>Livro Nome:</th>
					</tr>
	            <c:forEach var="emprestimos" items="${listaEmprestimoUsuario}">
	                <tr>
	                	<td><c:out value="${emprestimos.id_Emprestimo}"/></td>
	                    <td><c:out value="${emprestimos.id_Livro}"/></td>
	                    <td><c:out value="${emprestimos.nome_Livro}"/></td>
	                </tr>
	            </c:forEach>
			</table>
			<p>
	<input type="button" value="Voltar" onClick="history.go(-2)">
    </body>
</html>