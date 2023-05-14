<!DOCTYPE html>
<html>
<head>
        <title>BUYCELL</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>BUYCELL<h1><hr>
        <h4>GOODS from all over Armenia<h4>
        <form action="/registration" method="post">
        Email:<input type="email" name="username"/><br><br>
        Password:<input type="password" name="password"/><br><br>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <input type="submit" value="Entrance"/>
        </form>
<a href="/registration>Register<a>
    </body>
</html>