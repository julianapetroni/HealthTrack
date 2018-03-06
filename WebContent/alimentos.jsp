<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;  charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Cadastrar alimento</title>
<%@ include file="header.jsp" %>
</head>
<body>
<%@ include file="menu.jsp" %>
  <div class="container">
  <h1>Cadastro de Alimento</h1>
  <c:if test="${not empty msg }">
    <div class="alert alert-success">${msg}</div>
  </c:if>
  <c:if test="${not empty erro }">
    <div class="alert alert-danger">${erro}</div>
  </c:if>
  
  <form action="alimentos" method="post">
  <div class="form-group">
      <label for="id-dtAlimentacao">Data da Alimentacao</label>
      <input type="text" name="dtAlimentacao" id="id-dtAlimentacao" class="form-control">
    </div>
  	<input type="hidden" value="cadastrar" name="acao">
    
    <div class="form-group">
      <label for="id-cal">Calorias</label>
      <input type="text" name="calorias" id="id-cal" class="form-control">
    </div>
    <div class="form-group">
      <label for="id-tipoRefeicao">Tipo de Refeicao</label>
      <input type="text" name="tipoRefeicao" id="id-tipoRefeicao" class="form-control">
    </div>  
      <div class="form-group">
      <label for="id-dsRefeicao">Descricao da Refeicao</label>
      <input type="text" name="dsRefeicao" id="id-dsRefeicao" class="form-control">
    </div>                                          
   
   
    <input type="submit" value="Salvar" class="btn btn-primary">
  </form>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>


