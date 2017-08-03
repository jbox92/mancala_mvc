<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>

<%@ page import="nl.sogyo.mancala.Kalaha" %>

<!DOCTYPE html>
<html>
   <head>
       <title>Current Board</title>
       <link type='text/css' href='board.css' rel='stylesheet'>
   </head>
   <body>
    <div id="top">
           <core:out value="${sessionScope.currentBoard.seeds}" />
           <a href="http://localhost:8081/mancala-mvc/move?hole=13">
            <core:out value="${sessionScope.currentBoard.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.seeds}" />
           </a>
           <a href="http://localhost:8081/mancala-mvc/move?hole=12">
            <core:out value="${sessionScope.currentBoard.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.seeds}" />
           </a>
           <a href="http://localhost:8081/mancala-mvc/move?hole=11">
            <core:out value="${sessionScope.currentBoard.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.seeds}" />
           </a>
           <a href="http://localhost:8081/mancala-mvc/move?hole=10">
            <core:out value="${sessionScope.currentBoard.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.seeds}" />
           </a>
           <a href="http://localhost:8081/mancala-mvc/move?hole=9">
            <core:out value="${sessionScope.currentBoard.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.seeds}" />
           </a>
           <a href="http://localhost:8081/mancala-mvc/move?hole=8">
            <core:out value="${sessionScope.currentBoard.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.seeds}" />
           </a>
    </div>
    <div id="bottom">
       <a href="http://localhost:8081/mancala-mvc/move?hole=1">
        <core:out value="${sessionScope.currentBoard.neighbour.seeds}" />
       </a>
       <a href="http://localhost:8081/mancala-mvc/move?hole=2">
        <core:out value="${sessionScope.currentBoard.neighbour.neighbour.seeds}" />
       </a>
       <a href="http://localhost:8081/mancala-mvc/move?hole=3">
        <core:out value="${sessionScope.currentBoard.neighbour.neighbour.neighbour.seeds}" />
       </a>
       <a href="http://localhost:8081/mancala-mvc/move?hole=4">
        <core:out value="${sessionScope.currentBoard.neighbour.neighbour.neighbour.neighbour.seeds}" />
       </a>
       <a href="http://localhost:8081/mancala-mvc/move?hole=5">
        <core:out value="${sessionScope.currentBoard.neighbour.neighbour.neighbour.neighbour.neighbour.seeds}" />
       </a>
       <a href="http://localhost:8081/mancala-mvc/move?hole=6">
        <core:out value="${sessionScope.currentBoard.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.seeds}" />
       </a>
       <core:out value="${sessionScope.currentBoard.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.neighbour.seeds}" />
    </div>
   </body>
</html>