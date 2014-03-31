$(document).ready(function(){
  $("#choose_course").chosen();
  $("#choose_course").change(function(){
    $("#type_job,#type_studies").hide();
    $("#type_job ul,#type_studies, ul").html();
    course_id = $(this).val();
    $.ajax({
      url: "/designations/" + course_id + "/job_studies",
      success: function(data){
        if(!jQuery.isEmptyObject(data.jobs)){
          $("#type_job").show();
          for(var i in data.jobs){
            $("#type_job ul").append("<li>" + data.jobs[i] + "</li>");
          }
        }
        if(!jQuery.isEmptyObject(data.studies)){
          $("#type_studies").show();
          for(var i in data.studies){
            $("#type_studies ul").append("<li>" + data.studies[i] + "</li>");
          }
        }
      }
    });
  });
});
