<!DOCTYPE html>
<html>
    <head>
        <title>BYCSELL</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>

    <body>
        <h1>BYCSSEL<h1><hr>
        <b>Phone number:</b>${user.phoneNumber}<br>
        <b>Email:</b>${user.email}<br>
        <h4>Products User ${user.name}<h4>
        <#List products as product>
       <div>
<p><b>${product.title}<b/>${product.price}dr|<a hef="/product/${product.id}">
</div>
<#else>
<h3>There are no products</h3>
</#List>
<#if errorMessage??>
<h2 style="...">$
    </body>

</html>