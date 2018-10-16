<%--
  Created by IntelliJ IDEA.
  User: ankita
  Date: 9/10/18
  Time: 10:36 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>

    </title>
    <meta name="layout" content="main"/>
</head>
<body>


    <h3>Welcome ${session.user.username}</h3>
    <br>
        Groups successfully created.
    <br><br>
    Your other groups are:
    <g:each in="${group}">
        <li>
            ${it.groups}
        </li>
    </g:each>

</body>
</html>