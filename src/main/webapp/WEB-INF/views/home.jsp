<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>


<h1>Main page</h1>
<button id="manage-btn">회원관리</button>
<button id="register-btn">회원등록</button>
<button id="del-btn">삭제</button>

<jsp:include page="./head.jsp" />

<script>
	$(`#manage-btn`).click(function(e) {
		e.preventDefault();
		location.href = `${c}/manage/mng/mng`
	});
	
	$(`#register-btn`).click(function(e) {
		e.preventDefault();
		location.href = `${c}/manage/regi/regi`;
	});

	$(`#del-btn`).click(function() {
		location.href = `${c}/manage/del/del`
	})
</script>