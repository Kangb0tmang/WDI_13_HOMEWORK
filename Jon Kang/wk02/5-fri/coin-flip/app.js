var chooseSide = document.querySelector('#choose-side');
var resetGame = document.querySelector("#reset-game");
var leftSideScore = document.querySelector('#left-corner');
var rightSideScore = document.querySelector('#right-corner');
var winner = document.querySelector('#winner');
var leftSideCounter = 0;
var rightSideCounter = 0;
var winningScore = 3;
var leftSideText = "Grumpy Cat";
var rightSideText = "Doge";

// Using Numbers 0 and 1
// Using rivalry between 2 things/people
// Each side assigned 0 or 1 i.e. Apple is 0 and Android is 1
var flipGame = function(flip)
{
   if (flip === 0)
   {
      leftSideCounter += 1;
      leftSideScore.textContent = leftSideScore;
   }
   else if (flip === 1)
   {
      rightSideCounter += 1;
      rightSideScore.textContent = rightSideScore;
   }

   if (leftSideCounter === winningScore)
   {
      winner.textContent = leftSide;
      chooseSide.disabled = true;
   }
   else if (rightSideCounter === winningScore)
   {
      winner.textContent = rightSide;
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
      newResultItem.textContent = leftSideText;
   }
   else
   {
      resultsList.appendChild(newResultItem);
      newResultItem.textContent = rightSideText;
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
