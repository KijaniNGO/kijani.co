imgs = ['<img src="../img/portrait/armin.jpg" id="armin">', '<img src="../img/portrait/daniel.jpg" id="daniel">', '<img src="../img/portrait/dave.jpg" id="dave">', '<img src="../img/portrait/david.jpg" id="david">', '<img src="../img/portrait/jannis.jpg" id="jannis">', '<img src="../img/portrait/dickens.jpg" id="dickens"> ', '<img src="../img/portrait/tobias.jpg" id="tobias">', '<img src="../img/portrait/haron.jpg" id="haron">', '<img src="../img/portrait/urs.jpg" id="urs">', '<img src="../img/portrait/liz.jpg" id="liz">', '<img src="../img/portrait/zach.jpg" id="zach">']
position =
	"armin" : 0
	"daniel" : 1
	"dave" : 2
	"david" : 3
	"jannis" : 4
	"dickens" : 5
	"tobias" : 6
	"haron" : 7
	"urs" : 8
	"liz" : 9
	"zach" : 10

name =
	0 : "armin"
	1 : "daniel"
	2 : "dave"
	3 : "david"
	4 : "jannis"
	5 : "dickens"
	6 : "tobias"
	7 : "haron"
	8 : "urs"
	9 : "liz"
	10 : "zach"

tot = 11

nextimg = (num) ->
	next = num + 9
	if next > 10
		next -= 11
		return next
	else
		return next

previmg = (num) ->
	prev = num - 3
	if prev < 0
		prev += 11
		return prev
	else
		return prev

$(document).ready ->
	$('#next-statement').click ->
		current = $(@).parent().parent().find('.current')
		id = $('#portraits').find('.focus').attr('id')
		if position[id] == 10
			current.removeClass('current').parent().children('article').first().addClass('current')
		else
			current.removeClass('current').next().addClass('current')

		$('#portraits').children().first().remove()
		$('#portraits').find('.focus').removeClass('focus').next().addClass('focus')
		$('#portraits').append(imgs[nextimg(position[id])])

	$('#prev-statemet').click ->
		current = $(@).parent().parent().find('.current')
		id = $('#portraits').find('.focus').attr('id')
		if position[id] == 0
			current.removeClass('current').parent().children('article').last().addClass('current')
		else
			current.removeClass('current').prev().addClass('current')

		$('#portraits').prepend(imgs[previmg(position[id])])
		$('#portraits').find('.focus').removeClass('focus').prev().addClass('focus')
		$('#portraits').children().last().remove()

	$('#portraits').on 'click','img', ->
		current  = $(@).parent().parent().parent().find('.current')
		id_focus = $('#portraits').find('.focus').attr('id')
		id_this  = $(@).attr('id')
		id_delta = position[id_this]-position[id_focus]

		if (id_delta == -1 || id_delta == 10)
			current.removeClass('current').parent().find('#'+id_this+'-statement').addClass('current')

			$('#portraits').prepend(imgs[previmg(position[id_focus])])
			$('#portraits').children().last().remove()

			$('#portraits').find('.focus').removeClass('focus').prev().addClass('focus')
		else if (id_delta != 0)
			current.removeClass('current').parent().find('#'+id_this+'-statement').addClass('current')
			$('#portraits').find('.focus').removeClass('focus').parent().find('#'+id_this).addClass('focus')
			id_this_num = position[id_this]
			id_focus_num = position[id_focus]
			if id_this_num > id_focus_num
				id_nums = [id_focus_num...id_this_num]
			else
				id_nums = [id_focus_num..10].concat([0...id_this_num])
			for id_num in id_nums
				$('#portraits').append(imgs[nextimg(id_num)])
				$('#portraits').children().first().remove()




