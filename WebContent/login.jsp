<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;  charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Cadastrar login</title>
<%@ include file="header.jsp" %>
</head>
<body>
<%@ include file="menu.jsp" %>
  <div class="container">
  <h1>Cadastro de login</h1>
  <c:if test="${not empty msg }">
    <div class="alert alert-success">${msg}</div>
  </c:if>
  <c:if test="${not empty erro }">
    <div class="alert alert-danger">${erro}</div>
  </c:if>
  
   <form action="login" method="post">
  <div class="form-group">
            <form action="login" method="post">
  			<input type="hidden" value="caadastrar" name="acao">
    		
                        <h1>Login</h1>
                        <div id="blocoLogin" class="container">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="input-group">

                                        <label class="input-group input-group-addon"><b class="glyphicon glyphicon-user"> E-mail</b></label>
                                        <input autofocus type="email" name="email" class="form-control" id="email" placeholder="Digite o seu e-mail" required>
                                    </div>
                                </div>
                            </div>
                            <br>

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="input-group">
                                        <label class="input-group input-group-addon"><b class="glyphicon glyphicon-log-in"> Senha </b></label>
                                        <input type="password" name="senha" class="form-control" id="password" minlength="6" placeholder="Digite a sua senha" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" title="Senha com no minimo 6 caracteres, combinando numeros e letras maiusculas e minusculas">
                                    </div>

                                    <a href="recuperarSenha.jsp">Recuperar senha</a>
                                    </div>

                                <div id="mascara"></div>
                                <div class="form-footer">
                                    <div class="col-md-12 text-left">
                                    
                                    <script type="text/javascript">
											function Inicio()
											{
												location.href=" dashboard.jsp"
											}
								  </script>
                                        <input class="btn btn-info" type="submit" value="Login" id="btn" onClick="Inicio()">
                                        

                                    </div>
                                </div>
                            </div>
                            </div>
                    </fieldset>
                </form>
            </div>
    </main>
        

    <footer>
    <%@ include file="footer.jsp" %>
    </footer>

</body>
</html>
  

