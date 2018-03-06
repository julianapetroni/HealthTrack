<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Recuperar senha</title>
<%@ include file="header.jsp" %>

</head>
<body >
	 <header>

        <%@ include file="menu.jsp" %>
	</header>
<main>
 <div class="window" id="janela1">
                                        <a href="login.jsp">X Fechar</a>
                                        <h4>Recuperar dados da conta</h4>
                                        <form action="" class="form-horizontal">
                                            <div class="modal-body">
                                                <p>Para recuperar sua senha, informe o endereço de e-mail cadastrado.</p>
                                                <br>
                                                <div class="form-group">
                                                    <label for="email-forgot" class="col-sm-1 control-label text-left">Email </label>
                                                    <br>
                                                    <div class="col-sm-10">
                                                        <input type="email" name="email" id="femail" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"><span>Preenchimento obrigatorio</span>
                                                    </div>
                                                </div>

                                                <br>
                                                <div class="modal-footer">
                                                    <button class="btn btn-info" onClick="window.alert('E-mail enviado com sucesso');" type="submit" id="btn" value="Continuar">Continuar</button>
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