<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<h1>환영합니다!!</h1>
 <button id="reg-btn">회원가입</button>
 <button id="log-btn">로그인</button>
   
<jsp:include page="./cmm/head.jsp"/>
<script>
$('#reg-btn').click(function(){location.href=`${ctx}/login/register`})
$('#log-btn').click(function(){location.href=`${ctx}/login/login`})
</script>