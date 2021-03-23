deu ruim
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
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
     	<input type="button" value="Voltar ao menu principal" onClick="history.go(-2)">
</div>

</html>
