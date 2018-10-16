<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style type="text/css">
    h3{
        text-align: center;
        color:blue;
    }
    </style>

</head>
<body>
<div class="container">
<h3>Sign Up Form</h3>
<hr/>


    <g:hasErrors bean="${command}">
        <ul>
            <g:eachError var="err" bean="${command}">
                <li><g:message error="${err}" /></li>
            </g:eachError>
        </ul>
    </g:hasErrors>


    <g:form class="form-horizontal" name="Sign Up Form" controller="login" action="checkRepassword">
    <div class="form-group">
            <label class="control-label col-sm-2" for="username">
            Enter your Name
             </label>
             <div class="col-sm-10">
             <input type="text" class="form-control" name="username">
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
        <label class="control-label col-sm-2" for="repassword">
            ReEnter your Password
        </label>
        <div class="col-sm-10">
            <input type="password" class="form-control" name="repassword">
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
        <label class="control-label col-sm-2" for="phonenum">
            Enter your phone Num
        </label>
        <div class="col-sm-10">
            <input type="number" class="form-control" name="phonenum">
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <g:submitButton type="submit" class="btn btn-default" name="Sign Up"></g:submitButton>
        </div>
    </div>
</g:form>
</div>
</body>
</html>
