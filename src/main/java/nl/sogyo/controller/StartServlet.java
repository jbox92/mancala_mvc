package nl.sogyo.controller;

import nl.sogyo.mancala.Kalaha;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class StartServlet extends HttpServlet {
    protected void doGet (HttpServletRequest req, HttpServletResponse resp)
            throws IOException, ServletException {
        Kalaha board = new Kalaha();

        HttpSession session = req.getSession();
        session.setAttribute("currentBoard", board);

        RequestDispatcher rd = req.getRequestDispatcher("showCurrentBoard.jsp");
        rd.forward(req, resp);
    }
}
