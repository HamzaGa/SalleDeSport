<%-- 
    Document   : ListeImpayes
    Created on : 8 nov. 2017, 11:52:13
    Author     : gkgkj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="cp" value="${pageContext.request.servletContext.contextPath}" scope="request" />
 
<!DOCTYPE html>
<%@include file="/WEB-INF/headeruser.html" %>
 
 
<div class="col-md-10">
    <div class="row">
         <div class="col-md-12">
            <form:form class="form-horizontal" method="POST" action="ListeImpayes.htm" modelAttribute="li">
  		<div class="content-box-large">
                    <div class="panel-heading">
                        <div class="panel-title"><H3></H3></div>
                    </div>
                                            
                <div class="panel-body">
                    <div class="row">
                    
                        <div class="col-md-7"><H5><b>Choisir une discipline :</b>
                    <form:select id="disp" cssClass="selectpicker" path="choixDisp">
                        <form:option value="Karaté">Karaté</form:option>
                        <form:option value="Taekwondo">Taekwondo</form:option>
                        <form:option value="Gymnastque">Gymnastque</form:option>
                        <form:option value="Aerobic 1">Aerobic 1</form:option>
                        <form:option value="Zumba">Zumba</form:option>
                        <form:option value="Culture Physique">Culture Physique</form:option>
                        <form:option value="Kick Boxing">Kick Boxing</form:option>
                        <form:option value="Krav maga">Krav-maga</form:option>
                        <form:option value="Capoeira">Capoeira</form:option>
                        <form:option value="Cardio">Cardio</form:option>
                        <form:option value="Musculation">Musculation</form:option>
                        <form:option value="Yoga">Yoga</form:option>
                    </form:select></H5>
                    <form:button type="submit" class="btn btn-primary">Valider</form:button></div>
                    </div>
            </form:form>   
                                                
            <br><br>
            
            <c:if test="${li.b!=0}">    
                <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="example">
                    <thead>
			<tr>
                            <th>Identifiant</th>
                            <th>Nom et Prénom</th>
                            <th>Discipline</th>
                            <th>Groupe</th>
                            <th>Téléphone</th>
                            <th>date dernier paiement :</th>
                        </tr>
                    </thead>
                    <tbody>
			<c:forEach items="${li.impayes}" var="a">
                            <tr>
                                <td width = "5%">${a.getAdherent().getNumInsc()}</td>
                                <td width = "30%">${a.getAdherent().getNom()}  ${a.getAdherent().getPrenom()}</td>
                                <td width = "20%">${a.getDiscipline().getNom()}</td>
                                <td width = "10%">${a.getDiscipline().getGroupe()}</td>
                                <td width = "15%"> ${a.getAdherent().getTel()}</td>
                                <td width = "20%"> ${a.dateP}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </c:if>
        </div>
    </div>
</div>
            
        
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="<c:url value="https://code.jquery.com/jquery.js"/>" ></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js" />"></script>
    <script src="<c:url value="/resources/js/custom.js" />"></script>
    
      </body>
</html>