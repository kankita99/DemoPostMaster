<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">PostMaster</a>
        </div>
        <ul class="nav navbar-nav">
            <li class="active">
                <g:link controller="login" action="signin" params="[username:session.user?.username,password:session.user?.password]">Home</g:link></li>
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a href="#">Page 1-1</a></li>
                    <li><a href="#">Page 1-2</a></li>
                    <li><a href="#">Page 1-3</a></li>
                </ul>
            </li>
            <li><g:link controller="person" action="editPersonPage">Edit</g:link></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li><g:link controller="login" action="invalidate"><span class="glyphicon glyphicon-log-in"></span> LogOut</g:link></li>
        </ul>
    </div>
</nav>

</body>
</html>