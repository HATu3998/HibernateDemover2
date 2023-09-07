<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Checkout Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 1200px;
            margin: auto;
            padding: 20px;
            text-align: center;
        }

        .product {
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 20px;
        }

        .product img {
            max-width: 200px;
            margin-right: 20px;
        }

        .order-details {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            text-align: left;
        }

        .order-details h2 {
            margin-top: 0;
        }

        .order-details p {
            margin: 10px 0;
        }

        .checkout-btn {
            background-color: #4CAF50;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }
    </style>
</head>
<body>
<h2>PAY</h2>
    
        <img src="https://i.imgur.com/siwoR9h.png" alt="Product Image">
            <div class="order-details">
                <h2>${name}</h2>
                
                <p>Price: $ ${giam}%/${giagoc}</p>
                <p>Quantity: 1</p>
                <p>Total: $ ${gia}</p>
                 <input type="hidden" name="id" value="${pro.id}">
                  <input type="hidden" name="id" value="${pro.id}">
                   <input type="hidden" name="id" value="${pro.id}">
            </div>
        </div>

        
       <a href="./complete">PAY</a>
    </form>



  
        <a href="./undo.jsp">BACK</a>
    </div>
</body>
</html>
