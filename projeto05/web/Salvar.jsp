
<%@page import="br.com.fatecpg.quiz.BancoUsuarios"%>
<%@page import="br.com.fatecpg.quiz.Usuarios"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Registrar o login do usuário -->
 <%
        String login = request.getParameter ("userName");
        session.setAttribute ("loginUsuario", login);
        
        %>
        
        <%
    if(request.getParameter("entrar") != null){
        Usuarios u = new Usuarios();
        u.setNome(request.getParameter("userName"));
        BancoUsuarios.getUsuarios().add(u);
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
