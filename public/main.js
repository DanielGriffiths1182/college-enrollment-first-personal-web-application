var $fresh = $('#fresh');
var $freshAvg = $('#fresh-avg')

$fresh.click(function(){
  $.ajax({
    method: 'GET',
    url: 'http://localhost:9393/api/enrollment/freshman/avg',
    data: {},
    dataType: 'json'
  }).done(function(freshAvg) {
    console.log(freshAvg)

    $fresh.fadeOut(function() {
      $freshAvg.text(parseFloat(freshAvg).toFixed(2))
    })
  });
})

var $soph = $('#soph');
var $sophAvg = $('#soph-avg')

$soph.click(function(){
  $.ajax({
    method: 'GET',
    url: 'http://localhost:9393/api/enrollment/sophmore/avg',
    data: {},
    dataType: 'json'
  }).done(function(sophAvg) {
    console.log(sophAvg)

    $soph.fadeOut(function() {
      $sophAvg.text(parseFloat(sophAvg).toFixed(2))
    })
  });
})

var $jun = $('#jun');
var $junAvg = $('#jun-avg')

$jun.click(function(){
  $.ajax({
    method: 'GET',
    url: 'http://localhost:9393/api/enrollment/junior/avg',
    data: {},
    dataType: 'json'
  }).done(function(junAvg) {
    console.log(junAvg)


    $jun.fadeOut(function() {
      $junAvg.text(parseFloat(junAvg).toFixed(2))
    })
  });
})

var $sen = $('#sen');
var $senAvg =$('#sen-avg')

$sen.click(function(){
  $.ajax({
    method: 'GET',
    url: 'http://localhost:9393/api/enrollment/senior/avg',
    data: {},
    dataType: 'json'
  }).done(function(senAvg) {
    console.log(senAvg)


    $sen.fadeOut(function() {
      $senAvg.text(parseFloat(senAvg).toFixed(2))
    })
  });
})

var $grad = $('#grad');
var $gradAvg = $('#grad-avg')

$grad.click(function(){
  $.ajax({
    method: 'GET',
    url: 'http://localhost:9393/api/enrollment/graduate/avg',
    data: {},
    dataType: 'json'
  }).done(function(gradAvg) {
    console.log(gradAvg)

    $grad.fadeOut(function() {
      $gradAvg.text(parseFloat(gradAvg).toFixed(2))
    })
  });
})

var $total = $('#total');
var $totalAvg = $('#total-avg')

$total.click(function(){
  $.ajax({
    method: 'GET',
    url: 'http://localhost:9393/api/enrollment/total/avg',
    data: {},
    dataType: 'json'
  }).done(function(totalAvg) {
    console.log(totalAvg)

    $total.fadeOut(function() {
      $totalAvg.text(parseFloat(totalAvg).toFixed(2))
    })
  });
})

// var $full = $('#full');
// var $fullAvg = $('#full-avg')
//
// $full.click(function(){
//   $.ajax({
//     method: 'GET',
//     url: 'http://localhost:9393/api/full/table',
//     dataType: 'json'
//   }).done(function(fullAvg) {
//     console.log(fullAvg)
//
//     $full.fadeOut(function() {
//       $fullAvg.text(parseFloat(fullAvg).toFixed(2))
//     })
//   });
// })
