<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="cp" value="${pageContext.request.servletContext.contextPath}" scope="request" />

<!DOCTYPE html>

<html>
  <head>
    <title>PODIUM SPORTS</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="<c:url value="/resources/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/styles.css" />" rel="stylesheet">
  </head>
 
    <body class="login-bg">
  	<div class="header">
	     <div class="container">
	        <div class="row">
	           <div class="col-md-12">
	              <!-- Logo -->
	              <div class="logo">
	                 <h1><a href="index.html">PODIUM SPORTS</a></h1>
	              </div>
	           </div>
	        </div>
	     </div>
	</div>
      <br><br><br><br><br><br><br><br>
	<div class="page-content container">
		<div class="row">
			<div class="col-md-5 col-md-offset-4">
				<div class="login-wrapper">
			        <div class="box">
			            <div class="content-wrap">
			                <h6>Administration</h6>
                          <form:form method="POST" action="/podium/Login.htm" id="formlogin" modelAttribute="user">
                              <form:input path="login" cssClass="form-control" placeholder="login"/>
			      <form:password path="password" cssClass="form-control"  placeholder="mot de passe"/>
			                <div class="action">
                                            <a class="btn btn-primary signup"  onclick="javascript:document.getElementById('formlogin').submit();">CONNEXION</a>
			                </div>      
                                        
                          </form:form>
			            </div>
			        </div>

                                    
			    </div>
			</div>
		</div>
	</div>



    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="<c:url value="https://code.jquery.com/jquery.js" />"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js" />"></script>
    <script src="<c:url value="/resources/js/custom.js" />"></script>
  </body>
</html>