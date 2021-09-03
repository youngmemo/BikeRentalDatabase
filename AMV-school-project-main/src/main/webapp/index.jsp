<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/main.css">
</head>

<body class="main-login">

<%
    if (session.getAttribute("email") == null) {
        out.println("<div class=\"d-flex justify-content-center align-items-center h-100\"><div class=\"content-section\">\n" +
                "    <form action=\"Login\" method=\"post\">\n" +
                "        <fieldset class=\"form-group\">\n" +
                "            <legend class=\"border-bottom mb-4\">Login</legend>");}
        %>
        <h6 class="text-center text-danger"><span id="errorMessage">${param.errorMessage}</span></h6>
    <%
        if (session.getAttribute("email") == null) {

    out.println(             "\n" +
                "            <div id=\"div_id_username\" class=\"form-group\">\n" +
                "                <label for=\"id_email\" class=\" requiredField\">\n" +
                "                    Email\n" +
                "                    <span class=\"asteriskField\">*</span>\n" +
                "                </label>\n" +
                "                <input type=\"email\" name=\"email\" autofocus autocapitalize=\"none\"\n" +
                "                        autocomplete=\"email\"\n" +
                "                       maxlength=\"254\" class=\"emailinput form-control\" required id=\"id_email\">\n" +
                "            </div>\n" +
                "\n" +
                "            <div id=\"div_id_password\" class=\"form-group\">\n" +
                "                <label for=\"id_password\" class=\" requiredField\">\n" +
                "                    Password\n" +
                "                    <span class=\"asteriskField\">*</span>\n" +
                "                </label>\n" +
                "                <input type=\"password\" name=\"password\" pattern=\"(?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{6,}\"\n" +
                "                       autocomplete=\"current-password\"\n" +
                "                       class=\"textinput textInput form-control\" required id=\"id_password\">\n" +
                "            </div>\n" +
                "\n" +
                "            <div class=\"text-center\">\n" +
                "                <button class=\"button-primary\" type=\"submit\">Login</button>\n" +
                "                <small class=\"ml-2\"><a href=\"#\">Forgot your password?</a></small>\n" +
                "            </div>\n" +
                "\n" +
                "        </fieldset>\n" +
                "    </form>\n" +
                "</div></div>\n");
    }
%>
<jsp:include page="/footer.jsp"/>


