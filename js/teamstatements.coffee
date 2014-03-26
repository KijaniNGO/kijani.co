imgs = ['<img src="img/portrait/armin.jpg" id="armin">', '<img src="img/portrait/daniel.jpg" id="daniel">', '<img src="img/portrait/dave.jpg" id="dave">', '<img src="img/portrait/david.jpg" id="david">', '<img src="img/portrait/jannis.jpg" id="jannis">', '<img src="img/portrait/dickens.jpg" id="dickens"> ', '<img src="img/portrait/tobias.jpg" id="tobias">', '<img src="img/portrait/haron.jpg" id="haron">', '<img src="img/portrait/urs.jpg" id="urs">', '<img src="img/portrait/liz.jpg" id="liz">', '<img src="img/portrait/zach.jpg" id="zach">']
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
		unless position[id] == 10
			current.removeClass('current').next().addClass('current')
		else
			current.removeClass('current').parent().children('article').first().addClass('current')

		$('#portraits').children().first().remove()
		$('#portraits').find('.focus').removeClass('focus').next().addClass('focus')
		$('#portraits').append(imgs[nextimg(position[id])])
	
	$('#prev-statemet').click ->
		current = $(@).parent().parent().find('.current')
		id = $('#portraits').find('.focus').attr('id')
		unless position[id] == 0
			current.removeClass('current').prev().addClass('current')
		else 
			current.removeClass('current').parent().children('article').last().addClass('current')

		$('#portraits').prepend(imgs[previmg(position[id])])
		$('#portraits').find('.focus').removeClass('focus').prev().addClass('focus')
		$('#portraits').children().last().remove()