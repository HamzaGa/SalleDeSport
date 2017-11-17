<%-- 
    Document   : FormulaireApercu
    Created on : 15 oct. 2017, 15:33:11
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
  <div class="content-box-large">
			  				<div class="panel-heading">
                                                            <div class="row">
                                                                <div class="col-md-4"></div>    
                                                                <div class="col-md-8"><H2><b>Formulaire d'inscription</b></H2><br><br></div>
                                                            
                                                            </div>
					        </div>
			  				<div class="panel-body">
			  					<form:form class="form-horizontal" method="POST" action="Modifier.htm" modelAttribute="f">
                                                                    <div class="row">
                                                                        <div class="col-md-4">
								  <div class="form-group">
								    <label for="inputEmail3" class="col-sm-5 control-label">Nom</label>
								    <div class="col-sm-7">
								      <form:input path="a.nom" type="text" readonly="true" cssClass="form-control" id="nom" />
								    </div>
                                                                  </div>
                                                                    <div class="form-group">
								    <div class="col-sm-7">
								      <form:input path="a.numInsc" type="hidden" cssClass="form-control" id="NumInsc" />
								    </div>
                                                                  </div>
                                                                    <div class="form-group">
								    <div class="col-sm-7">
								      <form:input path="a.dateInsc" type="hidden" cssClass="form-control" id="dateInsc" />
								    </div>
                                                                  </div>
								  </div>
                                                                  <div class="col-md-4">
								  <div class="form-group">
								    <label for="inputEmail3" class="col-sm-5 control-label">Prenom</label>
								    <div class="col-sm-7">
								      <form:input path="a.prenom" readonly="true" type="text" cssClass="form-control" id="prenom" />
								    </div>
                                                                  </div>
								  </div>  
                                                                           <div class="col-md-4">
								  <div class="form-group">
								    <label for="inputEmail3" class="col-sm-5 control-label">Date de naissance</label>
								    <div class="col-sm-7">
								      <form:input path="a.dateNaiss" readonly="true" type="date" cssClass="form-control" id="dateNaiss" />
								    </div>
                                                                  </div>
								  </div>   
                                                                        
                                                                    </div>
                                                                    
                                                                    <div class="row">
                                                                        <div class="col-md-4">
								  <div class="form-group">
								    <label for="inputEmail3" class="col-sm-5 control-label">Lieu de naissance</label>
								    <div class="col-sm-7">
								      <form:input path="a.lieuNaiss" readonly="true" type="text" cssClass="form-control" id="lieuNaiss" />
								    </div>
                                                                  </div>
								  </div>
                                                                    
                                                                  
                                                                            
                                                                           <div class="col-md-4">
								  <div class="form-group">
								    <label for="inputEmail3" class="col-sm-5 control-label">Adresse</label>
								    <div class="col-sm-7">
								      <form:input path="a.adresse" readonly="true" type="text" cssClass="form-control" id="adresse" />
								    </div>
                                                                  </div>
								  </div>   
                                                                    
                                                                    <div class="col-md-4">
								  <div class="form-group">
								    <label for="inputEmail3" class="col-sm-5 control-label">N°CIN</label>
								    <div class="col-sm-7">
								    <form:input path="a.cin" readonly="true" type="text" cssClass="form-control" id="cin" />  
								    </div>
                                                                  </div>
								  </div> 
                                                                    
                                                                        
                                                                    </div>
                                                                    
                                                                    
                                                                    <div class="row">
                                                                        <div class="col-md-4">
								  <div class="form-group">
								    <label for="inputEmail3" class="col-sm-5 control-label">Métier</label>
								    <div class="col-sm-7">
								      <form:input path="a.metier" readonly="true" type="text" cssClass="form-control" id="metier" />
								    </div>
                                                                  </div>
								  </div>
                                                                             <div class="col-md-4">
								  <div class="form-group">
								    <label for="inputEmail3" class="col-sm-5 control-label">Telephone</label>
								    <div class="col-sm-7">
								      <form:input path="a.tel" readonly="true" type="text" cssClass="form-control" id="tel" />
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
								      <form:input path="a.parent" readonly="true" type="text" cssClass="form-control" id="parent" />
								    </div>
                                                                  </div>
								  </div>
                                                                             <div class="col-md-4">
								  <div class="form-group">
								    <label for="inputEmail3" class="col-sm-5 control-label">Métier</label>
								    <div class="col-sm-7">
								      <form:input path="a.metierP"  readonly="true" type="text" cssClass="form-control" id="metierP" />
								    </div>
                                                                  </div>
								  </div>  
                                                                           <div class="col-md-4">
								  <div class="form-group">
								    <label for="inputEmail3" class="col-sm-5 control-label">Telephone</label>
								    <div class="col-sm-7">
								      <form:input path="a.telP" readonly="true" type="text" cssClass="form-control" id="telP" />
                                                                    </div>
                                                                  </div>
								  </div>   
                                                                </div>
                                                                    <br>
                                                                    
                                                                <c:if test="${f.dispchoix!=null}">
                                                                    <div class="row"><br><br>
                                                                        <div class="col-md-4">
                                                                            <div class="form-group">
                                                                                <label for="inputEmail3" id="label1" class="col-sm-5 control-label">Discipline (1)</label>
                                                                                <div class="col-sm-7">
                                                                                    <form:input path="dispchoix.nom" readonly="true" disabled="true" type="text" id="choix1" cssClass="form-control" />
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    
                                                                        <div class="col-md-4">
                                                                            <div class="form-group">
                                                                                <label for="inputEmail3" id="label2" class="col-sm-5 control-label">Groupe</label>
                                                                                    <div class="col-sm-7">
                                                                                        <form:input path="dispchoix.groupe" readonly="true" disabled="true" type="text" id="choix2" cssClass="form-control"  />
                                                                                    </div>
                                                                            </div> 
                                                                        </div>
                                                                    <c:if test="${f.dispchoix2!=null}">                       
                                                                        <div class="col-md-2">
                                                                            <form:button type="submit" name="supprimerDisp1" class="btn btn-warning" value="supprimer">Supprimer</form:button>
                                                                        </div>   
                                                                    </c:if>               
                                                                    
                                                                        <div class="col-md-2">
                                                                            <div class="form-group">
                                                                                    <div class="col-sm-7">
                                                                                        <form:input path="dispchoix.id" readonly="true" type="hidden" id="choix3" cssClass="form-control" />
                                                                                    </div>
                                                                            </div> 
                                                                        </div>             
                                                                </div> 
                                                                </c:if>
                                                                                   
                                                                          
                                                                                    
                                                                <c:if test="${f.dispchoix2!=null}">
                                                                    <div class="row">
                                                                        <div class="col-md-4">
                                                                            <div class="form-group">
                                                                                <label for="inputEmail3" id="label11" class="col-sm-5 control-label"> Discipline (2)</label>
                                                                                <div class="col-sm-7">
                                                                                    <form:input path="dispchoix2.nom" readonly="true" type="text" cssClass="form-control" id="choix11" />
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    
                                                                        <div class="col-md-4">
                                                                            <div class="form-group">
                                                                                <label for="inputEmail3" id="label22" class="col-sm-5 control-label"> Groupe </label>
                                                                                
                                                                                    <div class="col-sm-7">
                                                                                        <form:input path="dispchoix2.groupe" readonly="true" type="text" cssClass="form-control" id="choix22" />
                                                                                    </div>
                                                                            </div> 
                                                                        </div>
                                                                                    
                                                                        <div class="col-md-2">
                                                                            <form:button type="submit" name="supprimerDisp2" class="btn btn-warning" value="supprimer">Supprimer</form:button>
                                                                        </div>           
                                                                                    
                                                                    
                                                                       <div class="col-md-2">
                                                                            <div class="form-group">
                                                                                    <div class="col-sm-7">
                                                                                        <form:input path="dispchoix2.id" readonly="true" type="hidden" id="choix33" cssClass="form-control" />
                                                                                    </div>
                                                                            </div> 
                                                                        </div>             
                                                                </div> 
                                                                         
                                                                </c:if>
                                                        
                                                                <c:if test="${f.dispchoix3!=null}">    
                                                                    <div class="row">
                                                                        <div class="col-md-4">
                                                                            <div class="form-group">
                                                                                <label for="inputEmail3" id="label111" class="col-sm-5 control-label">Discipline (3)</label>
                                                                                <div class="col-sm-7">
                                                                                    <form:input path="dispchoix3.nom" readonly="true" type="text" cssClass="form-control" id="choix111" />
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    
                                                                        <div class="col-md-4">
                                                                            <div class="form-group">
                                                                                <label for="inputEmail3" id="label222" class="col-sm-5 control-label">Groupe </label>
                                                                                    <div class="col-sm-7">
                                                                                        <form:input path="dispchoix3.groupe" readonly="true" type="text" cssClass="form-control" id="choix222" />
                                                                                    </div>
                                                                            </div> 
                                                                        </div>
                                                                                 
                                                                        <div class="col-md-2">
                                                                            <form:button type="submit" name="supprimerDisp3" class="btn btn-warning" value="supprimer">Supprimer</form:button>
                                                                        </div>           
                                                                                   
                                                                    
                                                                       <div class="col-md-2">
                                                                            <div class="form-group">
                                                                                    <div class="col-sm-7">
                                                                                        <form:input path="dispchoix3.id" readonly="true" type="hidden" id="choix333" cssClass="form-control" />
                                                                                    </div>
                                                                            </div> 
                                                                        </div>
                                                                    </div>       
                                                                </c:if>
                                                                 </div>  
                                                                    
                                                                <div class="row">
                                                                       
                                                                        
                                                                        <div class="form-group" style="text-align: center">
                                                                            <!--<div class="col-sm-offset-1 col-sm-10">-->
                                                                            <br>
                                                                            
                                                                                <input type="button" class="btn btn-info"  value="Modifier Formulaire" onclick="ouvrirModif();">

                                                                                <form:button name="modifier" class="btn btn-success" type="disabled" id="enregistrer" value="modifier"> Enregistrer Modifications</form:button>
                                                                        
                                                                                <form:button type="submit" name="supprimer" class="btn btn-danger" value="supprimer">Supprimer Adhérent</form:button>
                                                               
                                                                                <c:if test="${f.dispchoix3==null}">   
                                                                    
                                                                                <input type="button" class="btn btn-primary"  value="Ajouter des disciplines" onclick="ajoutD();">
                                                               
                                                                                </c:if>
                                                                        </div>
                                                                </div>
                                                                                    
                                                                    
                                
                                                            <div class="panel-heading">
                                                                <div class="row" id="nbrD" style="display:none">
                                                                <div class="col-md-5"></div>    
                                                                <div class="col-md-7"><H3><b>Disciplines:</b>
                                                                        <select class="selectpicker" onChange="afficherDisp();" id="listeDisp">
                                                                          <option value="1">1</option>
                                                                          <c:if test="${f.dispchoix2==null}">  <option value="2">2</option> </c:if>
                                                                        </select> 
                                                                    </H3> 
								      
                                                                            <br></div>
                                                            
                                                            </div>
					        </div>  
                                                                    <c:if test="${f.dispchoix!=null}">
                                                                    <c:set var="path" value="dispchoix2.id" />
                                                                    </c:if> 
                                                                    <c:if test="${f.dispchoix2!=null}">
                                                                    <c:set var="path" value="dispchoix3.id" />
                                                                    </c:if>
                                                                    
                                                                    <div class="row" id="row1" style="display:none">
                                                                                                                                                
                                                                        <div class="col-md-3">
								  <div class="form-group">
								    <label for="inputEmail3" class="col-sm-5 control-label">Enfants </label>
								    <div class="col-sm-7">
								      <form:select id="c11" onChange="verrou();" cssClass="selectpicker" path="${path}">
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
								      <form:select id="c12" onChange="verrou();" cssClass="selectpicker" path="${path}">
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
								      <form:select id="c13" onChange="verrou();" cssClass="selectpicker" path="${path}">
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
								      <form:select id="c14" onChange="verrou();" cssClass="selectpicker" path="${path}">
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
								      <form:select id="c21" onChange="verrou();" cssClass="selectpicker" path="dispchoix3.id">
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
								      <form:select onChange="verrou();" id="c22" cssClass="selectpicker" path="dispchoix3.id">
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
								      <form:select onChange="verrou();" id="c23" cssClass="selectpicker" path="dispchoix3.id">
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
								      <form:select onChange="verrou();" id="c24" cssClass="selectpicker" path="dispchoix3.id">
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
                                                                                
                                                                                <div id="ajouterDisp" style="text-align: center; display: none">
                                                                                    <br><br>
                                                                                <form:button name="modifier" class="btn btn-success" type="disabled" id="enregistrer" value="modifier"> Ajouter </form:button>
                                                                                </div>
                                                                </form:form>
			  				</div>
			  			</div>
        </div></div>
    

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="<c:url value="https://code.jquery.com/jquery.js"/>" ></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js" />"></script>
    <script src="<c:url value="/resources/js/custom.js" />"></script>
    <script>
        function ajoutD(){
            
            document.getElementById("nbrD").style.display="block";
            document.getElementById("row1").style.display="block";
            document.getElementById("ajouterDisp").style.display="block";
            
        }
        </script>
    
    <script>
        function ouvrirModif(){
            
            document.getElementById("nom").removeAttribute('readonly');
            document.getElementById("dateNaiss").removeAttribute('readonly');
            document.getElementById("lieuNaiss").removeAttribute('readonly');
            document.getElementById("prenom").removeAttribute('readonly');
            document.getElementById("adresse").removeAttribute('readonly');
            document.getElementById("metier").removeAttribute('readonly');
            document.getElementById("tel").removeAttribute('readonly');
            document.getElementById("parent").removeAttribute('readonly');
            document.getElementById("telP").removeAttribute('readonly');
            document.getElementById("metierP").removeAttribute('readonly');
            document.getElementById("cin").removeAttribute('readonly');

        }
        </script>
    
        <!--
        <script>
        function supprimerD2(){
            
            document.getElementById("choix11").style.display="none";
            document.getElementById("label11").style.display="none";
            
            document.getElementById("choix22").style.display="none";
            document.getElementById("label22").style.display="none";
            document.getElementById("sup11").style.display="none";
           
            document.getElementById("choix11").disabled="true";
            document.getElementById("choix22").disabled="true";
            document.getElementById("choix33").disabled="true";
        }
        </script>
        
        
        <script>
        function supprimerD3(){
            
            document.getElementById("choix111").style.display="none";
            document.getElementById("label111").style.display="none";
            
            document.getElementById("choix222").style.display="none";
            document.getElementById("label222").style.display="none";
            document.getElementById("sup111").style.display="none";
           
            document.getElementById("choix111").disabled="true";
            document.getElementById("choix222").disabled="true";
            document.getElementById("choix333").disabled="true";
        }
        </script>-->
        
        
        <script>
        function afficherDisp(){
        
        if (document.getElementById("listeDisp").value=="1")
        {
            document.getElementById("row1").style.display="block";
            document.getElementById("row2").style.display="none";
        }
        if (document.getElementById("listeDisp").value=="2")
        {   
            document.getElementById("row1").style.display="block";
            document.getElementById("row2").style.display="block";
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
        
    
        
    }    
        
        </script>
      
  </body>
</html>
