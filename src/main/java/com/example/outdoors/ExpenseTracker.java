package com.example.outdoors;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ExpenseTracker", urlPatterns = "/ExpenseTracker")
public class ExpenseTracker extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        double Emergency = Double.parseDouble(request.getParameter("Emergency"));
        double Savings = Double.parseDouble(request.getParameter("Savings"));
        double anyOther = Double.parseDouble(request.getParameter("anyOther"));
        double Rent = Double.parseDouble(request.getParameter("Rent"));
        double transport = Double.parseDouble(request.getParameter("transport"));
        double Food = Double.parseDouble(request.getParameter("Food"));
        double trips = Double.parseDouble(request.getParameter("trips"));
        double other = Double.parseDouble(request.getParameter("other"));
        double days = Double.parseDouble(request.getParameter("days"));

        double totalBudget = anyOther + Savings + Emergency;
        double budgetforday = totalBudget / days;
        double totalCost = Rent + Food + transport + trips +other;
        double budgetleft = budgetforday - totalCost;

        RequestDispatcher dispatcher = request.getRequestDispatcher("Tracker.jsp");
        request.setAttribute("budgetforday",budgetforday);
        request.setAttribute("totalCost",totalCost);
        request.setAttribute("budgetleft",budgetleft);

        dispatcher.forward(request,response);


    }
}
