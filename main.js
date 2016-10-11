var $fresh = $('#fresh');

  $.ajax({
    method: 'GET',
    url: 'http://localhost:9393/api/enrollment/freshman/avg',
    data: {},
    dataType: 'json'
  }).done(function(fresh) {
    console.log(fresh);
    });

var $soph_avg = $('soph_avg');

  $.ajax({
    method: 'GET',
    url: 'http://localhost:9393/api/enrollment/sophmore/avg',
    data: {},
    dataType: 'json'
  }).done(function(soph_avg) {
    console.log(soph_avg);
    });

var $jun_avg = $('jun_avg');

  $.ajax({
    method: 'GET',
    url: 'http://localhost:9393/api/enrollment/junior/avg',
    data: {},
    dataType: 'json'
  }).done(function(jun_avg) {
    console.log(jun_avg);
    });

var $sen_avg = $('sen_avg');
  $.ajax({
    method: 'GET',
    url: 'http://localhost:9393/api/enrollment/senior/avg',
    data: {},
    dataType: 'json'
  }).done(function(sen_avg) {
    console.log(sen_avg);
    });

var $grad_avg = $('grad_avg');
  $.ajax({
    method: 'GET',
    url: 'http://localhost:9393/api/enrollment/graduate/avg',
    data: {},
    dataType: 'json'
  }).done(function(grad_avg) {
    console.log(grad_avg);
    });

var $total_avg = $('total_avg');
  $.ajax({
    method: 'GET',
    url: 'http://localhost:9393/api/enrollment/total/avg',
    data: {},
    dataType: 'json'
  }).done(function(total_avg) {
    console.log(total_avg);
    });

var $full = $('full');
  $.ajax({
    method: 'GET',
    url: 'http://localhost:9393/api/full/table',
    dataType: 'json'
  }).done(function(full) {
    console.log(full);
    });
