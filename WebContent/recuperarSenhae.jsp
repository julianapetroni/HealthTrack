<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Recuperar senha</title>
<%@ include file="header.jsp" %>

</head>
<body background="resources/image/corrida.png">
	 <header>

        <%@ include file="menue.jsp" %>
	</header>
<main>
 <div class="window" id="janela1">
                                        <a href="logine.jsp" class="fechar">X Close</a>
                                        <h4> your </h4>
                                        <form action="Forgot your password or e-mail?" class="form-horizontal">
                                            <div class="modal-body">
                                                <p>Please type your e-mail </p>
                                                <br>
                                                <div class="form-group">
                                                    <label for="email-forgot" class="col-sm-1 control-label text-left">Email </label>
                                                    <br>
                                                    <div class="col-sm-10">
                                                        <input type="email" name="email" id="femail" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"><span>Require</span>
                                                    </div>
                                                </div>

                                                <br>
                                                <div class="modal-footer">
                                                    <button class="btn btn-info" onClick="window.alert('E-mail enviado com sucesso');" type="submit" id="btn" value="Continuar">Continue</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
</main>
 <footer>
			 <%@ include file="footer.jsp" %>
            </footer>
</body>
</html>