<!DOCTYPE html>
<html>
    <head>
        <title>BUYCELL</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>

    <body>
        <h1>BUYCELL<h1><hr>
        <#if user.email??>
        <form action="logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="EXsit">
        </form>
        <#if user.isAdmin()>
        <a href="/admin>Panel<a>
        <#if>
        <#else>
         <h1><a href="/login>Enter</a>><h1>
         </#if>
         <h4>Product made in Armenia</h4>
        <form action="/login" method="post>
                <input type="hidden" name="_csrf" value="${_csrf.token}"/>
<input type="sumbit" value="exit"/>
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
        <#if user.email??>
        </#List>
        <hr>
        <h3>Stexcel nor apranq</h3>
        <from action"/product/create" method="post enctype="multipart/from-data">
        Haytararutyan  anun:<input type="text" name="title"/><br><br>
        Apranqi tvyalner:<input type="text" name="description"/><br><br>
        Apranqi gin:<input type="number" name="price"/><br><br>
        Qaxaq:<input type="text" name="city"/><br><br>
        Anun:<input type="text" name="author"/><br><br>
        Arajin nkar:<input type="file" name="file1/><br><br>
        Erktord nkar:<input type="file" name="file2/><br><br>
        Errord nkar:<input type="file" name="file3/><br><br>
        <input type="submit" value="avelacnel apranc">
                <input type="hidden" name="_csrf" value="${_csrf.token}"/>

        </from>
        </#if>
    </body>

</html>