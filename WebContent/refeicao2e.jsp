<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
  @import url("resources/css/styledash2.css");
</style>
<title>Almoço</title>
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
                                <h1>Lunch</h1>
                            </legend>
                            <p style="margin-bottom: 20px;"></p>
                            <div class="scrollable">
                                <table class="table table-bordered text-center" id="table">
                                    <thead>
                                        <!-- Primeira linha -->
                                        <tr>
                                            <th width="33%">
                                                <center>Beverage</center>
                                            </th>
                                            <th width="33%">
                                                <center>Carbs</center>
                                            </th>
                                            <th width="34%">
                                                <center>Protein</center>
                                            </th>


                                    </thead>
                                    <tbody>
                                        <!-- Segunda linha -->
                                        <tr>

                                            <td>
                                                <form id="check" method="POST">
                                                    <input type="checkbox" id="check" name="CM" value="ref1"> Water (240ml) 0 Kcal<br>
                                                    <input type="checkbox" id="check" name="CM" value="ref1"> Coffee (249ml) 2 Kcal<br>
                                                    <input type="checkbox" id="check" name="CM" value="ref1"> Sugar coffee (50ml) 20 Kcal<br>
                                                    <input type="checkbox" id="check" name="CM" value="ref1"> Coffee with milk(180ml) 5 Kcal<br><input type="checkbox" id="check" name="CM" value="ref1"> Sugar milk coffee(180ml) 30 Kcal<br> <input type="checkbox" id="check" name="CM" value="ref1"> Cappuccino (128ml) 84 Kcal<br> <input type="checkbox" id="check" name="CM" value="ref1"> Tea (240ml) 02 Kcal<br> <input type="checkbox" id="check" name="CM" value="ref1"> Lemon black tea (300ml) 103 Kcal<br> <input type="checkbox" id="check" name="CM" value="ref1">Orange juice(100ml) 47 Kcal<br></form><br></td>

                                            <td>
                                                <form id="check" method="POST">
                                                    <input type="checkbox" id="check" name="CM" value="ref1"> Rice (1 cs) 32 Kcal<br> <input type="checkbox" id="check" name="CM" value="ref1"> Wheat rice (1 cs) 25 Kcal<br> <input type="checkbox" id="check" name="CM" value="ref1"> Wheat (100g) 131 Kcal<br> <input type="checkbox" id="check" name="CM" value="ref1"> Wheat pasta(100 g) 350 Kcal<br> <input type="checkbox" id="check" name="CM" value="ref1"> Risotto (1 xic) 355 Kcal<br>
                                                    <br></form>
                                            </td>


                                            <td>
                                                <form id="check" method="POST">
                                                    <input type="checkbox" id="check" name="CB" value="ref1">Meat-ball(1 un) 57 Kcal<br> <input type="checkbox" id="check" name="CB" value="ref1">Egg (1 un) 74 Kcal<br> <input type="checkbox" id="check" name="CB" value="ref1"> Egg white (1 un) 17 Kcal<br> <input type="checkbox" id="check" name="CB" value="ref1"> Turkey breast (1 fatia) 30 Kcal<br> <input type="checkbox" id="check" name="CB" value="ref1"> Ham(1 fatia) 12 Kcal<br><input type="checkbox" id="check" name="CB" value="ref1">Steak (100 g) 252 Kcal<br><input type="checkbox" id="check" name="CB" value="ref1">Chicken breast (100 g) 195 Kcal<br><input type="checkbox" id="check" name="CB" value="ref1"> Fish (100 g) 250 Kcal<br>
                                                    <input type="checkbox" id="check" name="CB" value="ref1"> Salami (1 fatia) 58 Kcal<br>
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
                        </fieldset>
                                   
                  
                    </form>
                </div>
                 <!-- Botões -->
                            <button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="add_row">Add</button>
			
            </div>
            <br>
            </div>
    </main>


    <footer>
    <%@ include file="footer.jsp" %>
    </footer>

</body>
</html>