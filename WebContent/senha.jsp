<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
  @import url("resources/css/styledash2.css");
</style>
<title>Senha</title>
<%@ include file="header.jsp" %>

    </head>
<body>
<header>
        <%@ include file="menu.jsp" %>
</header>

<main>

        <legend id="legenda">
            <h2>Alterar senha</h2>
        </legend>
        <h5><form id="meu_form" action="senha" method="post">
      <div class="form-group">
      <label for="id-senha">Senha atual</label>
      <input type="password" name="senha" id="id-senha" class="form-control" minlength="6" placeholder="Digite a sua senha" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" title="Senha com no minimo 6 caracteres, combinando numeros e letras maiusculas e minusculas" />
      </div>
  	  <input type="hidden" value="cadastrar" name="acao">
  	  
  	  <div class="form-group">
      <label for="id-nsenha">Nova senha</label>
      <input type="password" name="nsenha" id="id-nsenha" class="form-control" minlength="6" placeholder="Digite a sua senha" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" title="Senha com no minimo 6 caracteres, combinando numeros e letras maiusculas e minusculas" />
      </div>
  	  <input type="hidden" value="cadastrar" name="acao">
  	  
      <div class="form-group">
      <label for="id-cnsenha">Nova senha</label>
      <input type="password" name="cnsenha" id="id-cnsenha" class="form-control" minlength="6" placeholder="Digite a sua senha" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" title="Senha com no minimo 6 caracteres, combinando numeros e letras maiusculas e minusculas" />
      </div>
  	  <input type="hidden" value="cadastrar" name="acao">
     
            
         
                    <!-- Botão salvar --> 
 	 
 					 <input type="submit" value="Salvar" class="btn btn-primary"> 									
     
                </div>
            </div>
            </form></h5>
        
    </main>
     <footer>
    <%@ include file="footer.jsp" %>
    </footer>
</body>
</html>