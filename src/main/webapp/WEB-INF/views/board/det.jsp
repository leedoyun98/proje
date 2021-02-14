<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


   <h1> 글 내용 </h1>
 
    <li><a id="home" href="#"> Go Home </a></li>
    <li><a id="back" href="#"> 메뉴로 가기 </a></li>
     <table class="tab">
        <thead>
            <tr class="table-active">
                <th style="width: 50%">글번호: <span id="boardNum"></span></th>
                <th style="width: 50%">제목: <span id="boardTitle"></span></th>
   
             <tr><td colspan="4" style="width: 50%">
                  <div id="boardContent" style="height: 300px">
                      
                  </div>
                
            </tr>
        </thead>

    </table>


	<button id="update">수정하기</button>
	<button id="delete">삭제하기</button>

<script>
$('#home').click(function(){ location.href=`${ctx}`})
$('#back').click(function(){ location.href=`${ctx}/admin/board`})
	board.det(`${ctx}`)


</script>