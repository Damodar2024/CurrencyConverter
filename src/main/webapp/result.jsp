<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Conversion Result</title>
</head>
<body>
    <h2>Converted Amount</h2>
    
    <!-- Check if there is an error message -->
    <c:if test="${not empty error}">
        <p style="color: red;">${error}</p>
    </c:if>

    <!-- Display the conversion result -->
    <p><h1><strong>${amount} ${fromCurrency} = ${convertedAmount} ${toCurrency}</strong></h1></p>
    
    <a href="/">Back To Home Page</a>
</body>
</html>