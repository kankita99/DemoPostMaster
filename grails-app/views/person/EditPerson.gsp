<%--
  Created by IntelliJ IDEA.
  User: ankita
  Date: 10/10/18
  Time: 4:35 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Edit Page</title>
    <meta charset="utf-8">
    <g:render template="/login/LayoutEdit"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>


<div class="container">
    <h2>Edit Page</h2>
   <b>   ${errors} </b>
<g:form class="form-horizontal" name="Sign Up Form" controller="person" action="editPerson">
    <div class="form-group">
            <label class="control-label col-sm-2" for="username">
            Your Name
            </label>
         <div class="col-sm-10">
            ${session.user?.username}
         </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="password">
            Enter your Password
        </label>
        <div class="col-sm-10">
            <input type="password" class="form-control" name="password">
        </div>
        </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="address">
            Enter your Address
        </label>
        <div class="col-sm-10">
            <input type="textarea" class="form-control" name="address">
        </div>
        </div>
    <div class="form-group">
        <label class="control-label col-sm-2">
            Enter your phone Num
        </label>
        <div class="col-sm-10">
            <input type="number" class="form-control" name="phonenum">
        </div>
    </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <input type="submit" class="btn btn-default" value="Edit">
            </div>
        </div>
</g:form>
</div>
</body>
</html>