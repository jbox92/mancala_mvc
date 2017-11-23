package nl.sogyo.controller;

import nl.sogyo.mancala.*;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class MancalaServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        doPost(request,response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();
        switch (request.getParameter("action")) {
            case "start": initializeGame(session); break;
            case "move": doMove(session,request);
        }
        Kalaha board = (Kalaha) session.getAttribute("currentBoard");
        RequestDispatcher rd;
        if (board.moveAvailable()) {
            rd = request.getRequestDispatcher("showCurrentBoard.jsp");
        } else {
            if (board.winner().equals(board.getOwner().getOpponent())) {
                session.setAttribute("score", board.getOwner().getOpponent().getEndScore());
                session.setAttribute("winner", "1");
            } else {
                session.setAttribute("score", board.getOwner().getEndScore());
                session.setAttribute("winner", "2");
            }
            rd = request.getRequestDispatcher("winner.jsp");
        }
        rd.forward(request, response);
    }

    private void doMove(HttpSession session, HttpServletRequest request) {
        Kalaha kalaha = (Kalaha) session.getAttribute("currentBoard");
        int holeToMove = Integer.parseInt(request.getParameter("hole"));
        for (int i=0;i<holeToMove;i++) {
            kalaha = kalaha.getNeighbour();
        }
        ((Hole) kalaha).move();
    }

    private void initializeGame(HttpSession session) {
        Kalaha board = new Kalaha();
        session.setAttribute("currentBoard", board);
    }
}
