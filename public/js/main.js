var $enrollment = $('#enrollment');

$.ajax({
  method: 'GET',
  url: '/api/enrollment/sophmore/avg',
  data: {},
  dataType: 'json'
}).done(function(soph_avg) {
  console.log(soph_avg);

  enrollment.forEach(function(soph_avg) {
    console.log(soph_avg);

    $('<li>').text(soph_avg).appendTo($enrollment);
  });
}).fail(function(xhr, text, error) {
  console.error('failed to get average for sophmore enrollment between 2000-2002: ' + text + ', ' + error);
});
