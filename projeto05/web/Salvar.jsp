
<%@page import="br.com.fatec.quiz.Bd"%>
<%@page import="br.com.fatec.quiz.Usuario"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Registrar o login do usuário -->
 <%
        String login = request.getParameter ("userName");
        session.setAttribute ("loginUsuario", login);
        
        %>
        
        <%
    if(request.getParameter("entrar") != null){
        Usuario u = new Usuario();
        u.setUserName(request.getParameter("userName"));
        Bd.getUser().add(u);
    }
%>

<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    
    <body>
        
       <!-- Direciona o usuário para a página NextPage, onde pode realizar o quiz --> 
        <script>document.location.href='Seguir.jsp';</script>
       
    </body>
</html>
