var catTimerId = null;
var speed = 10;
var start = document.getElementById('start');
var stop = document.getElementById('stop');
var catImg = document.querySelector('img');

// Check if image has hit end of the screen
// Variation if image edge hit screen or
// if (currentLeftOffset > window.innerWidth)
// {
//    img.style.left = '0px';
// }
// entire image moved outside screen
// if (currentLeftOffset > (window.innerWidth - img.width)
// {
//    img.style.left = '0px';
// }

// Cat walk one step
var catWalk = function()
{
   var currentLeftOffset = parseInt(catImg.style.left);
   catImg.style.left = (currentLeftOffset + speed) + 'px';
}

// Stop Cat Walk
var stopCatWalk = function()
{
   clearInterval(catTimerId);
   catTimerId = null;
}

// Start Cat Walk
var startCatWalk = function()
{
   // Check if timer is running
   if(catTimerId !== null)
   {
      // Alaready have a timer - quit this function
      return;
   }

   catTimerId = setInterval(catWalk, 100);
}

// Return Cat to Original Position
var resetCat = function()
{
   catImg.style.left = 0 + 'px';
}

start.addEventListener('click', startCatWalk);
stop.addEventListener('click', stopCatWalk);
reset.addEventListener('click', resetCat);
