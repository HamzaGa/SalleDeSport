<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="cp" value="${pageContext.request.servletContext.contextPath}" scope="request" />
 
<!DOCTYPE html>
 
<%@include file="/WEB-INF/headeruser.html" %>
<div class="col-md-10">		
    <div class="row">
        <div class="col-md-12">
            <div class="content-box-large">
		<div class="panel-body">
                    <div class="row"><br><br><br><br><br><br><br><br><br>
                        <div class="col-md-12"><center><H3>L'adhérent <u>${adherent.prenom} ${adherent.nom}</u> a été supprimé avec succès.</H3></center><br><br><br><br><br><br><br><br><br><br><br><br></div>
                    </div>
		</div>
            </div>
        </div>
    </div>
</div>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="<c:url value="https://code.jquery.com/jquery.js"/>" ></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js" />"></script>
    <script src="<c:url value="/resources/js/custom.js" />"></script>
 