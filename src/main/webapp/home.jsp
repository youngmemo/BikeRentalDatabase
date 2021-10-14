<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    </head>

<body>
<h1>welcome from java servlet <% String name= (String) session.getAttribute("name"); out.print(name);%></h1>
</body>
</html>
