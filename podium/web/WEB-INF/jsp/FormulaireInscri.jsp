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
			  				<div class="panel-heading">
                                                            <div class="row">
                                                                <div class="col-md-4"></div>    
                                                                <div class="col-md-8"><H2><b>Formulaire d'inscription</b></H2><br><br></div>
                                                            
                                                            </div>
					        </div>
			  				<div class="panel-body">
			  					<form:form class="form-horizontal" method="POST" action="ValiderInscription.htm" modelAttribute="f">
                                                                    <div class="row">
                                                                        <div class="col-md-4">
								  <div class="form-group">
								    <label for="inputEmail3" class="col-sm-5 control-label">Nom</label>
								    <div class="col-sm-7">
								      <form:input path="a.nom" type="text" cssClass="form-control" id="inputEmail3" />
								    </div>
                                                                  </div>
								  </div>
                                                                             <div class="col-md-4">
								  <div class="form-group">
								    <label for="inputEmail3" class="col-sm-5 control-label">Prenom</label>
								    <div class="col-sm-7">
								      <form:input path="a.prenom" type="text" cssClass="form-control" id="inputEmail3" />
								    </div>
                                                                  </div>
								  </div>  
                                                                           <div class="col-md-4">
								  <div class="form-group">
								    <label for="inputEmail3" class="col-sm-5 control-label">Date de naissance</label>
								    <div class="col-sm-7">
								      <form:input path="a.dateNaiss" type="date" cssClass="form-control" id="inputEmail3" />
								    </div>
                                                                  </div>
								  </div>   
                                                                        
                                                                    </div>
                                                                    
                                                                    <div class="row">
                                                                        <div class="col-md-4">
								  <div class="form-group">
								    <label for="inputEmail3" class="col-sm-5 control-label">Lieu de naissance</label>
								    <div class="col-sm-7">
								      <form:input path="a.lieuNaiss" type="text" cssClass="form-control" id="inputEmail3" />
								    </div>
                                                                  </div>
								  </div>
                                                                    
                                                                  
                                                                            
                                                                           <div class="col-md-4">
								  <div class="form-group">
								    <label for="inputEmail3" class="col-sm-5 control-label">Adresse</label>
								    <div class="col-sm-7">
								      <form:input path="a.adresse" type="text" cssClass="form-control" id="inputEmail3" />
								    </div>
                                                                  </div>
								  </div>   
                                                                    
                                                                    <div class="col-md-4">
								  <div class="form-group">
								    <label for="inputEmail3" class="col-sm-5 control-label">N°CIN</label>
								    <div class="col-sm-7">
								    <form:input path="a.cin"  type="text" cssClass="form-control" id="inputEmail3" />  
								    </div>
                                                                  </div>
								  </div> 
                                                                    
                                                                        
                                                                    </div>
                                                                    
                                                                    
                                                                    <div class="row">
                                                                        <div class="col-md-4">
								  <div class="form-group">
								    <label for="inputEmail3" class="col-sm-5 control-label">Métier</label>
								    <div class="col-sm-7">
								      <form:input path="a.metier" type="text" cssClass="form-control" id="inputEmail3" />
								    </div>
                                                                  </div>
								  </div>
                                                                             <div class="col-md-4">
								  <div class="form-group">
								    <label for="inputEmail3" class="col-sm-5 control-label">Telephone</label>
								    <div class="col-sm-7">
								      <form:input path="a.tel" type="text" cssClass="form-control" id="inputEmail3" />
								    <br>
                                                                    </div>
                                                                  </div>
								  </div>  
                                                                      
                                                                        
                                                                    </div>
								<div class="row">
                                                                        <div class="col-md-4">
								  <div class="form-group">
								    <label for="inputEmail3" class="col-sm-5 control-label">Parent</label>
								    <div class="col-sm-7">
								      <form:input path="a.parent" type="text" cssClass="form-control" id="inputEmail3" />
								    </div>
                                                                  </div>
								  </div>
                                                                             <div class="col-md-4">
								  <div class="form-group">
								    <label for="inputEmail3" class="col-sm-5 control-label">Métier</label>
								    <div class="col-sm-7">
								      <form:input path="a.metierP" type="text" cssClass="form-control" id="inputEmail3" />
								    </div>
                                                                  </div>
								  </div>  
                                                                           <div class="col-md-4">
								  <div class="form-group">
								    <label for="inputEmail3" class="col-sm-5 control-label">Telephone</label>
								    <div class="col-sm-7">
								      <form:input path="a.telP" type="text" cssClass="form-control" id="inputEmail3" />
                                                                     
                                                                    </div>
                                                                  </div>
								  </div>   
                                                                        
                                                                    </div>
                                                                    
                                                                    <div class="panel-heading">
                                                            <div class="row">
                                                                <div class="col-md-5"></div>    
                                                                <div class="col-md-7"><H3><b>Disciplines:</b>
                                                                        <select class="selectpicker" onChange="afficherDisp();" id="listeDisp">
                                                                          <option value="1">1</option>
                                                                          <option value="2">2</option>
                                                                          <option value="3">3</option>
                                                                      </select> 
                                                                    </H3> 
								      
                                                                            <br></div>
                                                            
                                                            </div>
					        </div>  
                                                                      
                                                                      
                                                                    <div class="row" id="row1">
                                                                        
                                                                        <div class="col-md-3">
								  <div class="form-group">
								    <label for="inputEmail3" class="col-sm-5 control-label">Enfants </label>
								    <div class="col-sm-7">
								      <form:select id="c11" onChange="verrou();" cssClass="selectpicker" path="dispchoix.id">
                                                                          <form:option value="0">Choisir une discipline</form:option>
                                                                          <c:forEach var="listValue" items="${f.d}">
                                                                              
                                                                              <c:if test="${listValue.categorie == 'Enfants'}">
                                                                                  
                                                                                  
                                                                                  <form:option value="${listValue.id}">${listValue.nom} <c:if test="${listValue.groupe != '' }"> - Groupe ${listValue.groupe} </c:if></form:option>
                                                                              </c:if>
                                                                        </c:forEach>
                                                                                 
										  </form:select>
								    </div>
                                                                  </div>
								  </div>
                                                                  
                                                                        <div class="col-md-3">
								  <div class="form-group">
								    <label for="inputEmail3" class="col-sm-5 control-label">Hommes </label>
								    <div class="col-sm-7">
								      <form:select id="c12" onChange="verrou();" cssClass="selectpicker" path="dispchoix.id">
                                                                          <form:option value="0">Choisir une discipline</form:option>
                                                                          <c:forEach var="listValue" items="${f.d}">
                                                                              
                                                                              <c:if test="${listValue.categorie == 'Hommes'}">
                                                                                  
                                                                                  
                                                                              <form:option value="${listValue.id}">${listValue.nom} <c:if test="${listValue.groupe != '' }"> - Groupe ${listValue.groupe} </c:if></form:option>
                                                                              </c:if>
                                                                        </c:forEach>
                                                                                 
										  </form:select>
								    </div>
                                                                  </div>
								  </div>      
                                                                        
                                                                        <div class="col-md-3">
								  <div class="form-group">
								    <label for="inputEmail3" class="col-sm-5 control-label">Femmes </label>
								    <div class="col-sm-7">
								      <form:select id="c13" onChange="verrou();" cssClass="selectpicker" path="dispchoix.id">
                                                                        <form:option value="0">Choisir une discipline</form:option>
                                                                          <c:forEach var="listValue" items="${f.d}">
                                                                              
                                                                              <c:if test="${listValue.categorie == 'Femmes'}">
                                                                                  
                                                                                  
                                                                              <form:option value="${listValue.id}">${listValue.nom} <c:if test="${listValue.groupe != '' }"> - Groupe ${listValue.groupe} </c:if></form:option>
                                                                              </c:if>
                                                                        </c:forEach>
                                                                                 
										  </form:select>
								    </div>
                                                                  </div>
								  </div> 
                                                                  
                                                                        <div class="col-md-3">
								  <div class="form-group">
								    <label for="inputEmail3" class="col-sm-5 control-label">Mixte </label>
								    <div class="col-sm-7">
								      <form:select id="c14" onChange="verrou();" cssClass="selectpicker" path="dispchoix.id">
                                                                          <form:option value="0">Choisir une discipline</form:option>
                                                                          <c:forEach var="listValue" items="${f.d}">
                                                                              
                                                                              <c:if test="${listValue.categorie == 'Mixte'}">
                                                                                  
                                                                                  
                                                                              <form:option value="${listValue.id}">${listValue.nom} <c:if test="${listValue.groupe != '' }"> - Groupe ${listValue.groupe} </c:if></form:option>
                                                                              </c:if>
                                                                        </c:forEach>
                                                                                 
										  </form:select>
								    </div>
                                                                  </div>
								  </div>      
                                                                        
                                                                        
                                                                    </div>
                                                                      
                                                                      
                                                                <div class="row" id="row2" style="display:none">
                                                                        
                                                                        <div class="col-md-3">
								  <div class="form-group">
								    <label for="inputEmail3" class="col-sm-5 control-label">Enfants </label>
								    <div class="col-sm-7">
								      <form:select id="c21" onChange="verrou();" cssClass="selectpicker" path="dispchoix2.id">
                                                                          <form:option value="0">Choisir une discipline</form:option>
                                                                          <c:forEach var="listValue" items="${f.d}">
                                                                              
                                                                              <c:if test="${listValue.categorie == 'Enfants'}">
                                                                                  
                                                                                  
                                                                                  <form:option value="${listValue.id}">${listValue.nom} <c:if test="${listValue.groupe != '' }"> - Groupe ${listValue.groupe} </c:if></form:option>
                                                                              </c:if>
                                                                        </c:forEach>
                                                                                 
										  </form:select>
								    </div>
                                                                  </div>
								  </div>
                                                                  
                                                                        <div class="col-md-3">
								  <div class="form-group">
								    <label for="inputEmail3" class="col-sm-5 control-label">Hommes </label>
								    <div class="col-sm-7">
								      <form:select onChange="verrou();" id="c22" cssClass="selectpicker" path="dispchoix2.id">
                                                                          <form:option value="0">Choisir une discipline</form:option>
                                                                          <c:forEach var="listValue" items="${f.d}">
                                                                              
                                                                              <c:if test="${listValue.categorie == 'Hommes'}">
                                                                                  
                                                                                  
                                                                              <form:option value="${listValue.id}">${listValue.nom} <c:if test="${listValue.groupe != '' }"> - Groupe ${listValue.groupe} </c:if></form:option>
                                                                              </c:if>
                                                                        </c:forEach>
                                                                                 
										  </form:select>
								    </div>
                                                                  </div>
								  </div>      
                                                                        
                                                                        <div class="col-md-3">
								  <div class="form-group">
								    <label for="inputEmail3" class="col-sm-5 control-label">Femmes </label>
								    <div class="col-sm-7">
								      <form:select onChange="verrou();" id="c23" cssClass="selectpicker" path="dispchoix2.id">
                                                                        <form:option value="0">Choisir une discipline</form:option>
                                                                          <c:forEach var="listValue" items="${f.d}">
                                                                              
                                                                              <c:if test="${listValue.categorie == 'Femmes'}">
                                                                                  
                                                                                  
                                                                              <form:option value="${listValue.id}">${listValue.nom} <c:if test="${listValue.groupe != '' }"> - Groupe ${listValue.groupe} </c:if></form:option>
                                                                              </c:if>
                                                                        </c:forEach>
                                                                                 
										  </form:select>
								    </div>
                                                                  </div>
								  </div> 
                                                                  
                                                                        <div class="col-md-3">
								  <div class="form-group">
								    <label for="inputEmail3" class="col-sm-5 control-label">Mixte </label>
								    <div class="col-sm-7">
								      <form:select onChange="verrou();" id="c24" cssClass="selectpicker" path="dispchoix2.id">
                                                                          <form:option value="0">Choisir une discipline</form:option>
                                                                          <c:forEach var="listValue" items="${f.d}">
                                                                              
                                                                              <c:if test="${listValue.categorie == 'Mixte'}">
                                                                                  
                                                                                  
                                                                              <form:option value="${listValue.id}">${listValue.nom} <c:if test="${listValue.groupe != '' }"> - Groupe ${listValue.groupe} </c:if></form:option>
                                                                              </c:if>
                                                                        </c:forEach>
                                                                                 
										  </form:select>
								    </div>
                                                                  </div>
								  </div>      
                                                                        
                                                                        
                                                                    </div>      
                                                                      
                                                                    
                                                                <div class="row" id="row3" style="display:none">
                                                                        
                                                                        <div class="col-md-3">
								  <div class="form-group">
								    <label for="inputEmail3" class="col-sm-5 control-label">Enfants </label>
								    <div class="col-sm-7">
								      <form:select onChange="verrou();" id="c31" cssClass="selectpicker" path="dispchoix3.id">
                                                                          <form:option value="0">Choisir une discipline</form:option>
                                                                          <c:forEach var="listValue" items="${f.d}">
                                                                              
                                                                              <c:if test="${listValue.categorie == 'Enfants'}">
                                                                                  
                                                                                  
                                                                                  <form:option value="${listValue.id}">${listValue.nom} <c:if test="${listValue.groupe != '' }"> - Groupe ${listValue.groupe} </c:if></form:option>
                                                                              </c:if>
                                                                        </c:forEach>
                                                                                 
										  </form:select>
								    </div>
                                                                  </div>
								  </div>
                                                                  
                                                                        <div class="col-md-3">
								  <div class="form-group">
								    <label for="inputEmail3" class="col-sm-5 control-label">Hommes </label>
								    <div class="col-sm-7">
								      <form:select onChange="verrou();" id="c32" cssClass="selectpicker" path="dispchoix3.id">
                                                                          <form:option value="0">Choisir une discipline</form:option>
                                                                          <c:forEach var="listValue" items="${f.d}">
                                                                              
                                                                              <c:if test="${listValue.categorie == 'Hommes'}">
                                                                                  
                                                                                  
                                                                              <form:option value="${listValue.id}">${listValue.nom} <c:if test="${listValue.groupe != '' }"> - Groupe ${listValue.groupe} </c:if></form:option>
                                                                              </c:if>
                                                                        </c:forEach>
                                                                                 
										  </form:select>
								    </div>
                                                                  </div>
								  </div>      
                                                                        
                                                                        <div class="col-md-3">
								  <div class="form-group">
								    <label for="inputEmail3" class="col-sm-5 control-label">Femmes </label>
								    <div class="col-sm-7">
								      <form:select onChange="verrou();" id="c33" cssClass="selectpicker" path="dispchoix3.id">
                                                                        <form:option value="0">Choisir une discipline</form:option>
                                                                          <c:forEach var="listValue" items="${f.d}">
                                                                              
                                                                              <c:if test="${listValue.categorie == 'Femmes'}">
                                                                                  
                                                                                  
                                                                              <form:option value="${listValue.id}">${listValue.nom} <c:if test="${listValue.groupe != '' }"> - Groupe ${listValue.groupe} </c:if></form:option>
                                                                              </c:if>
                                                                        </c:forEach>
                                                                                 
										  </form:select>
								    </div>
                                                                  </div>
								  </div> 
                                                                  
                                                                        <div class="col-md-3">
								  <div class="form-group">
								    <label for="inputEmail3" class="col-sm-5 control-label">Mixte </label>
								    <div class="col-sm-7">
								      <form:select onChange="verrou();" id="c34" cssClass="selectpicker" path="dispchoix3.id">
                                                                          <form:option value="0">Choisir une discipline</form:option>
                                                                          <c:forEach var="listValue" items="${f.d}">
                                                                              
                                                                              <c:if test="${listValue.categorie == 'Mixte'}">
                                                                                  
                                                                                  
                                                                              <form:option value="${listValue.id}">${listValue.nom} <c:if test="${listValue.groupe != '' }"> - Groupe ${listValue.groupe} </c:if></form:option>
                                                                              </c:if>
                                                                        </c:forEach>
                                                                                 
										  </form:select>
								    </div>
                                                                  </div>
								  </div>      
                                                                        
                                                                        
                                                                    </div>    
								  
								
                                                                      
								  <div class="form-group">
								    <div class="col-sm-offset-1 col-sm-10">
                                                                        <br><br>
                                                                        <center>
                                                                        <form:button type="submit" class="btn btn-primary">Valider</form:button>
                                                                        </center>
								    </div>
								  </div>
								</form:form>
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
    
    <script>
        function afficherDisp(){
        
        if (document.getElementById("listeDisp").value=="1")
        {
            document.getElementById("row1").style.display="block";
            document.getElementById("row2").style.display="none";
            document.getElementById("row3").style.display="none";
        }
        if (document.getElementById("listeDisp").value=="2")
        {   
            document.getElementById("row1").style.display="block";
            document.getElementById("row2").style.display="block";
            document.getElementById("row3").style.display="none";
        }
        
        if (document.getElementById("listeDisp").value=="3")
        {   
            document.getElementById("row1").style.display="block";
            document.getElementById("row2").style.display="block";
            document.getElementById("row3").style.display="block";
        }
        
        }
        
    function verrou(){
        
        if(document.getElementById("c11").value!="0")
        {
           document.getElementById("c12").disabled=true; 
           document.getElementById("c13").disabled=true; 
           document.getElementById("c14").disabled=true; 
        }
        
        if(document.getElementById("c12").value!="0")
        {
           document.getElementById("c11").disabled=true; 
           document.getElementById("c13").disabled=true; 
           document.getElementById("c14").disabled=true; 
        }
        
        if(document.getElementById("c13").value!="0")
        {
           document.getElementById("c12").disabled=true; 
           document.getElementById("c11").disabled=true; 
           document.getElementById("c14").disabled=true; 
        }
        
        if(document.getElementById("c14").value!="0")
        {
           document.getElementById("c12").disabled=true; 
           document.getElementById("c13").disabled=true; 
           document.getElementById("c11").disabled=true; 
        }
        
        if(document.getElementById("c21").value!="0")
        {
           document.getElementById("c22").disabled=true; 
           document.getElementById("c23").disabled=true; 
           document.getElementById("c24").disabled=true; 
        }
        if(document.getElementById("c22").value!="0")
        {
           document.getElementById("c21").disabled=true; 
           document.getElementById("c23").disabled=true; 
           document.getElementById("c24").disabled=true; 
        }
        if(document.getElementById("c23").value!="0")
        {
           document.getElementById("c22").disabled=true; 
           document.getElementById("c21").disabled=true; 
           document.getElementById("c24").disabled=true; 
        }
        if(document.getElementById("c24").value!="0")
        {
           document.getElementById("c22").disabled=true; 
           document.getElementById("c23").disabled=true; 
           document.getElementById("c21").disabled=true; 
        }
        if(document.getElementById("c31").value!="0")
        {
           document.getElementById("c32").disabled=true; 
           document.getElementById("c33").disabled=true; 
           document.getElementById("c34").disabled=true; 
        }
        if(document.getElementById("c32").value!="0")
        {
           document.getElementById("c31").disabled=true; 
           document.getElementById("c33").disabled=true; 
           document.getElementById("c34").disabled=true; 
        }
        if(document.getElementById("c33").value!="0")
        {
           document.getElementById("c32").disabled=true; 
           document.getElementById("c31").disabled=true; 
           document.getElementById("c34").disabled=true; 
        }
        if(document.getElementById("c34").value!="0")
        {
           document.getElementById("c32").disabled=true; 
           document.getElementById("c33").disabled=true; 
           document.getElementById("c31").disabled=true; 
        }
    
        
    }    
        
        </script>
    
  </body>
</html>