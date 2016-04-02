<%-- 
    Document   : index
    Created on : Apr 2, 2016, 2:13:56 AM
    Author     : Administrator
--%>
<%@page import="AppLogic.FormHandler"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SkyAssistant</title>
    </head>
    <body >
     
        <h1> Welcome to SkyAssistant </h1>

        <form class="form-horizontal" action="response.jsp" method="get">
            <fieldset>

                <!-- Form Name -->
                <legend>SignUp</legend>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="in_name">FullName</label>  
                    <div class="col-md-4">
                        <input id="in_name" name="in_name" type="text" placeholder="" class="form-control input-md">
                        <span class="help-block">help</span>  
                    </div>
                </div>

                <!-- Password input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="in_passwd">Password </label>
                    <div class="col-md-4">
                        <input id="in_passwd" name="in_passwd" type="password" placeholder="" class="form-control input-md">
                        <span class="help-block">help</span>
                    </div>
                </div>

                <!-- Select Basic -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="select_country">Country</label>
                    <div class="col-md-4">
                        <select id="select_country" name="select_country" class="form-control">
                            <option value="1">UAE</option>
                            <option value="2">USA</option>
                            <option value="3">Canada</option>
                            <option value="4">Lebenon</option>
                            <option value="5">KSA</option>
                            <option value="6">Bahrain</option>
                        </select>
                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="in_email">Email</label>  
                    <div class="col-md-4">
                        <input id="in_email" name="in_email" type="text" placeholder="" class="form-control input-md">
                        <span class="help-block">help</span>  
                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="in_DOB">DOB</label>  
                    <div class="col-md-4">
                        <input id="in_DOB" name="in_DOB" type="text" placeholder="MM/dd/YYYY" class="form-control input-md">
                        <span class="help-block">help</span>  
                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="in_address">Address 1</label>  
                    <div class="col-md-4">
                        <input id="in_address" name="in_address" type="text" placeholder="Street Name" class="form-control input-md">
                        <span class="help-block">help</span>  
                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="in_address2">Address 2</label>  
                    <div class="col-md-4">
                        <input id="in_address2" name="in_address2" type="text" placeholder="ZIP, building name" class="form-control input-md">
                        <span class="help-block">help</span>  
                    </div>
                </div>

                <!-- Button (Double) -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="btn_submit">Finish</label>
                    <div class="col-md-8">
                      <input type="submit" value="Submit" />
                    </div>
                    
                </div>
            </fieldset>
        </form>

        <script>
         
        </script>


    </body>
</html>
