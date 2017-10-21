var $cities = ['austin', 'la', 'nyc', 'sf', 'sydney'];
var $select_city = $('#city-type');
var $city_background = $('body');

$(document).ready(function()
{
  $cities.forEach(function(city)
  {
    var $new_city = $('<option>').text(city);
    $select_city.append($new_city);
    $new_city.addClass(city);
    $new_city.addClass("city");
  });
});

$select_city.on('click', function(event)
{
  // Get option tag
  var $change_img = $(event.target).closest($select_city).find(':selected');
  // Get class of option tag
  var $change_class = $change_img.html();
  // Remove all existing classes
  $city_background.removeClass();
  // Add selected class
  $city_background.addClass($change_class);
});
