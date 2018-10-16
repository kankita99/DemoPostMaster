<%--
  Created by IntelliJ IDEA.
  User: ankita
  Date: 8/10/18
  Time: 4:34 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>New Group</title>
    <meta name="layout" content="main"/>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>
<div class="container">
    <b>${errors}</b>
     <g:form class="form-horizontal" controller="group" action="createGroup">
        <div class="col-sm-2">
         Enter Group Name:
        </div>
        <div class="col-sm-10">
            <input type="text" name="gname">
        </div>
            <br><br>
             <g:select class="form-control" name="persons"
                from="${person.list()*.username}"
                value=""
                multiple="true"/>

        <div class="col-sm-offset-2 col-sm-10">
            <br>
                  <input class="btn btn-default" type="submit" value="submit"/>
        </div>

    </g:form>
</div>
</body>
</html>