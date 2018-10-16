<%--
  Created by IntelliJ IDEA.
  User: ankita
  Date: 10/10/18
  Time: 3:23 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>
<body>
<h3>Welcome ${session.user.username}</h3>
Your Posts are:
<g:each in="${personposts}">
    <ul>
        ${it.posts}
    </ul>
</g:each>

</body>
</html>