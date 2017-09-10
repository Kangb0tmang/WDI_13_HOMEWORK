var chooseSide = document.querySelector('#choose-side');
var resetGame = document.querySelector("#reset-game");
var leftCornerScore = document.querySelector('#left-corner');
var rightCornerScore = document.querySelector('#right-corner');
var winner = document.querySelector('#winner');
var leftCornerCounter = 0;
var rightCornerCounter = 0;
var leftCorner = "Coca Cola";
var rightCorner = "Pepsi";

// Using Numbers 0 and 1
// Using rivalry between 2 things/people
// Each side assigned 0 or 1 i.e. Apple is 0 and Android is 1
var flipGame = function(flip)
{
   if (flip === 0)
   {
      leftCornerCounter += 1;
      leftCornerScore.textContent = leftCornerCounter;
   }
   else
   {
      rightCornerCounter += 1;
      rightCornerScore.textContent = rightCornerCounter;
   }

   if (leftCornerCounter === 5)
   {
      winner.textContent = leftCorner;
      chooseSide.disabled = true;
   }
   else if (rightCornerCounter === 5)
   {
      winner.textContent = rightCorner;
      chooseSide.disabled = true;
   }
}

var displayResults = function(flipResult)
{
   var resultsList = document.querySelector('ol.results-list');
   var newResultItem = document.createElement('li');

   if (flipResult === 0)
   {
      resultsList.appendChild(newResultItem);
      newResultItem.textContent = leftCorner;
   }
   else
   {
      resultsList.appendChild(newResultItem);
      newResultItem.textContent = rightCorner;
   }
}

chooseSide.addEventListener('click', function()
{
   // Passing in 0 or 1 into the functions
   var flip = Math.floor(Math.random() * 2);

   flipGame(flip);
   displayResults(flip);
});

resetGame.addEventListener('click', function()
{
   location.reload();
});
