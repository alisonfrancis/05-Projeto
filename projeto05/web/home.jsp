<%-- 
    Document   : home
    Created on : 09/05/2018, 09:39:26
    Author     : Alison
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP QUIZ</title>
        <!-- inicio - tags meta e links-->
        <%@include file="WEB-INF/jspf/meta_links.jspf" %>
        <!-- Fim - tags meta e links -->
    </head>
    <body>
        <!-- inicio - navbar -->
        <%@include file="WEB-INF/jspf/navbar.jspf" %>
        <!-- Fim - navbar -->
        
            <!-- inicio - Conteudo -->
            <h1>Page Home</h1>
    <hr/><center>
        <img src="imagens/img1.jpg" alt="" width="1280" height="473"/>
            <br/><br/><a href="quiz.jsp" class="btn btn-danger">teste</a>
    </center>
            <!-- Fim - Conteudo -->
        
        <!-- inicio - footer -->
        <%@include file="WEB-INF/jspf/footer.jspf" %>
        <!-- Fim - footer -->
    </body>
</html>
