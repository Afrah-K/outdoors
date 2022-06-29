<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.text.*" import="java.util.*"%>
<%@ page import="java.io.PrintWriter" %>

<%
    response.setHeader("Cache-Control","no-cache"); //HTTP 1.1
    response.setHeader("Pragma","no-cache"); //HTTP 1.0
    response.setDateHeader ("Expires", 0);
//prevents caching at the proxy server
%>
<!DOCTYPE html>
<html>
<head>
    <title>MAIN PAGE</title>
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
            <div class="Local-Time">

                <!-- Current Time: java.util.Calendar.getInstance().getTime() %> -->
            </div>
            <div class ="app-name" >
                <!--<button type = submit> Local Time</button>
               <button> Weather Forecast</button>-->
                <center><h1>OutdOOr - Tourist Tool Kit</h1></center>
                <br>
            </div>
        </div>
    </div>
    <div class="main3 ">
        <h1> Overview</h1>
        <p>Today, while travelling we often forget to plan out our vacations. This usually leads us to forget to take things, like the correct money, clothes and more, ending our vacation into one big mess. It often ends up worse if the travel is to a different place where you have no knowledge of anything. Tourism apps help users for planning travel, thus making their holidays more planned out and enjoyable. This report, proposes a web app, an attempt to organise your vacation in a foreign place with all the tools needed to stay in a place like that.

            We named our application OutdOOrs to signify the problems faced when going out of a country you’re familiar with. The Java-based application was created using various technologies which will be presented in the content soon.
        </p>
        <p> There are 3 main components to this project, the Currency Converter, the Expense Tracker and the Packing List.
            The main page is divided into four sections: The local time section, the sidebar, the title, and the content area.</p>
    </div>
    <div class="logos">
        <% SimpleDateFormat formatDate = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss z");
            Date date = new Date();
            formatDate.setTimeZone(TimeZone.getTimeZone("IST"));
            System.out.println(formatDate.format(date));
            PrintWriter outs = response.getWriter();
            outs.println(formatDate.format(date));%>
        <p1 id="logo"> OutdOOr </p1>
    </div>
</div>
</body>
</html>