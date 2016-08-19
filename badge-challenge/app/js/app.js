$(function(){
  showTeacherList();
 showTeacherDetail();
})

var showTeacherList = function(){
  $.ajax({
    url: 'http://localhost:3000',
    type: 'get',
    dataType: 'JSON'
  })
  .done(function(response){
    $.each(response, function(index, employee){
      $("#employee-list").append("<li><a href=/employees/"+employee.id+">" + employee.name + "</a>")
    })
  })
}

var showTeacherDetail = function(){
  $('#employee-list').on('click','li a',function(event){
    event.preventDefault();
    var that = $(this);
    var link = $(this).attr('href');
    $.ajax({
      url: 'http://localhost:3000'+link,
      type: 'get',
      dataType: 'JSON'
    })
    .done(function(response){
      $("#employee-detail").append("<h3> "+response.employee.name+" </h3>");

      for(i=0; i < response.badges.length; i++){
      $('#employee-list').hide();
      $("#employee-detail").append("<li> "+response.badges[i].content+" <div id='votes'> "+response.badges[i].votes+" votes </li> </div>");
      }
      $("#employee-detail").append('<a href="" class="back">back to employees</a>')
    })
  })
}

