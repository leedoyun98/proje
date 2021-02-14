'use strict'
var login = login || {}
login.register = x => {
            $.ajax({
                url:`${x}/logins`,
                type: 'POST',
                data: JSON.stringify({
                    userid: $('#userid').val(),
                    password: $('#password').val()
                }),
                dataType: 'json',
                contentType: 'application/json',
                success: d => {
				if(d.message === 'SUCCESS'){
						alert(`회원가입 성공`)
                        location.href = `${x}/login/login`
                    }else{
                        alert('회원가입 실패')
                        location.href =`${x}/login/login`
}
                    },
                error: e => {
                    alert(`회원가입 에러`)
                       }
            })
}
login.log = x =>{
	$.ajax({
		url: `${x}/logins/login`,
		type: 'POST',
		data: JSON.stringify({
			 userid: $('#userid').val(),
             password: $('#password').val()
		}),
		dataType:'json',
		contentType:'application/json',
		success: d =>{
			if(d.message === 'SUCCESS'){
				alert(`로그인 성공`)
				 location.href =`${x}/admin/board`
			}else{
				alert('로그인 실패')
			}},
			 error: e => {
                   alert('로그인 에러')
		}
	})
}



