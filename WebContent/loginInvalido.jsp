<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
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
			Usuário e/ou senha incorreto. 
			<br><br> 
			Por favor, clique no botão e tente novamente.
		</h1>
			<br>
		
		<button id="myButton" class="float-left submit-button" >
			
			<h4>Voltar à página de login</h4>
			
		</button>

		<script type="text/javascript">
    		document.getElementById("myButton").onclick = function () {
        		location.href = "/LibManager/index.html";
    			};
		</script>
		
	</body>
</html>