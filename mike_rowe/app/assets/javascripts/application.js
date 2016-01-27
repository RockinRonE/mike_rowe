// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function(){
  $("#new-teacher-button").on('click', function(event){
    $('#new-teacher').toggle('show');
    });

  $(".add-student-to-group-link").on("ajax:success", function(response){
    $(this).replaceWith();
  });
$(".group").hide();

  $("#new-student-button").on('click', function(event){
    $('#new-student').toggle('show');
  });

$(".container").on("click", ".day", function(event){
  event.preventDefault();
  var link = $(this);
  $(".group").toggle();
});

  $("#textbox1").wijinputdate({
    placeHolder:'Click for Dates',
    dateFormat: 'yyyy/M/d',
    pickers: {
      list: [
        {label: '1980/4/8', value: new Date(1980, 3, 8)},
        {label: '2007/12/25', value: new Date(2007, 11, 25)},
        {label: 'today', value: new Date()}
      ]
    },
    showTrigger: true
  });
});

// <%= link_to image_tag("https://www.virgineastcoasttrains.cab/images/minus_button.png"), groups_path(:student_id => student.id), remote: true, method: :post, class: "add-student-to-group-link" %>
