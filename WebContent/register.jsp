<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><s:text name="global.titol"></s:text></title>
<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>


<div class="container">
<h1 class="page-header"> <s:label key="global.register" theme="simple"></s:label></h1>

 <s:actionerror cssClass="text-danger"/>

<s:form action="register.action"  theme="simple" onsubmit="return confirm('Donant a Acceptar, acceptaràs la Llei Llei orgànica 3/2018, de 5 de desembre, de protecció de dades personals i garantia dels drets digitals. Més informació: https://apdcat.gencat.cat/ca/actualitat/noticies/noticia/Llei-organica-3-2018-de-5-de-desembre-de-proteccio-de-dades-personals-i-garantia-dels-drets-digitals ');" >




<!-- <div class="form-group">
    <label for="ejemplo_email_1">NIF</label>
 <input type="text" class="form-control" name="client.NIF" value="" id="register_client_NIF" placeholder="NIF"/>
 </div> -->
 
 <div class="form-group">

  <s:label key="register.nif"></s:label>
 <s:textfield cssClass="form-control" name="client.NIF" placeholder="%{getText('placeholder.nif')}" required="required" pattern="(([X-Z]{1})([-]?)(\d{7})([-]?)([A-Z]{1}))|((\d{8})([-]?)([A-Z]{1}))" title="El format ha de ser 8 números i una lletra"></s:textfield>
 </div>
 <div class="form-group">
    <s:label key="register.nom"></s:label>
 <!--  <input type="text" class="form-control" name="client.nom" value="" id="register_client_nom" placeholder="Nom"/>-->
 
 <s:textfield cssClass="form-control" name="client.nom" placeholder="%{getText('placeholder.nom')}" required="required" ></s:textfield>
 </div>
 
 <div class="form-group">
    <s:label key="register.edat"></s:label>
   <!--   <input type="number" class="form-control" id="edat" name="client.edat"
           placeholder="Edat">-->
           <s:textfield cssClass="form-control" name="client.edat" placeholder="%{getText('placeholder.edat')}" type="number" required="required"></s:textfield>
  </div>
  
  <div class="form-group">
    <s:label key="register.email"></s:label>
   <!--   <input type="email" class="form-control" id="ejemplo_password_1" name="client.email"
           placeholder="E-mail...">-->
           <s:textfield cssClass="form-control" name="client.email" placeholder="%{getText('placeholder.email')}" type="email" required="required" ></s:textfield>
           
  </div>

  
   <div class="form-group">
    <s:label key="register.cognom"></s:label>
   <!--  <input type="text" class="form-control" id="cognom" name="client.cognoms"
           placeholder="Cognoms"> -->
           
            <s:textfield cssClass="form-control" name="client.cognoms" placeholder="%{getText('placeholder.cognoms')}" required="required"></s:textfield>
           
  </div>
  
  <div class="form-group">
   <s:label key="register.password"></s:label>
   <!--  <input type="password" class="form-control" id="password" name="client.password"
           placeholder="Contrasenya">
           --> 
           <s:textfield cssClass="form-control" name="client.password" placeholder="%{getText('placeholder.password')}" type="password" required="required" ></s:textfield>
  </div>
  
  
   <div class="form-group">
   <s:label key="register.telefon"></s:label>
  <!--   <input type="number" class="form-control" id="telefon" name="client.telefon"
           placeholder="Telèfon">-->
           <s:textfield cssClass="form-control" name="client.telefon" placeholder="%{getText('placeholder.telefon')}"  type="number" required="required" ></s:textfield>
  </div>
  
    <div class="form-group">
    <s:label key="register.dataNaixement"></s:label>
    <!--  <input type="date" class="form-control" id="naixement" name="client.dataNaixement"
           placeholder="Data Naixement">-->
           
           <s:textfield cssClass="form-control" name="client.dataNaixement" placeholder="%{getText('placeholder.data')}"  type="date" required="required" ></s:textfield>
  </div>
  
  <div class="form-group">
  	<s:label key="register.localitat"></s:label>
  	<s:select id="adreca"  class="form-control" list="localitats" theme="simple" name="client.localitat" required="required" ></s:select>
  </div>
  
 <!--<s:textfield key="register.NIF" cssClass="form-group" name="client.NIF"/>
  <s:textfield key="register.nom"  name="client.nom"/>
    <s:textfield key="register.edat"  name="client.edat"/>
      <s:textfield key="register.email" name="client.email"/>
        <s:textfield key="register.password"  name="client.password"/>
          <s:textfield key="register.dataNaixement" name="client.dataNaixement"/>
            <s:textfield key="register.telefon"  name="client.telefon"/>
            
              <s:textfield key="register.cognom"  name="client.cognom"/>-->
        
              
 <!--  <div class="form-group">
    <label for="ejemplo_email_1">NIF</label>
    <input type="text" class="form-control" name="client.nif" id="ejemplo_email_1"
           placeholder="Introdueix el NIF">
  </div>
  
  <div class="form-group">
    <label for="ejemplo_password_1">email</label>
    <input type="email" class="form-control" id="ejemplo_password_1"
           placeholder="E-mail...">
  </div>
  
  <div class="form-group">
    <label for="edat">Edat</label>
    <input type="number" class="form-control" id="edat"
           placeholder="Edat">
  </div>
  
  <div class="form-group">
    <label for="nom">Nom</label>
    <input type="text" class="form-control" id="nom"
           placeholder="Nom">
  </div>
  
   <div class="form-group">
    <label for="cognom">Cognoms</label>
    <input type="text" class="form-control" id="cognom"
           placeholder="Cognoms">
  </div>
  
  <div class="form-group">
    <label for="password">Contrasenya</label>
    <input type="password" class="form-control" id="password"
           placeholder="Contrasenya">
  </div>
  
  
   <div class="form-group">
    <label for="telefon">Telèfon</label>
    <input type="number" class="form-control" id="telefon"
           placeholder="Telèfon">
  </div>
  
   <div class="form-group">
    <label for="naixement">Data Naixement</label>
    <input type="date" class="form-control" id="naixement"
           placeholder="Data Naixement">
  </div>
 
  <button type="submit" class="btn btn-default">Enviar</button>
-->
<s:submit name="submit" key="global.submit" align="center" cssClass="btn btn-default" />
</s:form>








<jsp:include page="footer.jsp"></jsp:include>

</div>








<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

    <script src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/scripts.js"></script>
</body>
</html>