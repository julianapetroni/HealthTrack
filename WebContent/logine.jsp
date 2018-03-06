<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
<%@ include file="header.jsp" %>

</head>
<body background="resources/image/corrida.png">
	 <header>

        <%@ include file="menue.jsp" %><body>
<header>
    </header>

    <main>
    
    <%
     if(request.getParameter("email") != null)
    session.setAttribute("attrUsuario", request.getParameter("email"));
  %>
  
        <div class="container">
                <form method="post" action="logine.jsp">
                    <fieldset>
                        <h1>Login</h1>
                        <div id="blocoLogin" class="container">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="input-group">

                                        <label class="input-group input-group-addon"><b class="glyphicon glyphicon-user"> E-mail</b></label>
                                        <input autofocus type="email" class="form-control" id="email" placeholder="Type your e-mail" required>
                                    </div>
                                </div>
                            </div>
                            <br>

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="input-group">
                                        <label class="input-group input-group-addon"><b class="glyphicon glyphicon-log-in"> Password </b></label>
                                        <input type="password" class="form-control" id="password" minlength="6" placeholder="Type yout password" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" title="Senha com no minimo 6 caracteres, combinando numeros e letras maiusculas e minusculas">
                                    </div>

                                    <a href="recuperarSenhae.jsp" rel="modal">Forgot you password?</a>
                                                                   </div>

                                <div id="mascara"></div>
                                <div class="form-footer">
                                    <div class="col-md-12 text-left">
                                    
                                    <script type="text/javascript">
											function Inicio()
											{
												location.href=" dashboarde.jsp"
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