<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<title>Dashboard do usuário :${param.nome}</title>
<%@ include file="header.jsp" %>


  
<script language="javascript">
function calcular(){
var pesoi = document.getElementById("peso").value; //pega o valor do input do valor 1
var metai = document.getElementById("meta").value; //pega o valor do input do valor 2
var faltam = peso - meta; //calcula 
 
//insere no html da div subtraçao o input com o valor da calculo
document.getElementById("faltam").innerHTML = "Faltam: <input type='text' value='"+ faltam +"'/>";
}
</script>

<!-- Calcular o IMC -->

<script type="text/javascript">
function calcula_imc(){
var altura = document.imcForm.altura.value;
var peso = document.imcForm.peso.value;
var quadrado = (altura * altura);

var calculo = (peso/quadrado);

if(calculo<18.5){
alert("Você está magro com esse indice: " + calculo);
}
else if(calculo>=18.5 && calculo<24.9){
alert("Você está normal com esse indice: " + calculo);
}

else if(calculo>=25 && calculo<29.9) {
alert("Você está com sobre peso com esse indice: " + calculo);
}
else if(calculo>=30 && calculo<39.9) {
alert("Você está com obesidade com esse indice: " + calculo);
}
else if (calculo>40)
alert("Você estácom obesidade grave com esse indice: " + calculo);
}

</script>


</head>
<body>
<%@ include file="menu.jsp" %>
      
    
    <div class="container">
  	<h1>Dashboard</h1>
  	<c:if test="${not empty msg }">
    <div class="alert alert-success">${msg}</div>
  	</c:if>
  	<c:if test="${not empty erro }">
    <div class="alert alert-danger">${erro}</div>
 	 </c:if>
  
  
  	<form action="dashboard" method="post">

    <h4>Bem vindo :${param.nome} à página Inicial do Sistema!</h4>
  
<fieldset>
            
            <div class="form-group">
      		<label for="id-nome">Nome</label>
      		<input type="text" name="nome" id="id-nome" class="form-control" pattern="[a-zA-Z]+[ ][a-zA-Z]+" placeholder="Digite o seu nome (somente letras)" value= ${param.nome} >
    			</div>    

 
 			<div class="form-group">
      		<label for="id-idade">Idade</label>
      		<input type="text" name="idade" id="id-idade" class="form-control" placeholder="Idade atual" required />
    			</div>
 
 			<div class="form-group">
      		<label for="peso">Peso</label>
      		<input type="text" name="peso" id="peso" class="form-control" placeholder="Peso (em kg)" onBlur="calcular()"value= ${param.peso} >
    			</div> <!--ao perder o foco a função calcular é executada -->

			<div class="form-group">
      		<label for="meta">Meta</label>
      		<input type="text" name="meta" id="meta" class="form-control" placeholder="Meta (em kg)" onBlur="calcular()" required />
    			</div> 

			<div class="form-group">
			<label for="faltam">Faltam</label>
			<div id="faltam" name="faltam" class="form-control"></div>
			</div>
			
			<form name="imcForm" id="imcForm" action="#">

			<div class="form-group">
      		<label for="altura">Altura</label>
      		<input type="text" name="altura" id="altura" class="form-control" placeholder="Altura (em metros)" onBlur="calcular()" value= ${param.altura} >
    			</div> 






<p>
<label for="sexo">
<input type="radio" name="sexo" value="opção" id="sexo" />
Masculino</label>
<br />
<label for="sexo">
<input type="radio" name="sexo" value="opção" id="sexo" checked />
Feminino</label>
</p>

<p><input class="btn btn-outline-success my-2 my-sm-0" id="btn-dash" type="submit" name="Enviar" type="submit" value="Calcular" onclick="calcula_imc()" />
</p>
</form>
</fieldset>
</form>

<%@ include file="footer.jsp" %>
	
</body>
</html>
	