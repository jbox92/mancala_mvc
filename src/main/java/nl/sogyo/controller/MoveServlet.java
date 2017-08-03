package nl.sogyo.controller;

import nl.sogyo.mancala.Hole;
import nl.sogyo.mancala.Kalaha;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class MoveServlet extends HttpServlet {
    protected void doGet (HttpServletRequest req, HttpServletResponse resp)
            throws IOException, ServletException {

        HttpSession session = req.getSession();
        Kalaha kalaha = (Kalaha) session.getAttribute("currentBoard");
        Kalaha origin = kalaha;
        String query = req.getQueryString();
        int holeNumber = Integer.parseInt(query.substring(query.indexOf("=")+1));
        for (int i=0;i<holeNumber;i++) {
            kalaha = kalaha.getNeighbour();
        }
        ((Hole) kalaha).move();
        RequestDispatcher rd;
        if (origin.moveAvailable()) {
            rd = req.getRequestDispatcher("showCurrentBoard.jsp");
        } else {
            if (origin.winner().equals(origin.getOwner().getOpponent())) {
                session.setAttribute("score", origin.getOwner().getOpponent().getEndScore());
                rd = req.getRequestDispatcher("player1wins.jsp");
            } else {
                session.setAttribute("score", origin.getOwner().getEndScore());
                rd = req.getRequestDispatcher("player2wins.jsp");
            }
        }

        rd.forward(req, resp);
    }
}