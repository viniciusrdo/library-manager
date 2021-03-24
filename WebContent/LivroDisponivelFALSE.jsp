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

<h1 align="center">
		<p style="color:black">   
   			Sistema Gerenciador de Bibliotecas
        </p> 
			
	</h1>
	
	<table border="5" bordercolor= "#000000" bgcolor="#FFFFFF">
	
	<c:forEach var="login" items="${login}">
	                <tr>
	                	<td> 
	                		<h3>
	                			Usuário: <c:out value="${login}"/></td>
	                		</h3>
	                </tr>
	            </c:forEach>
	</table>
	<br><br>

<h1>Emprestimo do livro com ID = ${requestScope.id_Livro} ao usuario de ID = ${requestScope.id_Usuario} falhou, porque o 
livro ${requestScope.id_Livro} já está emprestado ou não está cadastrado!! </h1> 

<br>
<h2>${requestScope.disp}</h2> 

<input type="button" value="Voltar ao Menu principal" onClick="history.go(-2)">

</body>

</html>
