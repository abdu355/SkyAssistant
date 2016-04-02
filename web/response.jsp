
<%@page import="AppLogic.FormHandler"%>
<%@page import="DBHandler.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>

    <body>
        <% FormHandler namehand = new FormHandler();
            DataStoreFunctions ds = new DataStoreFunctions();
           
            // Grab the variables from the form.
           ds.createUser(request.getParameter("in_name"),request.getParameter("in_passwd"),request.getParameter("in_email"),request.getParameter("in_DOB"));
           namehand.setName(request.getParameter("in_name"));
        %>
        <h1>Hello, <%=namehand.getName()%> </h1>
        <h2><%=ds.returnMessage()%></h2>
    </body>

</html>
