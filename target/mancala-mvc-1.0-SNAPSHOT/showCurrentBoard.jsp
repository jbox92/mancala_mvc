<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>

<%@ page import="nl.sogyo.mancala.*" %>

<!DOCTYPE html>
<html>
   <head>
       <title>Game</title>
       <link type='text/css' href='board.css' rel='stylesheet'>
   </head>
   <body>
    <div id="top">
           <core:out value="${sessionScope.currentBoard.seeds}" />
           <a href="/mancala-mvc/mancala?action=move&hole=13">
            <core:out value="${sessionScope.currentBoard.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.seeds}" />
           </a>
           <a href="/mancala-mvc/mancala?action=move&hole=12">
            <core:out value="${sessionScope.currentBoard.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.seeds}" />
           </a>
           <a href="/mancala-mvc/mancala?action=move&hole=11">
            <core:out value="${sessionScope.currentBoard.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.seeds}" />
           </a>
           <a href="/mancala-mvc/mancala?action=move&hole=10">
            <core:out value="${sessionScope.currentBoard.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.seeds}" />
           </a>
           <a href="/mancala-mvc/mancala?action=move&hole=9">
            <core:out value="${sessionScope.currentBoard.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.seeds}" />
           </a>
           <a href="/mancala-mvc/mancala?action=move&hole=8">
            <core:out value="${sessionScope.currentBoard.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.seeds}" />
           </a>
    </div>
    <div id="bottom">
       <a href="/mancala-mvc/mancala?action=move&hole=1">
        <% Kalaha kalaha = (Kalaha) session.getAttribute("currentBoard");%>
        <%= kalaha.getNthHole(1).getSeeds() %>
       </a>
       <a href="/mancala-mvc/mancala?action=move&hole=2">
        <core:out value="${sessionScope.currentBoard.getNthHole(2).seeds}" />
       </a>
       <a href="/mancala-mvc/mancala?action=move&hole=3">
        <core:out value="${sessionScope.currentBoard.neighbour.neighbour.neighbour.seeds}" />
       </a>
       <a href="/mancala-mvc/mancala?action=move&hole=4">
        <core:out value="${sessionScope.currentBoard.neighbour.neighbour.neighbour.neighbour.seeds}" />
       </a>
       <a href="/mancala-mvc/mancala?action=move&hole=5">
        <core:out value="${sessionScope.currentBoard.neighbour.neighbour.neighbour.neighbour.neighbour.seeds}" />
       </a>
       <a href="/mancala-mvc/mancala?action=move&hole=6">
        <core:out value="${sessionScope.currentBoard.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.seeds}" />
       </a>
       <core:out value="${sessionScope.currentBoard.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.seeds}" />
    </div>
   </body>
</html>