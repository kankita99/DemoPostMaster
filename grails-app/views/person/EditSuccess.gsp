<%--
  Created by IntelliJ IDEA.
  User: ankita
  Date: 10/10/18
  Time: 6:14 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta charset="utf-8">
    <meta name="layout" content="main"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>

<div class="container">
    <h3> Welcome ${session.user.username}</h3>
        Your updated details are:
    <table class="table table-bordered">
            <tr>
                <td>Password</td>
                <td>Addresss</td>
                <td>Phone No</td>
            </tr>
            <tr>
                <td>${person.password}</td>
                <td>${person.address}</td>
                <td>${person.phonenum}</td>
            </tr>
    </table>

</div>
</body>
</html>