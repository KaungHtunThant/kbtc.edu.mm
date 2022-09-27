$('.questions').click(function () {
    var answer = $(this).data('answerid');
    var sign = $(this).data('signid');
    $('#' + answer).slideToggle();
    var text = $('#' + sign).text();
    $('#' + sign).text(
        text === '+' ? '-' : '+')
});