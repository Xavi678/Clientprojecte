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
<div class="container" >

<h2 class="page-header text-center"><s:text name="user.h2"></s:text> </h2>

<h4 class="page-header"><s:text name="user.h3"></s:text> </h4>
<s:form action="info.action" theme="simple">
  <div class="input-group">
   
  <!--   <input id="searchData" type="text" class="form-control" name="search" placeholder="Filtrar..."> -->
  <div class="input-group-addon" style="border-left: 0; border-right: 0;">Data</div>
     <s:textfield id="searchData" type="date" cssClass="form-control" name="search" placeholder="%{getText('user.filter')}" theme="simple"></s:textfield>
      <div class="input-group-addon" style="border-left: 0; border-right: 0;">Teatre</div>
       <s:textfield id="teatre" type="text" cssClass="form-control" name="teatre" placeholder="%{getText('user.filter')}" theme="simple"></s:textfield>
        <div class="input-group-addon" style="border-left: 0; border-right: 0;">Espectacle</div>
         <s:textfield id="espectacle" type="text" cssClass="form-control" name="espectacle" placeholder="%{getText('user.filter')}" theme="simple"></s:textfield>
    <span class="input-group-btn">
        <button id="afegir" type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span></button>
      </span>
  </div>
  </s:form>
<br>
<div class="table-responsive">
<table class="table table-striped table-dark">
<tr>
<th><s:text name="funcio.ID"></s:text> </th>
<th><s:text name="funcio.fila"></s:text> </th>
<th><s:text name="funcio.columna"></s:text> </th>
<th><s:text name="teatre.nom"></s:text> </th>
<th><s:text name="espectacle.titol"></s:text> </th>
<th><s:text name="funcio.data"></s:text> </th>
</tr>
<tbody id="tcos" >
<s:iterator value="compres" var="compra">
<tr>
<td><s:property value="funcio.ID"/> </td>
<td><s:property  value="fila"/> </td>
<td><s:property  value="columna"/></td>
<td><s:property  value="funcio.teatre.nom"/></td>
<td><s:property  value="funcio.espectacle.titol"/></td>
<td ><s:property  value="funcio.data"/></td>

</tr>

</s:iterator>

</tbody>
</table>

</div>



<jsp:include page="footer.jsp"></jsp:include>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

    <script src="js/bootstrap.min.js"></script>
    <script src="js/filtrar.js"></script>

</body>
</html>