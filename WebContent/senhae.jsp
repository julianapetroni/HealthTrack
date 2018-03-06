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
<body background="resources/image/corrida.png">
<header>
        <%@ include file="menue.jsp" %>
</header>

<main>

        <legend id="legenda">
            <h2>Change your password</h2>
        </legend>
        <h5><form id="meu_form" action="dashboarde.jsp" method="post">
            
            Your password:
            <input type="password" name="senha" id="senha" minlength="6" placeholder="Required" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" title="Senha com no minimo 6 caracteres, combinando numeros e letras maiusculas e minusculas" />
            <br>
            <br>
            New password:
            <input type="password" name="nsenha" id="nsenha" minlength="6" placeholder="Required" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" title="Senha com no minimo 6 caracteres, combinando numeros e letras maiusculas e minusculas" />
            <br>
            <br>
           New password:
            <input type="password" name="conf_senha" id="conf_senha" placeholder="CRequired" /><br>
<br>
           <div id="mascara"></div>
            <div class="form-footer">
                <div class="col-md-6 text-left">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="btnsubmit">Submit</button>
					
                </div>
            </div>
            </form></h5>
        
    </main>
     <footer>
    <%@ include file="footer.jsp" %>
    </footer>
</body>
</html>