<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
  @import url("resources/css/styledash2.css");
</style>
<title>Café da manhã</title>
<%@ include file="header.jsp" %>

</head>
<body background="resources/image/corrida.png">
	 <header>

        <%@ include file="menu.jsp" %>
	</header>

<main>
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <form id="formt" action="refeicao1" method="POST">
                        <fieldset>

                            <legend id="legenda">
                                <h1>Cafe da manhã</h1>
                            </legend>
                            <p style="margin-bottom: 20px;"></p>
                            <div class="scrollable">
                                <table class="table table-bordered text-center" id="table">
                                    <thead>
                                        <!-- Primeira linha -->
                                        <tr>
                                            <th width="33%">
                                                <center>Bebida</center>
                                            </th>
                                            <th width="33%">
                                                <center>Carboidrato</center>
                                            </th>
                                            <th width="34%">
                                                <center>Proteina</center>
                                            </th>


                                    </thead>
                                    <tbody>
                                        <!-- Segunda linha -->
                                        <tr>

                                            <td>
                                                <form id="check" method="POST">
                                                    <input type="checkbox" id="check" name="CM" value="ref1"> Agua (240ml) 0 Kcal<br>
                                                    <input type="checkbox" id="check" name="CM" value="ref1"> Cafe (249ml) 2 Kcal<br>
                                                    <input type="checkbox" id="check" name="CM" value="ref1"> Cafe com acucar (50ml) 20 Kcal<br>
                                                    <input type="checkbox" id="check" name="CM" value="ref1"> Cafe com leite desnatado(180ml) 5 Kcal<br><input type="checkbox" id="check" name="CM" value="ref1"> Cafe com leite integral (180ml) 6 Kcal<br>
                                                    <input type="checkbox" id="check" name="CM" value="ref1"> Cafe com leite e acucar (180ml) 30 Kcal<br> <input type="checkbox" id="check" name="CM" value="ref1"> Cappuccino (128ml) 84 Kcal<br> <input type="checkbox" id="check" name="CM" value="ref1"> Cappuccino (128ml) 84 Kcal<br> <input type="checkbox" id="check" name="CM" value="ref1"> Cha (240ml) 02 Kcal<br> <input type="checkbox" id="check" name="CM" value="ref1"> Cha Mate Leao com limao (300ml) 103 Kcal<br> <input type="checkbox" id="check" name="CM" value="ref1"> Leite com chocolate nescau (200ml) 155 Kcal<br><input type="checkbox" id="check" name="CM" value="ref1">Leite com chocolate toddy (200ml) 185 Kcal<br><input type="checkbox" id="check" name="CM" value="ref1">Leite desnatado com chocolate (200ml) 140 Kcal<br> <input type="checkbox" id="check" name="CM" value="ref1">Suco de laranja (100ml) 47 Kcal<br></form><br></td>

                                            <td>
                                                <form id="check" method="POST">
                                                    <input type="checkbox" id="check" name="CM" value="ref1"> Aveia em flocos (1 cs) 52 Kcal<br> <input type="checkbox" id="check" name="CM" value="ref1"> Croissant (1 medio) 231 Kcal<br> <input type="checkbox" id="check" name="CM" value="ref1"> Granola (40g) 111 Kcal<br> <input type="checkbox" id="check" name="CM" value="ref1"> Pao frances (1 medio) 137 Kcal<br> <input type="checkbox" id="check" name="CM" value="ref1"> Pao integral (1 fatia) 68 Kcal<br>
                                                    <br></form>
                                            </td>


                                            <td>
                                                <form id="check" method="POST">
                                                    <input type="checkbox" id="check" name="CB" value="ref1">Iogurte (170 g) 126 Kcal<br> <input type="checkbox" id="check" name="CB" value="ref1">Ovo (1 un) 74 Kcal<br> <input type="checkbox" id="check" name="CB" value="ref1"> Clara de ovo (1 un) 17 Kcal<br> <input type="checkbox" id="check" name="CB" value="ref1"> Peito de peru (1 fatia) 30 Kcal<br> <input type="checkbox" id="check" name="CB" value="ref1"> Presunto (1 fatia) 12 Kcal<br><input type="checkbox" id="check" name="CB" value="ref1">Queijo Minas (1 fatia) 101 Kcal<br><input type="checkbox" id="check" name="CB" value="ref1">Queijo Prato (1 fatia) 106 Kcal<br>
                                                    <input type="checkbox" id="check" name="CB" value="ref1"> Salame (1 fatia) 58 Kcal<br>
                                                    <br></form>
                                            </td>

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
                            <!-- Botões -->
                            <button class="btn btn-primary" type="submit" id="add_row">Adicionar</button>
			
							<!-- Botão salvar --> 
 	 
 	 						<input type="submit" value="Salvar" class="btn btn-primary"> 									
     
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