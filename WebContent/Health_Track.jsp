<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
  @import url("resources/css/styledash2.css");
</style>
<title>Health Track</title>
<%@ include file="header.jsp" %>

</head>
<body background="resources/image/corrida.png">
	 <header>

        <%@ include file="menu.jsp" %>
	</header>
	
	<main>
    <div class="row backgroundimg">
        <div class="container-fluid">
            <div class="row">
                <header>
                    <div id="btne"><a href="Health_Track2.jsp"><button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="add_row">English</button></a>
                        </div>
                        </div>
                </header>
            </div>

            <div class="row">
                <main>
                    <legend id="legenda">
                                <h2>HEALTH TRACK</h2>
                    <p></p>
                    <h2 class="h2 lead text-center">How far will you go?</h2>

                    <div id="container">
                       <div id="btn1"><a href="cadastro.jsp"><button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="add_row">Cadastre-se gratuitamente</button></a>
                        </div>

                        <div id="btn2"><a href="login.jsp"><button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="add_row">Já é cadastrado? Clique aqui</button></a>
                        </div>
                    </div>
                    <br>
                </main>
            </div>
            <footer>
			 <%@ include file="footer.jsp" %>
            </footer>


            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js">


            </script>

            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js">


            </script>

        </div>
    </div>
</body>
</html>



                                                                
                                      
                                            