$(document).ready(function() {
  // var addNewTagButtonClickResponse = function(event){
  //   event.preventDefault();
  //   $('#dummyModal').modal('show');
  // }

  // $('#add_new_tag_button').click(addNewTagButtonClickResponse)

  $('#toggle_add_new_tag_section').click(function(){
    $('#add_new_tag_section').toggleClass('hidden')
  })

  var addNewTagSuccess = function(data){
    debugger
    // var tag = JSON.parse(data);
    // do something with tag
    // Add new tag to the select dropdown and select it
    // Alert: The tag was added successfully!
    $('#add_new_tag_section').toggleClass('hidden')
  }

  var addNewTagError = function(data){
    debugger
    // Alert: Sorry, the tag could not be added. Here's a hint as to why: "error message"
  }


  $('#save_tag_button').click(function(event){
    event.preventDefault();
    var tagName = $('#tag_name').val()

    if($.trim(tagName).length <= 0){
      alert("Please input a name for the new tag")
    }
    else{
      $.ajax(
      {
        url: "/create_tag.json",
        method: "post",
        data: {name: tagName},
        dataType: "json"
      }
      )
      .success(addNewTagSuccess)
      .error(addNewTagError)
    }
  })


});


