<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<style type="text/css">
  @import url("resources/css/styledash.css");
</style>
<title>Cadastro do usuário</title>
<%@ include file="header.jsp" %>
</head>
<body background="resources/image/corrida.png">
    <header id="header">
        <%@ include file="menue.jsp" %>
    </header>

    <main>
    
    <%
     if(request.getParameter("nome") != null)
     session.setAttribute("nomeUsuario", request.getParameter("nome"));
      %>

        <legend id="legenda">
            <h2>Personal info</h2>
        </legend>
        <h5><form id="meu_form" action="cadastroe.jsp" method="post">
            Name:<br />
            <input type="text" name="nome" id="nome" pattern="[a-zA-Z]+[ ][a-zA-Z]+" placeholder="Type yot name (only letters)" />
            <br /> E-mail:
            
            <input type="email" name="email" id="email" placeholder="exemplo@email.com" /> Password:
            <input type="password" name="senha" id="senha" minlength="6" placeholder="Type your password" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" title="Senha com no minimo 6 caracteres, combinando numeros e letras maiusculas e minusculas" />
            <br>
            <br>
            E-mail:
            <input type="email" name="conf_email" id="conf_email" placeholder="example@email.com" /> Password:
            <input type="password" name="conf_senha" id="conf_senha" placeholder="Confirm yor password" /><br>
<br>
            <label for="altura">Height: </label>
            <input type="number" step="0.01" id="alturadpessoal" placeholder="(meters)" size='10' required>

            <!-- Botões de escolha única -->
            <label for="genero">Gender: </label>
            <input type="radio" name="genero" value="Feminino" checked> Female
            <input type="radio" name="genero" value="Masculino"> Male<br>
            <br>
            <!-- Caixas de múltipla escolha -->
            <label for="objetivo">Goal: </label>
            <input type="radio" name="interesses" value="Emagrecer" checked> Get thin
            <input type="radio" name="interesses" value="Manterpeso"> Maintain
            <input type="radio" name="interesses" value="Aumentarpeso"> Get bigger<br>
<br>
            <!-- Caixa para data -->
            <label for="datad"> Birthday : </label>
            <input type="date" id="datai" required>
            <br>

            <!-- Campo para upload -->
            <label for="foto">Picture </label>
            <input type="file" id="foto"><br>



            <div id="mascara"></div>
            <div class="form-footer">
                <div class="col-md-6 text-left">
                
                <script type="text/javascript">
											function Inicio()
											{
												location.href=" dashboarde.jsp"
											}
								  </script>
                                        <input class="btn btn-outline-success my-2 my-sm-0" type="submit" value="Save" id="btnsubmit" onClick="Inicio()">
                						   <button class="btn btn-outline-success my-2 my-sm-0" type="reset" id="btnresete">Clear</button>
					               
                </div>
            </div>

				</fieldset>
            </form></h5>


        
    </main>
    <footer id="footer">
    <%@ include file="footer.jsp" %>
    </footer>

</body>
</html>