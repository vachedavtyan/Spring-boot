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
        <form action="/" method="get">
        Find name:<input type="text"name="title"><br>
        <input type="submit" value="Find"/>
        </form>
        <#List products as product>
        <div>
        <p><b> ${product.title}</b>${product.price}  dram. | <a href="/product/${product.id/"> Manramasner...</a></p>
        </div>
        <#else>
        <h3>No products</h3>
        </#List>
        <hr>
        <h3>Stexcel nor apranq</h3>
        <from action"/product/create" method="post>
        Haytararutyan  anun:<input type="text" name="title"/><br><br>
        Apranqi tvyalner:<input type="text" name="description"/><br><br>
        Apranqi gin:<input type="number" name="price"/><br><br>
        Qaxaq:<input type="text" name="city"/><br><br>
        Anun:<input type="text" name="author"/><br><br>
        <input type="submit" value="avelacnel apranc">
        </from>
    </body>

</html>