console.log('GIF ME');
var $api_key = '7daXQyUE2vPxfnGATguIT11vrudsrT75';
var $gifs_container = $('.gifs-container');
var $search_gifs = $('#search-gifs');
var $search_giphy = $('#search-giphy');
var $search_query = $('#search-query');
var $limit = 5;
var $gif_offset = 0;
var $gifs_per_page = 5;

$(document).ready(function()
{
  var appendGifs = function(response)
  {
    response.data.forEach(function(gif)
    {
      var $single_gif = $('<img>');
      var $gif_src = gif.images.downsized.url;
      $single_gif.attr("src", $gif_src);
      $single_gif.addClass('single-gif');
      $gifs_container.append($single_gif);
    });
  };

  $search_giphy.on('click', function(e)
  {
    e.preventDefault();
    $search_query.append($search_gifs.val());

    var options =
    {
      url: 'http://api.giphy.com/v1/gifs/search',
      data:
      {
        q: $search_gifs.val(),
        api_key: $api_key,
        limit: 5
      }
    };
    $.ajax(options).done(appendGifs);
  });

  $(window).scroll(function(e)
  {
    e.preventDefault();

    if ($(window).scrollTop() + $(window).height() == $(document).height())
    {
      var nextOptions =
      {

        url: 'http://api.giphy.com/v1/gifs/search',
        data:
        {
          q: $search_gifs.val(),
          api_key: $api_key,
          limit: $limit,
          offset: $gif_offset += $gifs_per_page,
        }
      };
      $.ajax(nextOptions).done(appendGifs);
    }
  });
});
