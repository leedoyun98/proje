<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>



   <h1> List </h1>
 
    <li><a id="home" href="#"> Go Home </a></li>
    <li><a id="back" href="#"> 메뉴로 가기 </a></li>
    <table id="tab" >
        <thead>
            <tr>
                <th style="width:20%" class="text-center">글번호</th>
                <th style="width:20%" class="text-center">제목</th>
    </table>
    
    <script>
    $('#home').click(function(){ location.href=`${ctx}`})
    $('#back').click(function(){ location.href=`${ctx}/admin/board`})
	board.list(`${ctx}`)
	

    </script>