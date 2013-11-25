// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= require_tree .

jQuery(function($) {
  // when the #country field changes
  $("#comment_teacher_id").change(function() {
    // make a POST call and replace the content
    var teacher = $('select#comment_teacher_id :selected').val();
    if(teacher == "") teacher="0";
    jQuery.get('/comments/update_courses/' + teacher, function(data){
        $("#comment_course_id").html(data);
    })
    return false;
  });

})

