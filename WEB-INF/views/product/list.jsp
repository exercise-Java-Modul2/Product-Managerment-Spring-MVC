<%--
  Created by IntelliJ IDEA.
  User: syphan
  Date: 8/20/2018
  Time: 9:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Show product list</title>
</head>
<body>
<h1>Show product list</h1>
<p>
    <a href="create">Create new Product</a>
</p>
<table border="1px solid #ccc">
    <tr>
        <td>Id</td>
        <td>Name</td>
        <td>Price</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach items='${products}' var="product">
        <tr>
            <td>${product.id}</td>
            <td><a href="view?id=${product.id}"/>${product.name}</td>
            <td>${product.price}</td>
            <td><a href="edit?id=${product.id}">edit</a></td>
            <td><a href="delete?id=${product.id}">delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
