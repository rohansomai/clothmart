<%@taglib prefix="x" uri="http://java.sun.com/jstl/core_rt"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/functions"%>

<% System.out.println("IN JSP"); %>

<x:set var="productsListLength" value="${f:length(productsList)}"></x:set>

[
	<x:forEach items="${productsList}" var="i" varStatus="j">
	{
			"pid": "${i.pid}",
			"name": "${i.name}",
			"description": "${i.description}",
			"quantity": "${i.quantity}",
			"price": "${i.price}",
			"imageURL": "${i.imageURL}",
			"retailerName": "${i.retailer.firstName} ${i.retailer.lastName}",
			"categoryName": "${i.category,name}",
			"subcategoryName": "${i.subcategory.name}"
	}
	<x:if test="${productsListLength ne j.count}">
		,
	</x:if>
	</x:forEach>
]
