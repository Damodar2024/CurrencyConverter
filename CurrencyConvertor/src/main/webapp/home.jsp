<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Currency Converter</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #635BFF;
            text-align: center;
        }
        .container {
            background: white;
            padding: 20px;
            border-radius: 10px;
            width: 350px;
            margin: 100px auto;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
        }
        input, select, button {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        button {
            background-color: #635BFF;
            color: white;
            font-size: 16px;
            cursor: pointer;
        }
        button:hover {
            background-color: #4a47d1;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Currency Converter</h2>
        <form action="CurrencyConverter" method="post">
            <label>Enter Amount:</label>
            <input type="number" name="amount" required>

            <label>From:</label>
            <select name="fromCurrency">
                <option value="USD">🇺🇸 USD</option>
                <option value="INR">🇮🇳 INR</option>
                <option value="EUR">🇪🇺 EUR</option>
                <option value="GBP">🇬🇧 GBP</option>
                <option value="AUD">🇦🇺 AUD</option>
            </select>

            <label>To:</label>
            <select name="toCurrency">
                <option value="INR">🇮🇳 INR</option>
                <option value="USD">🇺🇸 USD</option>
                <option value="EUR">🇪🇺 EUR</option>
                <option value="GBP">🇬🇧 GBP</option>
                <option value="AUD">🇦🇺 AUD</option>
            </select>

            <button type="submit">Get Exchange Rate</button>
        </form>
    </div>
</body>
</html>
