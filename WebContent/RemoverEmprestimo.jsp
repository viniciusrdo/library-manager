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
		<p style="color:black">   
   			Sistema Gerenciador de Bibliotecas
        </p> 
			
	</h1>
	
	<br><br>

	<form method="post" action="RemoverEmprestimo">
		<div>
		<h2>
			ID do Livro � ser devolvido:      <input type="text" name="id_Livro" required>
				
			<input type="submit" value="Devolver">
		
		</h2>
		</div>
		
		
		
		
			
	</form>
</body>
</html>