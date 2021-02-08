<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

   <h1> List </h1>
 
    <li><a id="home" href="#"> Go Home </a></li>
    <li><a id="back" href="#"> 이전 메뉴 </a></li>
    <table class="table table-hover">
        <thead>
            <tr>
                <th class="text-center">글번호</th>
                <th class="text-center">제목</th>
                <th class="text-center">글쓴이</th>
                <th class="text-center">작성일</th>
                <th class="text-center">조회수</th>
            </tr>
        </thead>
        <tbody id="tb">
            
        </tbody>
    </table>
    
    <script>
    $('#home').click(function(){ location.href=`${demo}`})
    $('#back').click(function(){ location.href=`${demo}/admin/board`})
	board.list(`${c}`)

    </script>