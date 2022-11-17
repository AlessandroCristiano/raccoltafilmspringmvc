<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<!-- Common imports in pages -->
	<jsp:include page="../header.jsp" />
	<title>Visualizza elemento</title>
	
</head>
<body class="d-flex flex-column h-100">
	<!-- Fixed navbar -->
	<jsp:include page="../navbar.jsp" />
	
	<!-- Begin page content -->
	<main class="flex-shrink-0">
	  	<div class="container">
			
			<div class='card'>
			    <div class='card-header'>
			        Visualizza dettaglio
			    </div>
			    
			<form:form modelAttribute="insert_film_attr" method="post" action="${pageContext.request.contextPath}/film/delete" class="row g-3" novalidate="novalidate">
			    <div class='card-body'>
			    	<dl class="row">
					  <dt class="col-sm-3 text-right">Id:</dt>
					  <dd class="col-sm-9">${del_film_attr.id}</dd>
			    	</dl>
			    	
			    	<dl class="row">
					  <dt class="col-sm-3 text-right">Titolo:</dt>
					  <dd class="col-sm-9">${del_film_attr.titolo}</dd>
			    	</dl>
			    	
			    	<dl class="row">
					  <dt class="col-sm-3 text-right">Genere:</dt>
					  <dd class="col-sm-9">${del_film_attr.genere}</dd>
			    	</dl>
			    	
			    	<dl class="row">
					  <dt class="col-sm-3 text-right">Data Pubblicazione:</dt>
					  <dd class="col-sm-9"><fmt:formatDate type = "date" value = "${del_film_attr.dataPubblicazione}" /></dd>
			    	</dl>
			    	
			    	<dl class="row">
					  <dt class="col-sm-3 text-right">Durata (min.):</dt>
					  <dd class="col-sm-9">${del_film_attr.minutiDurata}</dd>
			    	</dl>
			    	
			    <!-- end card body -->
			    </div> 
			    
			    <input type="hidden" name="idDaEliminare" value="${del_film_attr.id}">
			    
			    <div class='card-footer'>
			    <button class='btn btn-outline-danger' style='width:100px' type="submit" name="submit" value="submit" id="submit" class="btn btn-primary">Conferma</button>
			        <a href="${pageContext.request.contextPath }/film/" class='btn btn-outline-secondary' style='width:80px'>
			            <i class='fa fa-chevron-left'></i> Back
			        </a>
			    </div>
			    </form:form>
			<!-- end card -->
			</div>	
	
		<!-- end container -->  
		</div>
		
	</main>
	<jsp:include page="../footer.jsp" />
	
</body>
</html>