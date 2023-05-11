<!DOCTYPE html>
<html>
<head>
    <title>Shopping Cart</title>
    <style>
        body {
            background-color: #f2f2f2;
            font-family: Arial, sans-serif;
        }

        h1 {
            color: #4CAF50;
            text-align: center;
            margin-top: 50px;
        }

        table {
            margin: 20px auto;
            border-collapse: collapse;
            width: 80%;
            max-width: 800px;
        }

        th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        .cart-total {
            text-align: right;
            margin-top: 20px;
            font-size: 1.2em;
        }

        .cart-total span {
            font-weight: bold;
        }

        .cart-actions {
            text-align: right;
            margin-top: 20px;
        }

        .cart-actions button {
            background-color: #4CAF50;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 1.2em;
            margin-top: 20px;
            transition: background-color 0.3s ease-in-out;
        }

        .cart-actions button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h1>Shopping Cart</h1>
    <table>
        <thead>
            <tr>
                <th>Product</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Total</th>
            </tr>
        </thead>
        <tbody>
            <?php
            session_start();
            $total = 0;
            foreach($_SESSION['cart'] as $product) {
                $total += $product['price'] * $product['quantity'];
                ?>
                <tr>
                    <td><?php echo $product['name']; ?></td>
                    <td><?php echo "$" . number_format($product['price'], 2); ?></td>
                    <td><?php echo $product['quantity']; ?></td>
                    <td><?php echo "$" . number_format($product['price'] * $product['quantity'], 2); ?></td>
                </tr>
                <?php
            }
            ?>
        </tbody>
    </table>
    <div class="cart-total">
        <span>Total:</span> $<?php echo number_format($total, 2); ?>
    </div>
    <div class="cart-actions">
        <button onclick="window.location.href='products.php'">Continue Shopping</button>
        <button onclick="window.location.href='checkout.php'">Checkout</button>
    </div>
</body>
</html>


