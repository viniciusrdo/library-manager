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

<button id="MenuADM" class="float-left submit-button" >
			
			<h4>Voltar à página de menu</h4>
			
		</button>

		<script type="text/javascript">
    		document.getElementById("MenuADM").onclick = function () {
        		location.href = "/LibManager/menuADM.jsp";
    			};
		</script>

</html>
