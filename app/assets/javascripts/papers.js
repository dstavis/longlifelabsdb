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
    // Add new tag to the select dropdown and select it
    $('#paper_tag_ids').selectize({
        create: true
    })
    var selectize_tags = $('#paper_tag_ids')[0].selectize
    selectize_tags.addOption({
      text: data.name,
      value: data.id
    });
    selectize_tags.addItem(data.id)
    // Hide the add new tag section
    $('#add_new_tag_section').toggleClass('hidden')
  }

  var addNewTagError = function(data){
    // Alert: Sorry, the tag could not be added. Here's a hint as to why: "error message"
    alert("Sorry, the tag could not be added. ")
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


