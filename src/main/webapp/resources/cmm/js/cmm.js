'use strict'
var cmm = cmm || {}
cmm = (() => {
	const init = x => {
		$(`#prd-btn`).click(e => {
			location.href=`${x}/move/prd/list`
		})
	}
	
	const home = x => {
		$(`#home-btn`).click(e => {
			location.href=`${x}/`
		})
	}
	
	const add = x => {
		$(`#add-btn`).click(e => {
			location.href=`${x}/move/prd/add`
		})
	}
	return { init, home, add }
})()