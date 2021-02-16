<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
<form>
<h1>회원가입</h1><button type="button" class="home-btn" id="home-btn">Home</button>
<label for="memid"><b>ID</b></label>
<input type="text" placeholder="Enter ID" id="memid" required>
<label for="password"><b>PW</b></label>
<input type="password" placeholder="Enter pw" id="password" required>
<button type="button" class="join-btn" id="join-btn">완료</button>
</form>
<script>
mem.home()
mem.join()
</script>
</body>
</html>