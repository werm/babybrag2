  thumb = $("img#thumb")
	new AjaxUpload("imageUpload",
	  action: $("form.new_user").attr("action")
	  name: "image"
	  onSubmit: (file, extension) ->
	    $("div.preview").addClass "loading"

	  onComplete: (file, response) ->
	    thumb.load ->
	      $("div.preview").removeClass "loading"
	      thumb.unbind()

	    thumb.attr "src", response
	)

jQuery ->
  $('.alert').delay(5000).fadeOut('slow');