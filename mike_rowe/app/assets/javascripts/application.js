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
var dateWidget;
$(document).ready(function(){
  $(".add-student-to-group-link").on("ajax:success", function(response){
    $(this).hide();
  });

  $(".add-student-to-group-link").bind("ajax:before", function() {
    var date = new Date($("#textbox1").wijinputdate("getText"));
    this.href += "&date=" + formatDate(date);
  })

$(function () {
    // Set dateChanged event handler function
    $("#textbox1").wijinputdate({
        dateChanged : function (e, data) {
        location.reload();
        }
    });
});

$("#textbox1").wijinputdate({
    showTrigger: true

  });
});

function formatDate(date) {
  var year = "" + (date.getYear() + 1900);
  var month = ("00" + (date.getMonth() + 1)).slice(-2);
  var day = ("00" + date.getDate()).slice(-2);
  return year + "-" + month + "-" + day;
}

// <%= link_to image_tag("https://www.virgineastcoasttrains.cab/images/minus_button.png"), groups_path(:student_id => student.id), remote: true, method: :post, class: "add-student-to-group-link" %>
