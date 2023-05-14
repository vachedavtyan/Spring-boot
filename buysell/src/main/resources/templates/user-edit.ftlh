<!DOCTYPE html>
<html>
<head>
<title>BUYSELL<title>
</head>
<body>
 <h1>BUYCELL<h1><hr>
 <h3>Edit user${user.name}<h3>
 <form action="/admin/user/edit" method="post">
 <#List roles as role>
 <div>
 <label><input type="checkbox" name=$"{role}" ${user.roles?seq_contains(role)?string("checked","")}>${role}</label>
 </div>
 <input  type="hidden" value="${user.id}" name="userId">
 <input type="hidden" name="_csrf" value="${_csrf.token}">
 <button type="submit">Save<button>
 </form>
 </body>
</html>