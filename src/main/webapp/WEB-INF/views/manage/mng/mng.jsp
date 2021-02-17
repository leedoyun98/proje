<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>





<h1>List</h1>
<a id="home" href="#"> Go Home </a>
<table class="table table-hover">
	<thead>
		<tr>
			<th scope="col" class="text-center">email</th>
			<th scope="col" class="text-center">password</th>
			<th scope="col" class="text-center">ages</th>
			<th scope="col" class="text-center">level</th>
			<th scope="col" class="text-center">city</th>
			<th scope="col" class="text-center">address</th>
			<th scope="col" class="text-center">gender</th>
			<th scope="col" class="text-center">phone</th>
		</tr>
	</thead>
	<tbody id="tbody">

	</tbody>
</table>


<script>
	$.getJSON(`${c}/managers/list`, function(d){
		$.each(d, function(i, j){
				$('<tr>' +
					'<th scope="col" class="text-center">'+j.email+'</th>' +
					'<th scope="col" class="text-center">'+j.password+'</th>'+
					'<th scope="col" class="text-center">'+j.ages+'</th>' +
					'<th scope="col" class="text-center">'+j.level+'</th>' +
					'<th scope="col" class="text-center">'+j.city+'</th>' +
					'<th scope="col" class="text-center">'+j.address+'</th>' +
					'<th scope="col" class="text-center">'+j.gender+'</th>'+
					'<th scope="col" class="text-center">'+j.phone+'</th>'+
				'</tr>').appendTo('#tbody');
		})
	});
	

	
	$(`#home`).click(function() {
		location.href = `${c}`
	})
</script>


