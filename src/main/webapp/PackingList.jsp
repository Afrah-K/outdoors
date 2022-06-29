<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.text.*" import="java.util.*"%>
<html>
<head>
    <title>PACKING LIST</title>
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
        <h1> Packing List </h1>
        <p> Note down all the things you want to take on your vacation </p>
        <form action="PackingList" method = "post">
            <p>     Enter the Item you want to take: <input type ="text" name = "item1" required id = "item1" /> </p>
            <p>    Enter the Item you want to take: <input type ="text" name = "item2" required id = "item2" /> </p>
            <p>    Enter the Item you want to take: <input type ="text" name = "item3" required id = "item3" /> </p>
            <p>    Enter the Item you want to take: <input type ="text" name = "item4" required id = "item4" /> </p>

            <br />
            <input type = "submit" value = "Submit" />
        </form>
        <!--<c: forEach var = "item" items = "${item}" varStatus="loopCounter";-->
        <ul id="items" class="list-group">
            <li class="list-group-item">${item1} <button class="btn btn-danger btn-sm float-right delete">X</button></li>
            <li class="list-group-item">${item2} <button class="btn btn-danger btn-sm float-right delete">X</button></li>
            <li class="list-group-item">${item3}<button class="btn btn-danger btn-sm float-right delete">X</button></li>
            <li class="list-group-item">${item4}<button class="btn btn-danger btn-sm float-right delete">X</button></li>
        </ul>
    </div>
    <div class="logos">
        <p1 id="logo"> OutdOOr </p1>
    </div>
</div>
</body>
</html>
