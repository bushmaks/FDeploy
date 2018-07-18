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
//= require jquery
//= require icheck.min
//= require select2.min
//= require_tree .


$(document).ready(() => {
  // Функция для того, что бы открыть и закрыть форму добавления задачи
    $('.todoButton').on('click', () => {
      $('#createTodoForm').slideToggle();
    });
    // Кнопка ОК
    $(".submit-btn").on('click', event => {
     event.preventDefault();
     $("#TodoForm").submit();
    });

    // Функционал checkbox
    $('.Todos input').iCheck({
    checkboxClass: 'icheckbox_square-blue',
    increaseArea: '20%' // optional
    }).on('ifToggled', event => {
      $(event.currentTarget).closest('form').submit();
    });

    // Зачеркивание текста задачи
    $('input').on('ifChecked', event => {
      $(event.currentTarget).parent().next().addClass('todoTextCompleted');
    });
    $('.Todos input').on('ifUnchecked', event => {
      $(event.currentTarget).parent().next().removeClass('todoTextCompleted');
    });

    $('.icheckbox_square-blue').each(function() {
          if ($(this).hasClass('checked')) {
              $(this).next().addClass('todoTextCompleted');
          }
    });
    // Убрать поиск из селектора
    $('#todo_project_id').select2({
      minimumResultsForSearch: -1
    });
});
