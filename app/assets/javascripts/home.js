$(function(){

  $("[nlp-action=word_segment]")
    .on("ajax:success", function(events, data, status, xhr){
      words = [];
      $.each(data, function(k, v) {
        words.push(v);
        });
      $('.tagging').tokenfield('setTokens', words);
    });

  $('.tagging').tokenfield();
});


