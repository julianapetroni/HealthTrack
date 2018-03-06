<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
  @import url("resources/css/styledash2.css");
</style>
<title>Peso</title>
<%@ include file="header.jsp" %>
</head>
<body background="resources/image/corrida.png">
<header>
        <%@ include file="menue.jsp" %>
</header>

<main>
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <form id="formt" method="POST">
                        <fieldset>

                            <legend id="legenda">                               
                             <h1>Weight</h1>
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
                                            	<center>Weight</center>
                                            </th>
                                            <th>
                                            	<center>Edit</center>
                                            </th>
                                            
                                    </thead>
                                    <tbody>
                                        <!-- Segunda linha -->
                                        <tr id="linha">
                                            <td><input type="date" id="data" value="10/06/2017"></td>
                                            <td><input type="text" id="peso" value="51"></td>
                                            <td><button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="btn1" onclick="editRow(this)">Edit</button><br><button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="btn" onclick="deleteRow(this)">Remover</button></td>
                                        </tr>
                                        <!-- Terceira linha -->
                                        <tr>
                                            <td><input type="date" id="data" value="10/05/2017"></td>
                                            <td><input type="text" id="peso" value="52"></td>
                                            <td><button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="btn1" onclick="editRow(this)">Edit</button><br><button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="btn" onclick="deleteRow(this)">Remover</button></td>
                              
                                        </tr>

                                        
                                        
                                              
                                    </tbody>
                                </table>

                                                                <script>
                                
                                function deleteRow(r) {
                                    var i = r.parentNode.parentNode.rowIndex;
                                    document.getElementById("table").deleteRow(i);
                                }
                                
                                    function editRow(r) {
                                        var i = r.parentNode.parentNode.rowIndex;
                                        document.getElementById("table").editRow(i);
                                    }

                                    </script>
                                    <br>
                                    <br>
                                </div>
                                <!-- Botão adicionar -->
    								
    								<input type="button" id="add_row" onclick="adicionar()" value="Adicionar" class="btn btn-info" />
                             
    									<script> 
    									function adicionar(){
    										
    										document.getElementById('table').innerHTML += '<tr> <td><input type="date" id="data" ><td><input type="text" id="peso" ></td><td><button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="btn1" onclick="editRow(this)">Alterar</button><br><button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="btn" onclick="deleteRow(this)">Remover</button></td></tr>';
    								
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