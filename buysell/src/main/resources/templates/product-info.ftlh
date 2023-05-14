<!DOCTYPE html>
<html>
    <head>
        <title>INFO</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>

    <body>
        <h1>INfo<h1><hr>
        <h4>Product information<h4>
        <img src="/images/${product.images.get(0)"height="60px"<br><br>
        <img src="/images/${product.images.get(1)?if_exests"height="60px"<br><br>
        <img src="/images/${product.images.get(2)?if_exests"height="60px"<br><br>
         <b>Product name</b>${product.title}<br>
         <b>Product description</b>${product.description}<br>
         <b>City</b>${product.city}<br>
         <b>Price</b>${product.price}<br>
         <b>Author</b><a href="/user/${product.user.id}">${product.user.name}<br>

                 <input type="hidden" name="_csrf" value="${_csrf.token}"/>

        <hr>
        <h3>Stexcel nor apranq</h3>

    </body>

</html>