$(document).ready ->
	$('#reason-tabs li').click ->
		current = $(@).parent().find('.focus')
		selected = $('#reasons').find('.selected')
		id = $(@).attr('id')

		current.removeClass('focus').parent().find('#'+id).addClass('focus')
		selected.removeClass('selected').parent().find('#'+id+'-text').addClass('selected')