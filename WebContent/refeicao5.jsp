<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
  @import url("resources/css/styledash2.css");
</style>
<title>Fruta</title>
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
                    <form id="formt" action="refeicao5" method="POST">
                        <fieldset>

                            <legend id="legenda">
                                <h1>Frutas</h1>
                            </legend>
                            <p style="margin-bottom: 20px;"></p>
                            <div class="scrollable">
                                <table class="table table-bordered text-center" id="table">
                                    <thead>
                                        <!-- Primeira linha -->
                                        <tr>
                                            <th width="100%">
                                                <center>fruta</center>
                                            </th>
                                            


                                    </thead>
                                    <tbody>
                                        <!-- Segunda linha -->
                                        <tr>

                                            <td>
                                                <form id="check" method="POST">
                                                    <input type="checkbox" id="check" name="FT" value="ref1"> Abacate (100 g) 160 Kcal<br>
                                                    <input type="checkbox" id="check" name="FT" value="ref1"> Abacaxi (100 g) 74 Kcal<br>
                                                    <input type="checkbox" id="check" name="FT" value="ref1"> Ameixa (1 un) 30 Kcal<br>
                                                    <input type="checkbox" id="check" name="FT" value="ref1"> Amora (1 xic) 62 Kcal<br><input type="checkbox" id="check" name="FT" value="ref1"> Banana prata (1 un) 58 Kcal<br>
                                                    <input type="checkbox" id="check" name="FT" value="ref1"> Coco (100 g) 354 Kcal<br> <input type="checkbox" id="check" name="FT" value="ref1"> Laranja (1 un) 62 Kcal<br> <input type="checkbox" id="check" name="FT" value="ref1"> Maca (1 un) 72 Kcal<br> <input type="checkbox" id="check" name="FT" value="ref1"> Manga (100 g) 72 Kcal<br> <input type="checkbox" id="check" name="FT" value="ref1"> Mamao (100 mg)45 Kcal<br> <input type="checkbox" id="check" name="FT" value="ref1">Melao (1 xic) 45 Kcal<br></form><br></td>

                                            
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