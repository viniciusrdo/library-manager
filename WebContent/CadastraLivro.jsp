<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="ISO-8859-1" name="viewport" content="width=device-width, initial-scale=1">
<title>SGB</title>
<style>   
Body {  
  font-family: Calibri, Helvetica, sans-serif;  
  background-color: rgb(69, 58, 228);  
    } 
</style>  
</head>
<body>
	<h1>
		<p style="color:black">   
   			Sistema Gerenciador de Bibliotecas
        </p> 
			
	</h1>
	
	<table border="5" bordercolor= "#000000" bgcolor="#FFFFFF">
	
	<c:forEach var="login" items="${login}">
	                <tr>
	                	<td> 
	                		<h3>
	                			Usu�rio: <c:out value="${login}"/></td>
	                		</h3>
	                </tr>
	            </c:forEach>
	</table>
	<br><br>
	
	<br><br>

	<form method="post" action="CadastraLivro">
		<div>
		<h2>
				Nome do Livro: <input type="text" name="nomeLivro">
				
				Quantidade de Paginas: <input type="text" name="pagQTD">
				
				<input type="submit" value="Cadastrar">
		
		</h2>
		</div>
		
		
		
		
			
	</form>
</body>
</html>