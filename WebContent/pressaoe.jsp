<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Pressão</title>
<style type="text/css">
  @import url("resources/css/styledash2.css");
</style>
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
                                <h2>Arterial pressure</h2>
                            </legend>
                            <p style="margin-bottom: 20px;"></p>
                            <div class="scrollable">
                                <table border=1 width=80% height=20% ALIGN="center" id="table">
                                    <thead>
                                        <!-- Primeira linha -->
                                        <tr>
                                            <th width="5%">
                                                <center>Date</center>
                                            </th>
                                            <th width="5%">
                                                <center>Pressure</center>
                                            </th>
                                            <th width="10%">
                                                <center>Situation</center>
                                            </th>
                                            <th width="20%">
                                                <center>Edit</center>
                                            </th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <!-- Segunda linha -->
                                        <tr>
                                            <td><input type="date" id="data" value="10/06/2017"><br></td>
                                            <td><input type="text" id="box" value="140"><input type="text" id="box" value="90"><br></td>
                                            <td><input type="text" id="sit" value="Normal"><br></td>
                                            <td><button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="btn1" onclick="editRow(this)">Edit</button>
                                            <br><button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="btn" onclick="deleteRow(this)">Delete</button></td>
                                        </tr>
                                        <!-- Terceira linha -->
                                        <tr>
                                            <td><input type="date" id="data" value="10/06/2017"><br></td>
                                            <td><input type="text" id="box" value="140"><input type="text" id="box" value="90"><br></td>
                                            <td><input type="text" id="sit" value="Normal"><br></td>
                                            <td><button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="btn1" onclick="editRow(this)">Edit</button>
                                            <br><button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="btn" onclick="deleteRow(this)">Delete</button></td>
                                        </tr>
                                        <!-- Quarta linha -->
                                        <tr>
                                            <td><input type="date" id="data" value="10/06/2017"><br></td>
                                            <td><input type="text" id="box" value="140"><input type="text" id="box" value="90"><br></td>
                                            <td><input type="text" id="sit" value="Normal"><br></td>
                                            <td><button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="btn1" onclick="editRow(this)">Edit</button>
                                            <br><button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="btn" onclick="deleteRow(this)">Delete</button></td>
                                        </tr>

                                        <!-- Quinta linha -->
                                        <tr>
                                            <td><input type="date" id="data" value="10/06/2017"><br></td>
                                            <td><input type="text" id="box" value="140"><input type="text" id="box" value="90"><br></td>
                                            <td><input type="text" id="sit" value="Normal"><br></td>
                                            <td><button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="btn1" onclick="editRow(this)">Edit</button>
                                            <br><button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="btn" onclick="deleteRow(this)">Delete</button></td>
                                        </tr>

                                        <!-- Sexta linha -->
                                        <tr>
                                            <td><input type="date" id="data" value="10/06/2017"><br></td>
                                            <td><input type="text" id="box" value="140"><input type="text" id="box" value="90"><br></td>
                                            <td><input type="text" id="sit" value="Normal"><br></td>
                                            <td><button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="btn1" onclick="editRow(this)">Edit</button>
                                            <br><button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="btn" onclick="deleteRow(this)">Delete</button></td>
                                        </tr>
                                        <!-- Setima linha -->
                                        <tr>
                                            <td><input type="date" id="data" value="10/06/2017"><br></td>
                                            <td><input type="text" id="box" value="140"><input type="text" id="box" value="90"><br></td>
                                            <td><input type="text" id="sit" value="Normal"><br></td>
                                            <td><button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="btn1" onclick="editRow(this)">Edit</button>
                                            <br><button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="btn" onclick="deleteRow(this)">Delete</button></td>
                                        </tr>
                                        <!-- Oitava linha -->
                                        <tr>
                                            <td><input type="date" id="data" value="10/06/2017"><br></td>
                                            <td><input type="text" id="box" value="140"><input type="text" id="box" value="90"><br></td>
                                            <td><input type="text" id="sit" value="Normal"><br></td>
                                            <td><button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="btn1" onclick="editRow(this)">Edit</button>
                                            <br><button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="btn" onclick="deleteRow(this)">Delete</button></td>
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

                                  
                                <br>
                                <br>
                                </div>
                        </fieldset>
                        
                    </form>
                    
                </div>
            </div>
        </div>
        <br>
<!-- Botão adicionar -->
    								
    								<input type="button" id="add_row" onclick="adicionar()" value="Adicionar" class="btn btn-info" />
                             
    									<script> 
										function adicionar(){
    										
    										document.getElementById('table').innerHTML += '<tr><td><input type="date" id="data" value=<%=(new java.util.Date()).toLocaleString()%>><br></td><td><input type="text" id="box"><input type="text" id="box"><br></td><td><input type="text" id="sit"><br></td><td><button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="btn1" onclick="editRow(this)">Editar</button><br><button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="btn" onclick="deleteRow(this)">Deletar</button></td></tr>';
    								
    									}

    									</script>
                                    
    </main>


    <footer>
     <%@ include file="footer.jsp" %>
    </footer>

</body>
</html>