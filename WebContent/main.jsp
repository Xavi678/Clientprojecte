<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><s:text name="global.titol"></s:text></title>
<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
     <link href="css/estils.css" rel="stylesheet" media="screen">
</head>
<body>

<s:include value="header.jsp"></s:include>
<div class="container">
<h1 class="text-center page-header"><s:text name="global.titol"></s:text> </h1>


<!--<s:form action="searchby" theme="simple">
<div id="grup" class="input-group">

            
     
            
            <input id="search" type="text" name="search" class="form-control" placeholder="Buscar un teatre o un espectacle...">
      
          
            
        
   

      <span class="input-group-btn">
        <button id="afegir" type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span></button>
      </span>
  
    </div>
      </s:form>-->
    
<h3 class="page-header"><s:text name="main.h3"></s:text> </h3>
<div class="row">


<s:iterator value="espectacles" var="espectacle" status="rowstatus" step="-1" begin="%{espectacles.size()-1}" end="%{espectacles.size()-3}">


	<s:url action="funcio.action" var="urlTag" >
    <s:param name="id"><s:property value="EspectacleID"/></s:param>
     <s:param name="cartell"><s:property value="cartell"/></s:param>
      <s:param name="titol"><s:property value="titol"/></s:param>
</s:url>

	
	<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
	
                        <div class="thumbnail ">
                            <img src="<s:property value='cartell'/>" class="imatge" alt="">
                            <!--  <a href="#" class="afegir"><span class="glyphicon glyphicon-plus-sign"></span></a>-->
                            
                          <s:a href="%{urlTag}" cssClass="afegir"> <span class="glyphicon glyphicon-plus-sign"></span></s:a>
                          
                            <div class="caption">
                                <h4 class="text-info"><s:property value="titol"/></h4>
                                <p>
                                    <s:property value="sinopsi"/>
                                </p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                    <a href="#" class="pull-right">12 <s:text name="main.comentari"></s:text> </a>
                                 
                                </p>
                            </div>
                        </div>
                       
                    </div>

</s:iterator>

</div>
<jsp:include page="footer.jsp"></jsp:include>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>