<jsp:include page="/header.jsp"/>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
    if(session.getAttribute("email") != null){
        out.println("<div class='alert alert-success' role='alert'>You are authenticated. You are welcome to the home page</div> <form method=\"post\" action=\"/\"><button type=\"submit\" class=\"btn btn-info\">Logout</button></form>");
        }
    else{
        out.println("<div class='alert alert-danger' role='alert'>You are not authenticated</div>");
    }


%>

<jsp:include page="/footer.jsp"/>
