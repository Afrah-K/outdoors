package com.example.outdoors;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CurrencyConverter", urlPatterns = "/CurrencyConverter")
public class CurrencyConverter extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String currselect = request.getParameter("currselect");
        String currconvert = request.getParameter("currconvert");
        double amount = Double.parseDouble(request.getParameter("amount"));
        double exchangeValue, conversion;

        String Dollar = "Dollar";
        String Euro = "Euro";
        String Pound = "Pound";
        String Franc = "Franc";
        String Rupee = "Rupee";
        String Yen = "Yen";

        if(currselect.equals(Dollar) && currconvert.equals(Dollar)) {
            exchangeValue = 1.00;
        }
        else if (currselect.equals(Dollar) && currconvert.equals(Euro)) {
            exchangeValue = 0.93;
        }
        else if(currselect.equals(Dollar) && currconvert.equals(Pound)) {
            exchangeValue = 0.66;
        }
        else if(currselect.equals(Dollar) && currconvert.equals(Franc)) {
            exchangeValue = 1.01;
        }
        else if(currselect.equals(Dollar) && currconvert.equals(Rupee)) {
            exchangeValue = 76.75;
        }
        else if(currselect.equals(Dollar) && currconvert.equals(Yen)) {
            exchangeValue = 123.54;
        }
        else if(currselect.equals(Euro) && currconvert.equals(Dollar)) {
            exchangeValue = 1.073;
        }
        else if(currselect.equals(Euro) && currconvert.equals(Euro)) {
            exchangeValue = 1.00;
        }
        else if(currselect.equals(Euro) && currconvert.equals(Pound)) {
            exchangeValue = 0.71;
        }
        else if(currselect.equals(Euro) && currconvert.equals(Franc)) {
            exchangeValue = 1.08;
        }
        else if(currselect.equals(Euro) && currconvert.equals(Rupee)) {
            exchangeValue = 82.20;
        }
        else if(currselect.equals(Euro) && currconvert.equals(Yen)) {
            exchangeValue = 132.57;
        }
        else if(currselect.equals(Pound) && currconvert.equals(Dollar)) {
            exchangeValue = 1.51;
        }
        else if(currselect.equals(Pound) && currconvert.equals(Euro)) {
            exchangeValue = 1.41;
        }
        else if(currselect.equals(Pound) && currconvert.equals(Pound)) {
            exchangeValue = 1.00;
        }
        else if(currselect.equals(Pound) && currconvert.equals(Franc)) {
            exchangeValue = 1.52;
        }
        else if(currselect.equals(Pound) && currconvert.equals(Rupee)) {
            exchangeValue = 97.50;
        }
        else if(currselect.equals(Pound) && currconvert.equals(Yen)) {
            exchangeValue = 186.41;
        }
        else if(currselect.equals(Franc) && currconvert.equals(Dollar)) {
            exchangeValue = 0.99;
        }
        else if(currselect.equals(Franc) && currconvert.equals(Euro)) {
            exchangeValue = 0.93;
        }
        else if(currselect.equals(Franc) && currconvert.equals(Pound)) {
            exchangeValue = 0.66;
        }
        else if(currselect.equals(Franc) && currconvert.equals(Franc)) {
            exchangeValue = 1.00;
        }
        else if(currselect.equals(Franc) && currconvert.equals(Rupee)) {
            exchangeValue = 6.33;
        }
        else if(currselect.equals(Franc) && currconvert.equals(Yen)) {
            exchangeValue = 122.84;
        }
        else if(currselect.equals(Rupee) && currconvert.equals(Dollar)) {
            exchangeValue = 0.16;
        }
        else if(currselect.equals(Rupee) && currconvert.equals(Euro)) {
            exchangeValue = 0.15;
        }
        else if(currselect.equals(Rupee) && currconvert.equals(Pound)) {
            exchangeValue = 0.11;
        }
        else if(currselect.equals(Rupee) && currconvert.equals(Franc)) {
            exchangeValue = 0.16;
        }
        else if(currselect.equals(Rupee) && currconvert.equals(Rupee)) {
            exchangeValue = 1.00;
        }
        else if(currselect.equals(Rupee) && currconvert.equals(Yen)) {
            exchangeValue = 19.41;
        }
        else if(currselect.equals(Yen) && currconvert.equals(Dollar)) {
            exchangeValue = 0.008;
        }
        else if(currselect.equals(Yen) && currconvert.equals(Euro)) {
            exchangeValue = 0.007;
        }
        else if(currselect.equals(Yen) && currconvert.equals(Pound)) {
            exchangeValue = 0.005;
        }
        else if(currselect.equals(Yen) && currconvert.equals(Franc)) {
            exchangeValue = 0.008;
        }
        else if(currselect.equals(Yen) && currconvert.equals(Rupee)) {
            exchangeValue = 0.051;
        }
        else { exchangeValue = 1.000; }

        conversion = amount * exchangeValue;

        RequestDispatcher dispatcher = request.getRequestDispatcher("CurrencyConverter.jsp");
        request.setAttribute("convertedvalue",conversion);

        dispatcher.forward(request,response);

    }
}
