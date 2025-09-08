<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Product List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f7f7f7;
            margin: 0;
            padding: 20px;
        }
        h1 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }
        .topbar {
            text-align: right;
            margin-bottom: 15px;
        }
        .topbar a {
            text-decoration: none;
            color: white;
            background: #007bff;
            padding: 8px 15px;
            border-radius: 5px;
        }
        .topbar a:hover {
            background: #0056b3;
        }
        .products {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
        }
        .product {
            background: #fff;
            border-radius: 10px;
            padding: 15px;
            width: 220px;
            text-align: center;
            box-shadow: 0 4px 10px rgba(0,0,0,0.15);
            transition: transform 0.2s;
        }
        .product:hover {
            transform: scale(1.05);
        }
        .product img {
            max-width: 100%;
            height: 150px;
            object-fit: contain;
            margin-bottom: 10px;
        }
        .model {
            font-weight: bold;
            margin: 8px 0;
            color: #333;
        }
        .price {
            color: #e63946;
            font-weight: bold;
            margin-bottom: 12px;
        }
        .product form {
            margin-top: 10px;
        }
        .product input[type=number] {
            width: 60px;
            padding: 4px;
            text-align: center;
        }
        .product button {
            background: #28a745;
            border: none;
            color: #fff;
            padding: 6px 12px;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 5px;
        }
        .product button:hover {
            background: #218838;
        }
    </style>
</head>
<body>
<h1>Product List</h1>
<div class="topbar">
    <a href="ShoppingCart.jsp">🛒 View Cart</a>
</div>

<div class="products">
    <c:forEach var="sp" items="${ds}">
        <div class="product">
            <img src="${sp.imgURL}" alt="${sp.model}"/>
            <div class="model">${sp.model}</div>
            <div class="price">$${sp.price}</div>
            <form action="cart" method="post">
                <input type="hidden" name="modelNo" value="${sp.id}">
                <input type="hidden" name="description" value="${sp.model}">
                <input type="hidden" name="price" value="${sp.price}">
                <input type="hidden" name="action" value="add">
                <label>Qty:</label>
                <input type="number" name="quantity" value="1" min="1"><br><br>
                <button type="submit">Add To Cart</button>
            </form>
        </div>
    </c:forEach>
</div>
</body>
</html>
