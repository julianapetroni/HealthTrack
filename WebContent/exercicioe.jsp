<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
  @import url("resources/css/styledash2.css");
</style>
<title>Exercício</title>
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
                                <h1>Sports</h1>
                            </legend>
                            <p style="margin-bottom: 20px;"></p>
                            <div class="scrollable">
                                <table width=70% height=20% ALIGN="center" id="table">

                                    <thead>
                                        <!-- Primeira linha -->
                                        <tr>
                                            <th width="25%"><center>Date</center>
                                            </th>
                                            <th>
                                                <center width="25">Activity</center>
                                            </th>

                                            <th width="25%">
                                                <center>Exercise</center>
                                            </th>
												<th width=25%><center>Delete</center>
                                            </th>
                                            <th width=25%><center>Edit</center>
                                            </th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <!-- Segunda linha -->
                                        <tr>
                                            <td><input type="date" id="data" value="10/06/2017"><br></td>

                                            <td>
                                                <br>
                                                <label>Sport</label>
                                                <form id="box" method="POST"><select id="boxat" name="exercicio"><option value="W">Walk</option><option value="R">Run</option><option value="P" selected>Bike</option><option value="G">Gym</option></select></form><br><br>
                                                <input type="hour" id="tempo" value="02:00"><label>hours</label><br></td>

                                            <td>
                                                <br> <label>Intensity</label><select id="boxat" name="intensidade"><center><option value="N" selected>Normal</option><option value="A">High</option><option value="B">Low</option></center></select>
                                                <br>
                                                <br><input type="number" id="numero" value="400" placeholder="Kcal"><label>Kcal</label><br></td>
                                                <td><button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="btn" onclick="deleteRow(this)">Delete</button></td>
                                                <td><button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="btn1" onclick="deleteRow(this)">Edit</button>
										 </tr>


                                        <!-- Terceira linha -->
<tr>
                                           <tr>
                                            <td><input type="date" id="data" value="10/06/2017"><br></td>

                                            <td>
                                                <br>
                                                <label>Sport</label>
                                                <form id="box" method="POST"><select id="boxat" name="exercicio"><option value="W">Walk</option><option value="R">Run</option><option value="P" selected>Bike</option><option value="G">Gym</option></select></form><br><br>
                                                <input type="hour" id="tempo" value="02:00"><label>hours</label><br></td>

                                            <td>
                                                <br> <label>Intensity</label><select id="boxat" name="intensidade"><center><option value="N" selected>Normal</option><option value="A">High</option><option value="B">Low</option></center></select>
                                                <br>
                                                <br><input type="number" id="numero" value="400" placeholder="Kcal"><label>Kcal</label><br></td>
                                                <td><button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="btn" onclick="deleteRow(this)">Delete</button></td>
                                                <td><button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="btn1" onclick="deleteRow(this)">Edit</button>
										 </tr>

                                        <!-- Quarta linha -->
<tr>
                                            <td><input type="date" id="data" value="10/06/2017"><br></td>

                                            <td>
                                                <br>
                                                                                                <label>Sportt</label>
                                                                                                <label>Sportt</label>
                                                                                                <label>Sportt</label>
                                                <form id="box" method="POST"><select id="boxat" name="exercicio"><option value="W">Walk</option><option value="R">Run</option><option value="P" selected>Bike</option><option value="G">Gym</option></select></form><br><br>
                                                <input type="hour" id="tempo" value="02:00"><label>hours</label><br></td>

                                            <td>
                                               <br> <label>Intensidade</label><select id="boxat" name="intensidade"><center><option value="N" selected>Normal</option><option value="A">High</option><option value="B">Low</option></center></select>
                                                <br>
                                                <br><input type="number" id="numero" value="400" placeholder="Kcal"><label>Kcal</label><br></td>
                                                <td><button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="btn" onclick="deleteRow(this)">Delete</button></td>
                                                <td><button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="btn1" onclick="deleteRow(this)">Edit</button><input type="hour" id="tempo" value="02:00"><label>hours</label><br></td>

                                            <td>
                                               <br> <label>Intensidade</label><select id="boxat" name="intensidade"><center><option value="N" selected>Normal</option><option value="A">High</option><option value="B">Low</option></center></select>
                                                <br>
                                                <br><input type="number" id="numero" value="400" placeholder="Kcal"><label>Kcal</label><br></td>
                                                <td><button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="btn" onclick="deleteRow(this)">Delete</button></td>
                                                <td><button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="btn1" onclick="deleteRow(this)">Edit</button>
                                                <input type="hour" id="tempo" value="02:00"><label>hours</label><br></td>

                                            <td>
                                               <br> <label>Intensity</label><select id="boxat" name="intensidade"><center><option value="N" selected>Normal</option><option value="A">High</option><option value="B">Low</option></center></select>
                                                <br>
                                                <br><input type="number" id="numero" value="400" placeholder="Kcal"><label>Kcal</label><br></td>
                                                <td><button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="btn" onclick="deleteRow(this)">Delete</button></td>
                                                <td><button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="btn1" onclick="deleteRow(this)">Edit</button>
                                                </tr>


                                        <!-- Quinta linha -->
<tr>
                                            <td><input type="date" id="data" value="10/06/2017"><br></td>

                                            <td>
                                                <br>
                                                <label>Sportt</label>
                                                                                                <label>Sportt</label>
                                                <form id="box" method="POST"><select id="boxat" name="exercicio"><option value="W">Walk</option><option value="R">Run</option><option value="P" selected>Bike</option><option value="G">Gym</option></select></form><br><br>
                                                <input type="hour" id="tempo" value="02:00"><label>hours</label><br></td>

                                            <td>
                                               <br> <label>Intensidade</label><select id="boxat" name="intensidade"><center><option value="N" selected>Normal</option><option value="A">High</option><option value="B">Low</option></center></select>
                                                <br>
                                                <br><input type="number" id="numero" value="400" placeholder="Kcal"><label>Kcal</label><br></td>
                                                <td><button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="btn" onclick="deleteRow(this)">Delete</button></td>
                                                <td><button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="btn1" onclick="deleteRow(this)">Edit</button>
                                                <input type="hour" id="tempo" value="02:00"><label>hours</label><br></td>

                                            <td>
                                               <br> <label>Intensity</label><select id="boxat" name="intensidade"><center><option value="N" selected>Normal</option><option value="A">High</option><option value="B">Low</option></center></select>
                                                <br>
                                                <br><input type="number" id="numero" value="400" placeholder="Kcal"><label>Kcal</label><br></td>
                                                <td><button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="btn" onclick="deleteRow(this)">Delete</button></td>
                                                <td><button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="btn1" onclick="deleteRow(this)">Edit</button>
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
    										
    										document.getElementById('table').innerHTML += '<td><input type="date" id="data" value=<%=(new java.util.Date()).toLocaleString()%>><br></td><td><br><label>Esporte</label><form id="box" method="POST"><select id="boxat" name="exercicio"><option value="W">Walk</option><option value="R">Run</option><option value="P" selected>Bike</option><option value="G">Gym</option></select></form><br><br><input type="hour" id="tempo"><label>horas</label><br></td><td><br> <label>Intensity</label><select id="boxat" name="intensidade"><center><option value="N" selected>Normal</option><option value="A">High</option><option value="B">Low</option></center></select>br><br><input type="number" id="numero"  placeholder="Kcal"><label>Kcal</label><br></td><td><button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="btn" onclick="deleteRow(this)">Delete</button></td><td><button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="btn1" onclick="editRow(this)">Edit</button></tr>';
    								
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