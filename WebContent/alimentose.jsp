<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
  @import url("resources/css/styledash2.css");
</style>
<title>Alimentos</title>

<%@ include file="header.jsp" %>
</head>
<body background="resources/image/corrida.png">
<header>
        <%@ include file="menue.jsp" %>
</header>

    <main>
        <div class="container">
        <c:if test= "$ {not empty msg}">
        		<div class="alert alert-success">${msg} Success!!</div>
        </c:if>
        <c:if test= "$ {not empty erro}">
        		<div class="alert alert-danger">${erro} Error!</div>
        </c:if>
            <div class="row">
                <div class="col-md-8">
                    <form action="alimentos" id="formt" method="POST">
                        <fieldset>

                            <legend id="legenda">
                                <h2>Food</h2>
                            </legend>
                            <p style="margin-bottom: 20px;"></p>
                            <div class="scrollable">
                                <table border=1 width=80% height=30% ALIGN=center id="table">
                                    <thead>
                                        <!-- Primeira linha -->
                                        <tr>
                                            <th width="30%">
                                                <center>Date</center>
                                            </th>
                                            <th>
                                                <center>Calories</center>
                                            </th>
                                            <th>
                                                <center>Meal</center>
                                            </th>
                                            <th>
                                                <center>Description</center>
                                            </th>
                                            <th>
                                                <center>Delete</center>
                                            </th>
                                            <th>
                                                <center>Edit</center>
                                            </th>
                                            
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <!-- Segunda linha -->
                                        <tr id="linha">
                                            <td><input type="date" id="data"><br></td>
                                            <td><input type="number" id="siti" value="1200"><br></td>
                                            <td>
                                                <form action="alimentos" id="box" method="POST"><select name="menu" id="data" onchange="location=this.value;"><option value="refeicao1e.jsp">Breakfast</option><option value="refeicao2e.jsp">Lunch</option><option value="refeicao3.jsp" selected>Dinner</option><option value="refeicao4e.jsp">Snack</option><option value="refeicao5e.jsp">Fruit</option></select></form>
                                                <br></td>

                                            <td><input type="text" id="data" value="Party"><br></td>
                                            
                                            <td><button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="btn" onclick="deleteRow(this)">Delete</button></td>
                                            <td><button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="btn1">Edit</button>
			
			                             </tr>
                                        <!-- Terceira linha -->


                                     <tr id="linha">
                                            <td><input type="date" id="data"><br></td>
                                            <td><input type="number" id="siti" value="1200"><br></td>
                                            <td>
                                                <form action="alimentos" id="box" method="POST"><select name="menu" id="data" onchange="location=this.value;"><option value="refeicao1e.jsp">Breakfast</option><option value="refeicao2e.jsp">Lunch</option><option value="refeicao3.jsp" selected>Dinner</option><option value="refeicao4.jsp">Snack</option><option value="refeicao5.jsp">Fruit</option></select></form>
                                                <br></td>

                                            <td><input type="text" id="data" value="Party"><br></td>
                                            
                                            <td><button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="btn" onclick="deleteRow(this)">Delete</button></td>
                                            <td><button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="btn1">Edit</button>
			
			                             </tr>
                                                    <!-- Quarta linha -->

            <tr id="linha">
                                            <td><input type="date" id="data"><br></td>
                                            <td><input type="number" id="siti" value="1200"><br></td>
                                            <td>
                                                <form action="alimentos" id="box" method="POST"><select name="menu" id="data" onchange="location=this.value;"><option value="refeicao1e.jsp">Breakfast</option><option value="refeicao2e.jsp">Lunch</option><option value="refeicao3.jsp" selected>Dinner</option><option value="refeicao4.jsp">Snack</option><option value="refeicao5.jsp">Fruit</option></select></form>
                                                <br></td>

                                            <td><input type="text" id="data" value="Party"><br></td>
                                            
                                            <td><button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="btn" onclick="deleteRow(this)">Delete</button></td>
                                            <td><button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="btn1">Edit</button>
			
			                             </tr>
                                                    <!-- Quinta linha -->

            									<tr id="linha">
                                            <td><input type="date" id="data"><br></td>
                                            <td><input type="number" id="siti" value="1200"><br></td>
                                            <td>
                                                <form action="alimentos" id="box" method="POST"><select name="menu" id="data" onchange="location=this.value;"><option value="refeicao1e.jsp">Breakfast</option><option value="refeicao2e.jsp">Lunch</option><option value="refeicao3.jsp" selected>Dinner</option><option value="refeicao4.jsp">Snack</option><option value="refeicao5.jsp">Fruit</option></select></form>
                                                <br></td>

                                            <td><input type="text" id="data" value="Party"><br></td>
                                            
                                            <td><button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="btn" onclick="deleteRow(this)">Delete</button></td>
                                            <td><button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="btn1">Edit</button>
			
			                             </tr>
                                    </tbody>

                                </table>

                                <script>
                                
                                function deleteRow(r) {
                                    var i = r.parentNode.parentNode.rowIndex;
                                    document.getElementById("table").deleteRow(i);
                                }
                                
                                   

                                    </script>
                                    <br>
                                    <br>
                                </div>
                                <!-- Botão adicionar -->
    								
    								<input type="button" id="add_row" onclick="adicionar()" value="Adicionar" class="btn btn-info" />
                             
    									<script> 
    									function adicionar(){
    										
    										document.getElementById('table').innerHTML += '<tr><td><input type="date" id="data" value=<%=(new java.util.Date()).toLocaleString()%>><br></td><td><input type="number" id="siti" value="1300"><br></td><td><form action="alimentos" id="box" method="POST"><select name="menu" id="data" onchange="location=this.value;"><option value="refeicao1e.jsp">Breakfast</option><option value="refeicao2e.jsp">Lunch</option><option value="refeicao3e.jsp" selected>Dinner</option><option value="refeicao4e.jsp">Snack</option><option value="refeicao5e.jsp">Fruit</option></select></form><br></td><td><input type="text" id="data"><br></td><td><button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="btn" onclick="deleteRow(this)">Delete</button></td><td><button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="btn1" onclick="editRow(this)">Editar</button></tr>';
    								
    									}


    									</script>

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