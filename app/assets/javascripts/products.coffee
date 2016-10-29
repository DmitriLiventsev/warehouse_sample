init_image_uploader = ->
	$('#uploadImage').on 'change', ->
		readURL(this)

readURL = (input) ->
  if input.files and input.files[0]
    reader = new FileReader

    reader.onload = (e) ->
      $('#imagePreview').css 'background', 'url(' + e.target.result + ')'
      $('#imagePreview').show()
      $('#imagePreview').width(400)
      $('#imagePreview').height(400)
      $('#productImage').hide()
      return

    $('.deletePhoto').show()
    reader.readAsDataURL input.files[0]
  return

jQuery ->
	init_image_uploader()
