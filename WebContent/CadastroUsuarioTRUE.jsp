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
<br><br>

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
<div align="center">

<h1>Usuario ${requestScope.nome} cadastrado com sucesso!! </h1> 

<div align="center">
     	<input type="button" value="Voltar ao menu principal" onClick="history.go(-2)">
</div>


</div>

</body>

</html>
