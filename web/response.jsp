
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
        <%  FormHandler namehand = new FormHandler();
            DataStoreFunctions ds = new DataStoreFunctions();

            // Grab the variables from the form.
            //ds.createUser();
            String fullname = request.getParameter("in_name");
            String password = request.getParameter("in_passwd");
            String email = request.getParameter("in_email");
            String DOB = request.getParameter("in_DOB");
            
            ds.createUser(fullname,password,email,DOB); //creates User on DataStore
            namehand.setName(request.getParameter("in_name"));
        %>
        <h1>Hello, <%=namehand.getName()%> </h1>
        <h2><%=ds.returnMessage()%></h2>

        <script> </script>
    </body>

</html>
