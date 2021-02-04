<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<h1>안녕하세요!! 게시판 메뉴 입니다!!!</h1>
 <button id="wri">글쓰기</button>
 <button id="wri-list">글 목록</button>
  
<script>
$('#wri').click(function(){location.href=`${c}/admin/writer`})
$('#wri-list').click(function(){location.href=`${c}/admin/writerList`})
</script>