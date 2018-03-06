<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;  charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Cadastrar pressão</title>
<%@ include file="header.jsp" %>
</head>
<body>
<%@ include file="menu.jsp" %>
  <div class="container">
  <h1>Cadastro de Pressão</h1>
  <c:if test="${not empty msg }">
    <div class="alert alert-success">${msg}</div>
  </c:if>
  <c:if test="${not empty erro }">
    <div class="alert alert-danger">${erro}</div>
  </c:if>
  
  <form action="pressao" method="post">
  <div class="form-group">
      <label for="id-dtMedicao">Data da Medição</label>
      <input type="text" name="dtMedicao" id="id-dtMedicao" class="form-control">
    </div>
  	<input type="hidden" value="cadastrar" name="acao">
   
    
    <div class="form-group">
      <label for="id-ps">Pressão Sistólica</label>
      <input type="text" name="ps" id="id-ps" class="form-control">
    </div>
    
     <div class="form-group">
      <label for="id-pd">Pressão Diastólica</label>
      <input type="text" name="pd" id="id-pd" class="form-control">
    </div>
   
   	   <div class="form-group">
       <label for="id-situacao">Situação</label>
       <div id="box" method="POST"><select id="id-situacao" name="situacao"><option value="A">Alta</option><option value="N" selected>Normal</option><option value="B">Baixa</option></select></div>
       </div>
       
       

    <input type="submit" value="Salvar" class="btn btn-primary">
  </form>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>
