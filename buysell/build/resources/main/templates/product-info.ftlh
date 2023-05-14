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
         <b>Product name</b>${product.title}<br>
         <b>Product description</b>${product.description}<br>
         <b>City</b>${product.city}<br>
         <b>Price</b>${product.price}<br>
         <b>Author</b>${product.author}<br>
        <hr>
        <h3>Stexcel nor apranq</h3>
        <from action"/product/delete${product.id}" method="post>
        <input type="submit" value="Delete">
        </from>
    </body>

</html>