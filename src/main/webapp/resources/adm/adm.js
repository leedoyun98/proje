var regi = regi || {}

regi.regi = x => {
	$.ajax({
		url: `${x}/managers/register`,
		type: 'POST',
		data: JSON.stringify({
			email: $(`#email`).val(),
			password: $(`#password`).val()
		}),
		dataType: 'json',
		contentType: 'application/json',
		success: d => {
			if (d.message === "SUCCESS") {
				alert(`등록 완료`)
			} else {
				alert(`등록 실패`)
			}
		},
		error: e => {
			alert(`안 들어감`)
		}
	})
}




var del = del || {}
del.del = x => {
	$.ajax({
		url: `${c}/delete`,
		type: 'DELETE',
		data: JSON.stringify({
			name: document.getElemenyById('name').value,
			email: documnet.getElementById('email').value

		}),
		dataType: 'json',
		contentType: 'application/json',
		success: d => {
			if (d.message === 'SUCCESS') {
				alert(`삭제완료`)
			}
		},
		error: e => {
			alert(`error`)
		}
	})
}