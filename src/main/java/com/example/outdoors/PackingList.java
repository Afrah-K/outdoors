package com.example.outdoors;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.*;

@WebServlet(name = "PackingList", value = "/PackingList")
public class PackingList extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String item1 = request.getParameter("item1");
        String item2 = request.getParameter("item2");
        String item3 = request.getParameter("item3");
        String item4 = request.getParameter("item4");

        RequestDispatcher dispatcher = request.getRequestDispatcher("PackingList.jsp");
        request.setAttribute("item1",item1);
        request.setAttribute("item2",item2);
        request.setAttribute("item3",item3);
        request.setAttribute("item4",item4);

        dispatcher.forward(request,response);
    }
}
