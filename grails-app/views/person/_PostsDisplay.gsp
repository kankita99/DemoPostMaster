<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>
<body>
<div class="container">
Your Posts are:
<g:each in="${personposts}">
    <ul>
        ${it.posts}
    </ul>
</g:each>
</div>
</body>
</html>