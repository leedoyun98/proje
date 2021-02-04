<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<h1>글쓰기</h1>
<form> 
<body>
<p><label>제목</label><input type="text" id ="title"></p>
<p><label>작성자</label><input type="text" name="writer" size="15">
</p>
<label>내용</label><p>
<textarea rows="15" cols="65" id = "content"></textarea><p>
<button type = "submit" id="writ">등록</button>
</form>

</body>


</html>
<script>
$('#writ').click(function(){board.writer(`${c}`)})
</script>