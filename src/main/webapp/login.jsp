<jsp:include page="/header.jsp"/>
<%@ page contentType="text/html;charset=UTF-8" %>

<div class="d-flex justify-content-center align-items-center w-100 h-100">
    <form action="/login" method = "post">
        <input type="hidden" name="csrf" value="<% out.print(session.getAttribute("csrf")); %>">
        <%
            if(session.getAttribute("error") != null)
                out.println("<div class='alert alert-danger' role='alert'>" + session.getAttribute("error") + "</div>");

        %>
        <div class="form-group">
            <label for="exampleInputEmail1">Email address</label>
            <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" name="email" required>
            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">Password address</label>
            <input type="password" class="form-control" id="exampleInputPassword1" aria-describedby="passwordHelp" placeholder="Enter password" name="password" required>
            <small id="passwordHelp" class="form-text text-muted">We'll never share your password with anyone else.</small>
        </div>

        <button class="btn btn-primary" type="submit">
            Login
        </button>

    </form>



</div>

<jsp:include page="/footer.jsp"/>
