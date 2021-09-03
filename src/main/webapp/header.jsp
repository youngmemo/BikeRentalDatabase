<%@ page import="models.User" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/main.css">
</head>

<body>



    <%

        User user = (User) session.getAttribute("user");
        if (user != null) {
            out.println("<nav class=\"navbar fixed-top navbar-expand-md navbar-dark bg-dark mb-3\">\n" +
"    <div class=\"flex-row d-flex\">\n" +
"        <button type=\"button\" class=\"navbar-toggler mr-2 \" data-toggle=\"offcanvas\" title=\"Toggle responsive left sidebar\">\n" +
"            <span class=\"navbar-toggler-icon\"></span>\n" +
"        </button>\n" +
"    </div>\n" +
"    <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#collapsingNavbar\">\n" +
"        <span class=\"navbar-toggler-icon\"></span>\n" +
"    </button>\n" +
"    <div class=\"navbar-collapse collapse pl-5 pr-5\" id=\"collapsingNavbar\">\n" +

"        <ul class=\"navbar-nav w-100 justify-content-between align-items-center\">\n" +
"        <img src=\"assets/background.png\" alt=\"...\" width=\"100\" height=\"36\">\n" +
"            <li class=\"nav-item\"><h5 class=\" nav-link m-0 text-white\">\n" +
 user.getFirstName() + " " + user.getLastName() +
"            </h5></li><li class=\"nav-item\">\n" +
"                <a class=\"nav-link btn btn-info text-white\" href=\"Logout\" >Logg ut</a>\n" +
"            </li>\n" +
"        </ul>\n" +
"    </div>\n" +
"</nav>"

          );
        }
    %>
<h1 class="text-center text-danger"><span id="errorMessage">${param.errorMessage}</span></h1>
