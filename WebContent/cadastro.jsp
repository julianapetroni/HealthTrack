<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;  charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Cadastrar usuario</title>
<%@ include file="header.jsp" %>
</head>
<body>
<%@ include file="menu.jsp" %>
  <div class="container">
  <h1>Cadastro do usuário</h1>
  <c:if test="${not empty msg }">
    <div class="alert alert-success">${msg}</div>
  </c:if>
  <c:if test="${not empty erro }">
    <div class="alert alert-danger">${erro}</div>
  </c:if>

  <form action="cadastro" method="post">
  
            <fieldset>
            
            <div class="form-group">
      		<label for="id-nome">Nome</label>
      		<input type="text" name="nome" id="id-nome" class="form-control" pattern="[a-zA-Z]+[ ][a-zA-Z]+" placeholder="Digite o seu nome (somente letras)" required />
    			</div>
  			<input type="hidden" value="nome" name="acao">
            
            <div class="form-group">
      		<label for="id-email">Email</label>
      		<input type="text" name="email" id="id-email" class="form-control" placeholder="exemplo@email.com" required />
    			</div>
  			
  			<div class="form-group">
      		<label for="id-senha">Senha</label>
      		<input type="password" name="senha" id="id-senha" class="form-control" placeholder="Digite a sua senha" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" title="Senha com no minimo 6 caracteres, combinando numeros e letras maiusculas e minusculas" required />
    			</div>
            
            <div class="form-group">
      		<label for="id-email">Confirmar email</label>
      		<input type="text" name="email" id="id-email" class="form-control" placeholder="exemplo@email.com" required />
    			</div>
    			
    			<div class="form-group">
      		<label for="id-senha">Confirmar senha</label>
      		<input type="password" name="senha" id="id-senha" class="form-control" placeholder="Digite a sua senha" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" title="Senha com no minimo 6 caracteres, combinando numeros e letras maiusculas e minusculas" required />
    			</div>
    			
    			<div class="form-group">
      		<label for="id-altura">Altura</label>
      		<input type="text" name="altura" id="id-altura" class="form-control" placeholder="Digite a sua altura em metros" step="0.01" size='10' required />
    			</div>
    			
            <!-- Botões de escolha única -->
            <label for="genero">Sexo: </label>
            <input type="radio" name="genero" value="Feminino" checked> Feminino
            <input type="radio" name="genero" value="Masculino"> Masculino<br>
            <br>
            <!-- Caixas de múltipla escolha -->
            <label for="objetivo">Objetivo: </label>
            <input type="radio" name="interesses" value="Emagrecer" checked> Emagrecer
            <input type="radio" name="interesses" value="Manterpeso"> Manter
            <input type="radio" name="interesses" value="Aumentarpeso"> Crescer<br>
<br>

            <!--  Calular idade -->
            <script type="text/javascript">
            function calcular_idade(){
            Calendar nasc = usuario.getDatai();
			Date datanasc = nasc.getTime();
			LocalDate birth = datanasc.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
			Date hoje = Calendar.getInstance().getTime();
			LocalDate today = hoje.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
			var idade = Period.between(birth, today).getYears();
            }
			</script>


            <!-- Caixa para data -->
            <div class="form-group">
            <label for="datad"> Data de nascimento </label>
            <input type="text" name="dataNasc" id="datad" class="form-control" onBlur="calcular_idade()" <fmt:formatDate value="${data}"/>><!--ao perder o foco a função calcular é executada -->
            </div>
            
     
			
			<!-- Caixa para idade -->
			<div class="form-group">
      		<label for="id-idade">Idade</label>
      		<input type="text" name="idade" id="id-idade" class="form-control" placeholder="Idade atual" />
    			</div>
			
            <!-- Campo para upload -->
            <label for="foto">Foto: </label>
            <input type="file" id="foto"><br>



            <div id="mascara"></div>
            <div class="form-footer">
                <div class="col-md-6 text-left">
                
                <script type="text/javascript">
											function Inicio()
											{
												location.href=" dashboard.jsp"
											}
								  </script>
                                        <input class="btn btn-outline-success my-2 my-sm-0" type="submit" value="Salvar" id="btnsubmit">
                	
                						   <button class="btn btn-outline-success my-2 my-sm-0" type="reset" id="btnresete">Limpar</button>
					               
                </div>
            </div>

				</fieldset>
            </form>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>


