'use strict'
var prd = prd || {}
prd = (() => {
	const done = x => {
		$.ajax({
			url: `${x}/products`,
			type: `POST`,
			data: JSON.stringify({
				prdName: $(`#prdName`).val(),
				price: $(`#price`).val(),
				inventory: $(`#inventory`).val() 
			}),
			dataType: `json`,
			contentType: `application/json`,
			success: d => {
				if(d.message === `SUCCESS`) {
					location.href=`${x}/move/prd/list`
					alert(`등록 완료`)
				}
			},
			error: e => { alert(`제품 등록 실패: ${e}`)	}
		})
	}
	
	const list = x => {
		$.getJSON(`${x}/products/list`, d => {
			$.each(d, (i, j) => {
				$(`<tr><td>${j.prdId}</td>
					<td><a class="title" href="#" id="${j.prdId}">${j.prdName}</a></td>
					<td>${j.price}</td>
					<td>${j.inventory}</td></tr>`)
					.css({padding: `15px`, textAlign: `center`, fontSize: `small`})
					.appendTo(`#tab`)
			})
				
			$(`.title`).each(function(){
				$(this).click(e => {
					e.preventDefault()
					localStorage.setItem(`prdId`, `${this.id}`)
					location.href=`${x}/move/prd/detail`
				})
			})
		})
	}
			
	const detail = x => {
		$(`#back-btn`).click(function(){location.href=`${x}/move/prd/list`})
		$.getJSON(`${x}/products/${localStorage.getItem(`prdId`)}`, d => {
			$(`#pId`).text(d.prdId)
			$(`#pName`).text(d.prdName)
			$(`#pPrice`).text(d.price)
			$(`#pInventory`).text(d.inventory)
			
			$(`#update-btn`).click(e => {
				$(`#pName`).html('<input id="update-prdName" type="text" value="'+ d.prdName +'"/>')
				$(`#pPrice`).html('<input id="update-price" type="text" value="'+ d.price +'"/>')
				$(`#pInventory`).html('<input id="update-inventory" type="text" value="'+ d.inventory +'"/>')
				$(`#update-btn`).html('<div id="confirm-btn">수정완료</div>')
				$(`#confirm-btn`).click(e => {
					e.preventDefault()
					$.ajax({
						url: `${x}/products`,
						type: `PUT`,
						data: JSON.stringify({
							prdId: d.prdId,
							prdName: $(`#update-prdName`).val(),
							price: $(`#update-price`).val(),
							inventory: $(`#update-inventory`).val() 
						}),
						dataType: `json`,
						contentType: `application/json`,
						success: d => {
							if(d.message === `SUCCESS`) {
								alert(`수정 완료 !`)
								location.href=`${x}/move/prd/detail`
							}else {
								alert(`수정 실패 !`)
							}
						},
						error: e => { alert(`에러 발생 ! ${e}`)}
					})
				})
			})
			
			$(`#delete-btn`).click(e => {
				e.preventDefault()
				$.ajax({
					url: `${x}/products`,
					type: `DELETE`,
					data: JSON.stringify({
						prdId: d.prdId
					}),
					dataType: `json`,
					contentType: `application/json`,
					success: d => {
						if(d.message === `SUCCESS`) {
							alert(`삭제 완료 !`)
							location.href=`${x}/move/prd/list`
						}else {
							alert(`삭제 실패 !`)
						}
					},
					error: e => { alert(`에러 발생 ! ${e}`)}
				})
			})
		})
	}
	
	return { done, list, detail }
})()