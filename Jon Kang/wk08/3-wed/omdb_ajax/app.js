console.log('OMDB AJAX');
// OMDB API Search, do a 's' search
// Type in movie to search and click search button to do a search
// Results shown in h2 in the results div
var $movie_results = $('.movie-results');
var $search_movie = $('#search-movie');
var $search_query = $('.search-query');

$('#search-omdb').on('click', function(event)
{
  event.preventDefault();

  var options = {
    url: 'http://www.omdbapi.com',
    data:
    {
      s: $search_movie.val(),
      apikey: '2f6435d9'
    }
  };

  var appendMovie = function(response)
  {
    $search_query.append($search_movie.val());
    response.Search.forEach(function(movie)
    {
      var $title = $('<h2>');
      var $movie_title = movie.Title;
      console.log($movie_title);
      $title.append($movie_title);
      $movie_results.append($title);
    });
  };

  $.ajax(options).done(appendMovie);
});
