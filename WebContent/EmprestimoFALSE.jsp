<html>

<body>
<h1>Emprestimo do livro com ID = ${requestScope.id_Livro} ao usuario de ID = ${requestScope.id_Usuario} falhou!! </h1> 

<br>
<h2>${requestScope.disp}</h2> 

<button id="MenuADM" class="float-left submit-button" >
			
			<h4>Voltar à página de menu</h4>
			
		</button>

		<script type="text/javascript">
    		document.getElementById("MenuADM").onclick = function () {
        		location.href = "/LibManager/menuADM.jsp";
    			};
		</script>

</body>

</html>
