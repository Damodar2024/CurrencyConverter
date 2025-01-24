package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class CurrencyController {

    @RequestMapping("/")
    public String home() {
        return "home.jsp";
    }

    @RequestMapping(value = "/CurrencyConvertion", method = RequestMethod.POST)
    public String convertCurrency(@RequestParam("amount") String amount,
                                  @RequestParam("fromCurrency") String fromCurrency,
                                  @RequestParam("toCurrency") String toCurrency,
                                  Model model) {
        try {
            // Parse the amount to double for calculation
            double amountValue = Double.parseDouble(amount);
            double conversionRate = getConversionRate(fromCurrency, toCurrency);

            // Perform the conversion
            double convertedAmount = amountValue * conversionRate;

            // Convert the result to a string and pass it to the result page
            String convertedAmountStr = String.format("%.2f", convertedAmount); // Formatting to 2 decimal places
            model.addAttribute("convertedAmount", convertedAmountStr);
            model.addAttribute("fromCurrency", fromCurrency);
            model.addAttribute("toCurrency", toCurrency);

        } catch (NumberFormatException e) {
            // Handle invalid number format if the amount is not a valid number
            model.addAttribute("error", "Invalid amount entered");
        }

        return "result.jsp"; // Forward to result page
    }

    // A mock function to simulate conversion rates between currencies
    private double getConversionRate(String fromCurrency, String toCurrency) {
        if (fromCurrency.equals("USD") && toCurrency.equals("INR")) {
            return 74.50;  // Example rate
        }
        // Add more conversion rates as needed
        return 1.0; // Default rate (no conversion)
    }
}
