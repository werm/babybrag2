function is_int(value){ 
      if((parseFloat(value) == parseInt(value)) && !isNaN(value)){
          return true;
      } else { 
          return false;
      } 
    }

    $(function() {
      $("#zip").keyup(function() {
        var el = $(this);

        if ((el.val().length == 5) && (is_int(el.val()))) {
          
          $.ajax({
            url: "http://zip.elevenbasetwo.com",
            cache: false,
            dataType: "json",
            type: "GET",
            data: "zip=" + el.val(),
            success: function(result, success) {

              $("#extraAddress").slideDown();

              $("#city").val(result.city);
              $("#state").val(result.state);

              $(".zip-error").hide();

            },
            error: function(result, success) {

              $(".zip-error").show();

            }

        });
    
    }

  });

    });