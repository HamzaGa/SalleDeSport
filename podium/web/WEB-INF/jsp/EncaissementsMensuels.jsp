<%-- 
    Document   : EnscaissementsJournaliers
    Created on : 20 nov. 2017, 11:55:10
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
        <div class="col-md-10"></div>
	<div class="col-md-12">
            <div class="content-box-large">
		<div class="panel-heading">
                    <div class="col-md-4"></div>  
                            <h3 style="text-align: center;"><b>Encaissements Mensuels</b></h3>
                            <h4 style="text-align: center;"><u> Total pour le mois  ${enc.mois}-${enc.annee}:</u> <b> ${enc.total} DTN </b></h4>
                </div>
		<div class="panel-body">
                    <!--<input type="button" class="btn btn-default"  value="Année" onclick="ajoutD();">-->
                    <form:form class="form-horizontal" method="POST" action="mensuelsForm.htm" modelAttribute="enc">    
                        <div class="row" id="row2">
                            <div class="col-md-2" style="text-align: left;"><H3>
                                <form:select id="mois" cssClass="form-control" path="mois">
                                    <form:option value="01">Janvier</form:option>
                                    <form:option value="02">Février</form:option>
                                    <form:option value="03">Mars</form:option>
                                    <form:option value="04">Avril</form:option>
                                    <form:option value="05">Mai</form:option>
                                    <form:option value="06">Juin</form:option>
                                    <form:option value="07">Juillet</form:option>
                                    <form:option value="08">Août</form:option>
                                    <form:option value="09">Septembre</form:option>
                                    <form:option value="10">Octobre</form:option>
                                    <form:option value="11">Novembre</form:option>
                                    <form:option value="12">Décembre</form:option>  
                                </form:select> </H3>
                            </div>
                            <div class="col-sm-2" style="text-align: left;"><H3>
                                <form:select id="annee" cssClass="form-control" path="annee">
                                    <c:forEach items="${enc.liste}" var="a">
                                        <form:option value="${a}">${a}</form:option>
                                    </c:forEach>
                                </form:select> </H3>
                            </div>
                            <div class="col-sm-2" style="padding-top: 23px;">
                                <form:button  type="submit" class="btn btn-primary btn-sm"> valider <i class="glyphicon glyphicon-check"></i></form:button>
                            </div>
                        </div>
                    </form:form>
                </div>
                <c:choose>
                    <c:when test="${not empty enc.encaissements}">  
                        <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="example">
                            <thead>
                                <tr>
                                    <th>Identifiant</th>
                                    <th>Nom et Prénom</th>
                                    <th>Discipline</th>
                                    <th>Date de paiement</th>
                                    <th>Montant</th>
                                    <th>Moyen de Paiement</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${enc.encaissements}" var="a">
                                    <tr>
                                        <td width = "5%">${a.adherent.numInsc}</td>
                                        <td width = "30%"> ${a.adherent.prenom} ${a.adherent.nom} </td>
                                        <td width = "15%">${a.discipline.nom}</td>
                                        <td width = "22.5%"> ${a.dateP}</td>
                                        <td width = "12.5%">${a.montant} Dinars </td>
                                        <td width = "15%"> ${a.moyenP} </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </c:when>
                    <c:otherwise>
                    <br><br><br><br><center><H3>Aucun encaissement enregistré pendant le mois ${enc.mois}-${enc.annee}.</H3></center><br><br><br><br><br><br><br><br><br><br><br><br>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </div>
</div>
                
                
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="<c:url value="https://code.jquery.com/jquery.js"/>" ></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/resources/js/custom.js" />"></script>
    
<script>
    function ajoutD(){
        document.getElementById("row1").style.display="block";
        document.getElementById("row2").style.display="block";
    }
</script>    
    
 
</body>
</html>