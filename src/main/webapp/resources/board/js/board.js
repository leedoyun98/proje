'use strict'
var board = board || {}
board.writer = x =>{
	$.ajax({
		url: `${x}/boards/writter`,
		type: 'POST',
		data: JSON.stringify({
			 title: $('#title').val(),
             content: $('#content').val()
		}),
		dataType:'json',
		contentType:'application/json',
		success: d =>{
			if(d.message == 'SUCCESS'){
				alert(`글쓰기 성공`)
				 location.href =`${x}/admin/board`
			}else{
				alert('글쓰기 실패')
			}},
			 error: e => {
                   alert('글쓰기 에러')
			
		}
	})
}
board.list = x =>{
	alert(`js까지는 들어옴`)
	$.getJSON(`${x}/boards/list`, d => {
	alert(`getJSON 동작`)
	
})
}

