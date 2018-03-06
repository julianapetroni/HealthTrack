<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;  charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Cadastrar peso</title>
<%@ include file="header.jsp" %>
</head>
<body>
<%@ include file="menu.jsp" %>
  <div class="container">
  <h1>Cadastro de Peso</h1>
  <c:if test="${not empty msg }">
    <div class="alert alert-success">${msg}</div>
  </c:if>
  <c:if test="${not empty erro }">
    <div class="alert alert-danger">${erro}</div>
  </c:if>
  
  <form action="peso" method="post">
  	<input type="hidden" value="cadastrar" name="acao">
    <div class="form-group">
      <label for="id-dtPesagem">Data da Pesagem</label>
      <input type="text" name="dtPesagem" id="id-dtPesagem" class="form-control">
    </div>
    
    <div class="form-group">
      <label for="peso">Peso</label>
      <input type="text" name="pesou" id="peso" class="form-control">
    </div>
   
   <div class="form-group">
      <label for="meta">Meta</label>
      <input type="text" name="metau" id="meta" class="form-control">
    </div>
    

    <input type="submit" value="Salvar" class="btn btn-primary">
    
 </form>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>


