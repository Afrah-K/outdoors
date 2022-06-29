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
    <title>CURRENCY EXCHANGE</title>
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
            <div class ="app-name" >
                <!--<button type = submit> Local Time</button>
               <button> Weather Forecast</button>-->
             <center>  <h1>OutdOOr - Tourist Tool Kit</h1> </center>
                <br>
            </div>
            <br>
        </div>
    </div>
    <div class="main3 ">
        <h1> Currency Converter </h1>
        <form action="CurrencyConverter" method = "post">
            <p>Enter the currency you want to convert from the following</p>
            <p><b>Dollar, Euro, Pound, Franc, Rupee, Yen :</b></p>
            <input type ="text" name = "currselect" required id = "currselect" />
            <p>Enter the currency you want to convert it to</p>
            <p><b>Dollar, Euro, Pound, Franc, Rupee, Yen :</b></p>
            <input type ="text" name = "currconvert" required id = "currconvert" />
            <p>Enter the amount you want to convert :</p>
            <input type ="text" name = "amount" required id = "amount" />
            <br /><br />
            <input type = "submit" value = "Submit" />
            <br>
            <b><p>The amount converted in the new currency is: ${convertedvalue}</p></b>
            <br>
        </form>
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