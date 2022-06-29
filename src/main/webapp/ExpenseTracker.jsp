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

            <div> <h1> OutdOOr - Tourist Tool Kit </h1> </div>
            <br>
        </div>
    </div>
    <div class="main3 ">
        <form action="ExpenseTracker" method = "post">
            <div class = "budget">
                <h1> Expense Tracker</h1>
                <p> Note down all the expenses on your vacation and your budget (INR) </p>
                <h3>BUDGET</h3>
                <p>
                    Income aside for emergencies: <input type ="text" name = "Emergency" required id = "Emergency" />
                </p>
                <p>
                    Amount of savings to spend: <input type ="text" name = "Savings" required id = "Savings" />
                </p>
                <p>
                    Any other income: <input type ="text" name = "anyOther" required id = "anyOther" />
                </p>
                <p>
                    Total number of days: <input type ="text" name = "days" required id = "days" />
                </p>
                <input type = "submit" value = "Submit" />
            </div>
            <div class = "costs">
                <h3>COSTS</h3>
                <p>
                    Hotel rent per day: <input type ="text" name = "Rent" required id = "Rent" />
                </p>
                <p>
                    Travel costs per day: <input type ="text" name = "transport" required id = "transport" />
                </p>
                <p>
                    Meal expenses per day: <input type ="text" name = "Food" required id = "Food" />
                </p>
                <p>
                    Amount spent on exploring: <input type ="text" name = "trips" required id = "trips" />
                </p>
                <p>
                    Emergency costs today: <input type ="text" name = "other" required id = "other" />
                </p>
            </div>

        </form>
    </div>
    <div class="logos">
        <p1 id="logo"> OutdOOr </p1>
    </div>
</div>
</body>
</html>
