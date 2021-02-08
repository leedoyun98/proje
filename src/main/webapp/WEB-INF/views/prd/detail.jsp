<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
	h1 { text-align: center; padding-top: 20px; padding-bottom: 20px; }
	table, th, td { border: 1px solid black; text-align: center; margin: auto; padding: 7px; }
</style>
<h1>제품 상세보기</h1>
<table style="width:80%">
  <thead>
	  <tr>
	    <th style="width:20%">제품번호</th>
	    <th style="width:35%">제품명</th> 
	    <th style="width:25%">판매가</th>
	    <th style="width:20%">재고수량</th>
	  </tr>
  </thead>
  <tbody>
	  <tr style="width: 100%; height: 40px;">
	  	<td><span id="pId"></span></td>
	  	<td><span id="pName"></span></td>
	  	<td><span id="pPrice"></span></td>
	  	<td><span id="pInventory"></span></td>
	  </tr>
  </tbody>
</table>
<div style="text-align: center; padding-top: 30px;">
	<button id="back-btn">목록보기</button>
	<button id="home-btn">HOME</button>
	<button id="update-btn">수정하기</button>
	<button id="delete-btn">삭제하기</button>
</div>
<script src="${cmm}/js/cmm.js"></script>
<script src="${prdt}/js/prd.js"></script>
<script>
	prd.detail(`${ctx}`)
	cmm.home(`${ctx}`)
</script>