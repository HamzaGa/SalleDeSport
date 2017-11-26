<%-- 
    Document   : Accueil
    Created on : 26 nov. 2017, 12:08:47
    Author     : gkgkj
--%>

﻿<%-- 
    Document   : ListeImpayes
    Created on : 8 nov. 2017, 11:52:13
    Author     : gkgkj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="cp" value="${pageContext.request.servletContext.contextPath}" scope="request" />
         <link href="<c:url value="/resources/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">

<!DOCTYPE html>
<%@include file="/WEB-INF/headeruser.html" %>


<div class="col-md-10">
    <div class="row">
         <div class="col-md-12">
            <div class="content-box-large">
                <div class="panel-heading">
                    
                </div>
                <div class="panel-body">
                    <div class="row">
  			<div class="col-md-3">
                            <input type="text" value="54" class="knob second" data-thickness=".3" data-inputColor="#333" data-fgColor="#30a1ec" data-bgColor="#d4ecfd" data-width="150">
  			</div>
  			<div class="col-md-3">
                            <input type="text" value="75" class="knob second" data-thickness=".3" data-inputColor="#333" data-fgColor="#8ac368" data-bgColor="#c4e9aa" data-width="150">
  			</div>
  			<div class="col-md-3">
                            <input type="text" value="35" class="knob second" data-thickness=".3" data-inputColor="#333" data-fgColor="#5ba0a3" data-bgColor="#cef3f5" data-width="150">
  			</div>
  			<div class="col-md-3">
                            <input type="text" value="85" class="knob second" data-thickness=".3" data-inputColor="#333" data-fgColor="#b85e80" data-bgColor="#f8d2e0" data-width="150">
  			</div>
                    </div>                
                </div>
            </div>
         </div>
    </div>
</div>


 
    
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script type="text/javascript" src="<c:url value="https://code.jquery.com/jquery.js"/>" ></script>
        <!-- jQuery UI -->
    <script type="text/javascript" src="<c:url value = "https://code.jquery.com/ui/1.10.3/jquery-ui.js" />"></script>
        
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script type="text/javascript" src="<c:url value="/resources/bootstrap/js/bootstrap.min.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/custom.js" />"></script>
        
    <script type="text/javascript" src= "<c:url value = "/resources/vendors/jquery.knob.js"/>" ></script> 


</body>
</html>