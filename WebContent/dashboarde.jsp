<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
  @import url("resources/css/styledash2.css");
</style>
<title>Dashboard do usuário</title>
<%@ include file="header.jsp" %>


  
<script language="javascript">
function calcular(){
var pesoi = document.getElementById("pesoi").value; //pega o valor do input do valor 1
var metai = document.getElementById("metai").value; //pega o valor do input do valor 2
var faltam = pesoi - metai; //calcula 
 
//insere no html da div subtraçao o input com o valor da calculo
document.getElementById("faltam").innerHTML = "Faltam: <input type='text' value='"+ faltam +"'/>";
}
</script>



</head>
<body background="resources/image/corrida.png">
	 

        <%@ include file="menue.jsp" %>
    
       <legend id="legenda">
        <h2>Dashboard</h2>
        </legend>
                   
                    <h4>Welcome <%=session.getAttribute("attrUsuario")%> </h4>
  
    
<li>
 Name:<input type="text" name="nome" id="nomed" minlength="2" pattern="[a-zA-Z]+[ ][a-zA-Z]+" value=<%=session.getAttribute("nomeUsuario")%>  required>
 </li>
 <br>
 <li>
 Age:<input type="text" id="idadei" maxlength="2" required>
 </li>
 <br>
 <li>
Weight: <input type="text" id="pesoi" onBlur="calcular()"/><br/><!--ao perder o foco a função calcular é executada -->
</li>
<br>
<li>
Goal: <input type="text" id="metai" onBlur="calcular()"/><br/>
</li>
<br>
<li>
<div id="faltam">Left: <input type="text"/></div>
</li>



<!-- Calcular o IMC -->

<script type="text/javascript">
function calcula_imc(){
var altura = document.imcForm.altura.value;


var quadrado = (altura * altura);

var calculo = (pesoi/quadrado);

if(calculo<18.5){
alert("You are thin: " + calculo);
}
else if(calculo>=18.5 && calculo<24.9){
alert("Regular: " + calculo);
}

else if(calculo>=25 && calculo<29.9) {
alert("Over weight: " + calculo);
}
else if(calculo>=30 && calculo<39.9) {
alert("Obesity: " + calculo);
}
else if (calculo>40)
alert("Severe obesity: " + calculo);
}

</script>


<form name="imcForm" id="imcForm" action="#">
<br>
<li>
Height:
<input type="text" id="altura" name="altura" />
</li>



<p>
<label>
<input type="radio" name="sexo" value="opção" id="sexo_0" />
Male</label>
<br />
<label>
<input type="radio" name="sexo" value="opção" id="sexo_1" />
Female</label>
</p>

<p><input class="btn btn-outline-success my-2 my-sm-0" id="btn-dash" type="submit" name="Enviar" type="submit" value="Calculate" onclick="calcula_imc()" />
</p>
</form>

<%@ include file="footer.jsp" %>
	
</body>
</html>
	