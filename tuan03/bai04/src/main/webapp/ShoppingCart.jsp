<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<jsp:useBean id="cart" class="iuh.fit.se.model.CartBean" scope="session" />

<html>
<head>
    <title>Shopping Cart</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f9fafb;
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
        table {
            width: 80%;
            margin: auto;
            border-collapse: collapse;
            background: #fff;
            box-shadow: 0 4px 10px rgba(0,0,0,0.15);
        }
        th, td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: center;
        }
        th {
            background: #343a40;
            color: white;
        }
        tr:nth-child(even) {
            background: #f2f2f2;
        }
        .btn {
            padding: 5px 10px;
            border: none;
            border-radius: 4px;
            color: white;
            cursor: pointer;
        }
        .btn-update {
            background: #ffc107;
        }
        .btn-update:hover {
            background: #e0a800;
        }
        .btn-delete {
            background: #dc3545;
        }
        .btn-delete:hover {
            background: #c82333;
        }
        .total {
            font-weight: bold;
            color: #e63946;
        }
    </style>
</head>
<body>
<h1>Shopping Cart</h1>
<div class="topbar">
    <a href="products">⬅ Back to Products</a>
</div>

<table>
    <tr>
        <th>Model</th>
        <th>Quantity</th>
        <th>Unit Price</th>
        <th>Total</th>
    </tr>

    <c:if test="${cart.lineItemCount == 0}">
        <tr>
            <td colspan="4">🛒 Your shopping cart is empty.</td>
        </tr>
    </c:if>

    <c:forEach var="cartItem" items="${cart.cartItems}" varStatus="counter">
        <tr>
            <td>${cartItem.modelDescription}</td>
            <td>
                <form action="cart" method="post" style="display:inline-block;">
                    <input type="hidden" name="itemIndex" value="${counter.index + 1}">
                    <input type="number" name="quantity" value="${cartItem.quantity}" min="1" style="width:60px; text-align:center;">
                    <button type="submit" name="action" value="Update" class="btn btn-update">Update</button>
                    <button type="submit" name="action" value="Delete" class="btn btn-delete">Delete</button>
                </form>
            </td>
            <td>$${cartItem.unitCost}</td>
            <td>$${cartItem.totalCost}</td>
        </tr>
    </c:forEach>

    <tr>
        <td colspan="3" align="right">Order Total:</td>
        <td class="total">$${cart.orderTotal}</td>
    </tr>
</table>
</body>
</html>
