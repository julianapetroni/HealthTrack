<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<html>
<head>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Exercício</title>
<%@ include file="header.jsp" %>

</head>
<body>
<header>

        <%@ include file="menu.jsp" %>
    </header>

    <main>
    <form action="exercicio" method="post">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                
                <c:if test="${not empty msg }">
    						<div class="alert alert-success">${msg}</div>
  					</c:if>
  				<c:if test="${not empty erro }">
    						<div class="alert alert-danger">${erro}</div>
  					</c:if>
  					
                    <form id="formt" action="exercicio" method="POST">
                        <fieldset>

                            <legend id="legenda">
                                <h1>Gerenciar atividade física</h1>
                            </legend>
                            
                            <fieldset>
                            
                            <c:set var="data" value="<%=new java.util.Date()%>" />
            
            <div class="form-group">
      		<label for="id-data">Data</label>
      		<input type="text" name="data" id="id-data" class="form-control"  placeholder="Data da pesagem (dd/MM/yyyy)" >
    			</div> 
    			
    			<div class="form-group">                               
            <label for="tempo">Duração do exercício</label>
            <input type="text" id="tempo" class="form-control" required>
            </div>
    			
    			 <div class="form-group">
      		<label for="id-atividade">Atividade</label>    		
             <form id="box" method="POST"><select id="id-atividade" name="exercicio"><option value="W">Caminhada</option><option value="R">Corrida</option><option value="P" selected>Bicicleta</option><option value="G">Musculação</option></select></form><br><br>
             </div>                                   
        
		    <div class="form-group"> 
            <label for="id-intensidade">Intensidade</label>
            <select id="id-intensidade" name="intensidade"><center><option value="N" selected>Normal</option><option value="A">Alta</option><option value="B">Baixa</option></center></select>
            </div>  
            
            <br>                                  
            
            <div class="form-group"> 
            <label for="id-calorias">Calorias</label>
            <form type="number" id="id-calorias" name="calorias" method="post" class="form-control"  placeholder="Kcal">
            </form>
            </div>                                    
                                                
          <!-- <button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="btn" onclick="deleteRow(this)">Delete</button>
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="btn1" onclick="editRow(this)">Editar</button>
				 -->						 
                              <!--  <script>
                                
                                function deleteRow(r) {
                                    var i = r.parentNode.parentNode.rowIndex;
                                    document.getElementById("table").deleteRow(i);
                                }
                                
                                    function editRow(r) {
                                        var i = r.parentNode.parentNode.rowIndex;
                                        document.getElementById("table").editRow(i);
                                    }

                                    </script> -->
                                    
                                   
                                
                              <!-- Botão salvar --> 
 	 
 	 							<input type="submit" value="Salvar" class="btn btn-primary"> 									
     
    									<!-- <script> 
    									function adicionar(){
    										
    										document.getElementById('table').innerHTML += '<td><input type="date" id="data" value=<fmt:formatDate type="date" value="${data}" />><br></td><td><br><label>Esporte</label><form id="box" method="POST"><select id="boxat" name="exercicio"><option value="W">Caminhada</option><option value="R">Corrida</option><option value="P" selected>Bicicleta</option><option value="G">Musculação</option></select></form><br><br><input type="hour" id="tempo"><label>horas</label><br></td><td><br> <label>Intensidade</label><select id="boxat" name="intensidade"><center><option value="N" selected>Normal</option><option value="A">Alta</option><option value="B">Baixa</option></center></select>br><br><input type="number" id="numero" value="400" placeholder="Kcal"><label>Kcal</label><br></td><td><button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="btn" onclick="deleteRow(this)">Delete</button></td><td><button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="btn1" onclick="editRow(this)">Editar</button></tr>';
    								
    									}
    							
    									</script>
 -->
                        </fieldset>
                    </form>
                </div>
            </div>
            <br>
        </div>
        
    </main>


    <footer>
    <%@ include file="footer.jsp" %>
    </footer>

</body>
</html>





