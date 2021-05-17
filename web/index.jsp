<%-- 
    Document   : index
    Created on : 15/05/2021, 23:47:03
    Author     : MarcosPaulo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Comparando idades</h1>
        <form action="comparaIdade.jsp" target="result">
            <h3>Pessoa 1 </h3><br>
            Idade:<input type="text" name="idade"><br>
            Nome:<input type="text" name="nome"><br>
            <h3>Pessoa 2</h3>
            Idade:<input type="text" name="idade2"><br>
            Nome:<input type="text" name="nome2"><br>
            <h3>Pessoa 3</h3>
            Idade:<input type="text" name="idade3"><br>
            Nome:<input type="text" name="nome3"><br>
            <br>
            <input type="submit">
            <br>
        </form>
        <br>
          <div id="div_resultado">
            <iframe name="result" width="300" height="200"></iframe>
        </div>
    </body>
</html>
