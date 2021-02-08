<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
	h1 { text-align: center; padding-top: 20px; padding-bottom: 20px; }
	table, th, td { border: 1px solid black; text-align: center; margin: auto; padding: 7px; }
</style>
<h1>제품 목록보기</h1>
		<div id="prd-table">
			<table id="tab">
				<tr>
					<th>제품번호</th>
					<th>제품명</th>
					<th>가격</th>
					<th>재고수량</th>
				</tr>
			</table>
		</div>
<div style="text-align: center; margin-top:30px;">
	<button id="add-btn">제품추가</button>
	<button id="home-btn">HOME</button>
</div>
<script src="${cmm}/js/cmm.js"></script>
<script src="${prdt}/js/prd.js"></script>
<script>
	cmm.add(`${ctx}`)
	cmm.home(`${ctx}`)
	prd.list(`${ctx}`)
</script>
