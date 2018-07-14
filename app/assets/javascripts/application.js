// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require_tree .

// Импортирует jQuery из интнернета
var script = document.createElement('script');
script.src = 'https://code.jquery.com/jquery-3.3.1.slim.min.js';
script.type = 'text/javascript';
document.getElementsByTagName('head')[0].appendChild(script);


// Фунеции для того, что бы открыть и закрыть форму добавления задачи
function todoFormExpand() {
  $('#createTodoForm').show();
}
function todoFormCollapse() {
  $('#createTodoForm').hide();
}
