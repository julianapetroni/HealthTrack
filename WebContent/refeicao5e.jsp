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
        <%@ include file="menue.jsp" %>
</header>
<main>
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <form id="formt" method="POST">
                        <fieldset>

                            <legend id="legenda">
                                <h1>Fruits</h1>
                            </legend>
                            <p style="margin-bottom: 20px;"></p>
                            <div class="scrollable">
                                <table class="table table-bordered text-center" id="table">
                                    <thead>
                                        <!-- Primeira linha -->
                                        <tr>
                                            <th width="100%">
                                                <center>Fruits</center>
                                            </th>
                                            


                                    </thead>
                                    <tbody>
                                        <!-- Segunda linha -->
                                        <tr>

                                            <td>
                                                <form id="check" method="POST">
                                                    <input type="checkbox" id="check" name="FT" value="ref1"> Avocado (100 g) 160 Kcal<br>
                                                    <input type="checkbox" id="check" name="FT" value="ref1"> Pineapple (100 g) 74 Kcal<br>
                                                    <input type="checkbox" id="check" name="FT" value="ref1"> Plum (1 un) 30 Kcal<br>
                                                    <input type="checkbox" id="check" name="FT" value="ref1"> Blackberry (1 xic) 62 Kcal<br><input type="checkbox" id="check" name="FT" value="ref1"> Banana prata (1 un) 58 Kcal<br>
                                                    <input type="checkbox" id="check" name="FT" value="ref1"> Coconut (100 g) 354 Kcal<br> <input type="checkbox" id="check" name="FT" value="ref1"> Orange (1 un) 62 Kcal<br> <input type="checkbox" id="check" name="FT" value="ref1"> Apple (1 un) 72 Kcal<br> <input type="checkbox" id="check" name="FT" value="ref1"> Mango (100 g) 72 Kcal<br> <input type="checkbox" id="check" name="FT" value="ref1"> Papaya (100 mg)45 Kcal<br> <input type="checkbox" id="check" name="FT" value="ref1">Melon (1 xic) 45 Kcal<br></form><br></td>

                                            
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
            </div>
            <!-- Botões -->
                            <button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="add_row">Add</button>
			
            <br>
            
        </div>
    </main>
 <footer>
    <%@ include file="footer.jsp" %>
    </footer>

</body>
</html>