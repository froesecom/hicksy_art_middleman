var init = function(){
  console.log("doinging it");
  $(".email--reveal").on("click", function(e){
    var email = "amanda" + "@clarkart" + "projects.com",
       target = $(e.target);
    
    target.text(email);
    target.attr("href", "mailto:" + email);
    target.removeClass("email--reveal");
  });
};
