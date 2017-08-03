<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>

<%@ page import="nl.sogyo.mancala.*" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Winner</title>
    </head>
    <body>
        <h1>Player 1 wins!</h1>
        <core:out value="${sessionScope.score}" />
    </body>
</html>