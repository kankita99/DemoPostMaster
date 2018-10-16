<%--
  Created by IntelliJ IDEA.
  User: ankita
  Date: 8/10/18
  Time: 4:01 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="main"/>
</head>
<body>


<h3>Welcome ${session.user.username}</h3>
<br>
<br>
    The Person in groups
    <g:each in="${person}">
    <li>${it.username}</li>
    </g:each>
</body>
</html>