<%@ page import="demopostmaster.PersonPosts" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Home Page</title>
    <meta name="layout" content="main"/>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>
<div class="container">

<h1>Home Page</h1>
<h3>welcome ${session.user.username}</h3>

<hr/>
    <div class="row">
        <div class="col-sm-4">
                <g:form controller="group" action="fillGroup">
                Your groups
                <br>
                <g:each var="gp" in="${group}">
                <li>
                    <g:link params="[groupId:gp.id]" controller="group" action="retrievePs">${gp.groups}</g:link>

                    <br>
                </li>
                </g:each>
                    <br/>
                    <input type="submit" value="create New Group"/>
                <br>
                </g:form>
        </div>
        <div class="col-sm-8">
            <b>${errors}</b>
            <g:form class="form-horizontal" controller="person" action="retrievePosts">
                <div class="form-group">
                    <label class=" control-label col-sm-2" for="posts">
                        Posts
                    </label>
                    <div class="col-sm-6">
                        <g:textArea class="form-control" name="post">Enter your posts...</g:textArea>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-4 col-sm-10">
                        <input type="submit" class="btn btn-default" value="submit"/>
                    </div>
                </div>
            </g:form>

            <g:render template="/person/PostsDisplay" model="[personposts:personposts]"/>
        </div>
    </div>
</div>
</body>
</html>