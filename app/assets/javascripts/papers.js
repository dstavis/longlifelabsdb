$(document).ready(function() {
  var addNewTagButtonClickResponse = function(event){
    event.preventDefault();
    $('#dummyModal').modal('show');
  }

  $('#add_new_tag_button').click(addNewTagButtonClickResponse)

  $('#btnTest').click(function (event) {
    event.preventDefault();
      $('#dummyModal').modal('show');
    });
});


