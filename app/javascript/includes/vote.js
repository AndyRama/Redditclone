$(function (){

  $(".vote").on("click", ".upvote", function() {
    var post_id = $(this).parent().data("id")
        is_upvote = $(this).hasclass("upvote");

    console.log('upvote for post' + post_id);

    $.ajax({
      url: "/post/vote",
      method: "POST",
      data: { post_id: post_id},
      success: function (){
        console.log("success..");
      }
    })

  }); 
});