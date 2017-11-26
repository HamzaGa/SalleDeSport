<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="cp" value="${pageContext.request.servletContext.contextPath}" scope="request" />
 
<!DOCTYPE html>
 
<%@include file="/WEB-INF/headeruser.html" %>
                    <div class="col-md-10">
		  	<div class="row">
                            
                            <div class="col-md-10">
                            </div>
		  		
                            <div class="col-md-12">
  					<div class="content-box-large">
		  				<div class="panel-heading">
                                                    <div class="col-md-4"></div>  
                                                    <div class="col-md-8"><H3><b>LISTE DES ADHÉRENTS</b></H3><br></div>
							
                                                </div>
		  				<div class="panel-body">
		  					<table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="example">
						<thead>
							<tr>
								
                                                                <th>Identifiant</th>
                                                                <th>Nom et Prénom</th>
								<th>Discipline</th>
								<th>Groupe</th>
                                                                <th>Téléphone</th>
                                                                <th>Date Inscription</th>
                                                                
							</tr>
						</thead>
						<tbody>
							<c:set var="i" value="0"/>
                                                    <c:forEach items="${adherents.adherents}" var="a"> 
                                                        <form:form cssClass="form-horizontal" method="POST" action="formApercu.htm" modelAttribute="adherents" id="${i}">
                                                            <c:forEach var="d" items="${a.disciplines}">
                                                                <form:input type="hidden" path="a.numInsc" value="${a.numInsc}" />
                                                                    <tr onclick= "javascript:document.getElementById(${i}).submit();">
                                                                        <td width = "5%">${a.numInsc}</td>
                                                                        <td width = "30%">${a.nom}  ${a.prenom}</td>
                                                                        <td width = "20%">${d.nom}</td>
                                                                        <td width = "10%">${d.groupe}</td>
                                                                        <td width = "15%"> ${a.tel}</td>
                                                                        <td width = "20%"> ${a.dateInsc}</td>
                                                                    </tr>
                                                                </c:forEach>
                                                            <c:set var="i" value="${i+ 1}"/>
                                                        </form:form>
                                                    </c:forEach>
						</tbody>
					</table>
		  				</div>
		  			</div>
  				</div>
                        </div>

		  	<div class="row">
                            </div>

		  	
		  </div>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="<c:url value="https://code.jquery.com/jquery.js"/>" ></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js" />"></script>
    <script src="<c:url value="/resources/js/custom.js" />"></script>
    
  </body>
</html>