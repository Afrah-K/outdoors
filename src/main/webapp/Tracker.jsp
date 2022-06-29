<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.text.*" import="java.util.*"%>
<html>
<head>
    <title>EXPENSE TRACKER</title>
    <link rel="stylesheet" href="main.css">
</head>

<body>
<div class="parent ">
    <div id="side-bar" class="side-bar">
        <div class="group-btn1">
            <br>
            <button onclick="location.href='CurrencyConverter.jsp'">Currency Exchange</button>
            <br>
            <button onclick="location.href='PackingList.jsp'">Packing List</button>
            <br>
            <button onclick="location.href='ExpenseTracker.jsp'">Expense Tracker</button>
        </div>
    </div>
    <div class="main2 ">
        <div class="group-btn2 ">
            <div>
                <% SimpleDateFormat formatDate = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss z");
                    Date date = new Date();
                    formatDate.setTimeZone(TimeZone.getTimeZone("IST"));
                    System.out.println(formatDate.format(date)); %>
            </div>

            <button type = submit> Local Time</button>
            <button> Weather Forecast</button>
            <br>
        </div>
    </div>
    <div class="main3 ">

        <b><p> The budget allowance per day: ${budgetforday}</p></b>
        <br />
        <b><p> The total amount of money used: ${totalCost}</p></b>
        <br />
        <b><p> The budget left for the rest of the day: ${budgetleft}</p></b>

    </div>
    <div class="logos">
        <p1 id="logo"> OutdOOr </p1>
    </div>
</div>
</body>
</html>

