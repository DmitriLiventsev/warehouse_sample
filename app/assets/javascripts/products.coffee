init_show_product = ->
	$('#show-product').on 'click', ->
		$.ajax
			url: "/products/" + $(this).data('id') + '.json'
			datatype: "json"
			method: "GET"
			success: (data) ->
				alert(data.price)
			error: (data) ->
				alert("Error!")
		return false

init_edit_product = ->
	$('#edit_product').on 'click', ->
		$.ajax
			url: "/products/" + $(this).data('id') + '.json'
			datatype: "json"
			data: $('form').serialize()
			method: "PUT"
			success: (data) ->
				alert(data.price)
			error: (data) ->
				alert("Error!")
		return false

init_create_product = ->
	$('#create_product').on 'click', ->
		$.ajax
			url: '/products.json'
			datatype: "json"
			data: $('form').serialize()
			method: "POST"
			success: (data) ->
				alert(data.price)
			error: (data) ->
				alert("Error!")
		return false
jQuery ->
	init_show_product()
	init_edit_product()

	init_create_product()
