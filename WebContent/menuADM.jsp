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
button {   
       background-color: white;   
       width: 20%;  
        color: #0C0032;   
        padding: 12px;           
        margin: 10px 0px;   
        border: none;   
        cursor: pointer;
        text-align: center;  
         }       
 input[type=text], input[type=password] {   
        width: 80%;   
        margin: 8px 0;  
        padding: 6px 20px;   
        display: inline-block;   
        border: 2px solid #0C0032;   
        box-sizing: border-box;   
    }  
 button:hover {   
        opacity: 0.7;   

    }   
  .cancelbtn {   
        width: auto;   
        padding: 10px 18px;  
        margin: 10px 5px;  
    }   
.container {   

        padding: 20px;   
        background-color: #C5C6C7;   
        border: 7px solid rgb(15, 15, 15); 
        width: 650px;    
        position: relative;
        top: 49%;
        margin-top: 0px;
        left: 27%;  
    }
    .child {
        width: 700px;
        height: 42px;
        position: relative;
        top: 49%;
        margin-top: 0px; 
        left: 31%;
    } 
</style>  
	</head>
	<body>
	<center>
	
	<div>
		<h1>Sistema Gerenciador de Bibliotecas</h1>
	</div>
	</center>
	
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
	
		
	<center>

	<button id="ConsultaID" class="float-left submit-button" > Consultar ID do usuário</button>

	<script type="text/javascript">
  	  document.getElementById("ConsultaID").onclick = function () {
  	      location.href = "http://localhost:8080/LibManager/InsereConsultaIDUsuario.jsp";
  	  };
	</script>


	<br><br>

	<div >
		<button id="Cadastralivro" class="float-left submit-button" > Cadastrar livros </button>
	</div>

	<script type="text/javascript">
  	  document.getElementById("Cadastralivro").onclick = function () {
 	       location.href = "http://localhost:8080/LibManager/CadastraLivro.jsp";
 	   };
	</script>

	<br><br>

	<button id="CadastraUsuario" class="float-left submit-button" > Cadastrar usuários </button>

	<script type="text/javascript">
	    document.getElementById("CadastraUsuario").onclick = function () {
 	       location.href = "http://localhost:8080/LibManager/CadastraUsuario.jsp";
 	   };
	</script>

	<br><br>

	<button id="ConsultaEmprestimoID" class="float-left submit-button" > Consultar empréstimos por usuário </button>

	<script type="text/javascript">
 	   document.getElementById("ConsultaEmprestimoID").onclick = function () {
 	       location.href = "http://localhost:8080/LibManager/ConsultaEmprestadosID.jsp";
 	   };
	</script>

	<br><br>

	<button id="EmprestaLivros" class="float-left submit-button" > Empresta Livros </button>

	<script type="text/javascript">
 	   document.getElementById("EmprestaLivros").onclick = function () {
 	       location.href = "http://localhost:8080/LibManager/EmprestaLivros.jsp";
  	  };
	</script>

	<br><br>

	<button id="DevolverLivros" class="float-left submit-button" > Devolver Livros emprestados </button>

	<script type="text/javascript">
 	   document.getElementById("DevolverLivros").onclick = function () {
	       location.href = "http://localhost:8080/LibManager/RemoverEmprestimo.jsp";
 	   };
	</script>

	<br><br>

	<button id="ConsultaLivrosDisponiveis" class="float-left submit-button" > Consultar livros disponíveis </button>

	<script type="text/javascript">
 	   document.getElementById("ConsultaLivrosDisponiveis").onclick = function () {
  	      location.href = "http://localhost:8080/LibManager/ConsultaLivrosDisponiveis";
  	  };
	</script>


	</center>

	</body>
</html>