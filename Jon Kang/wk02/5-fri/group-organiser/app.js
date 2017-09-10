console.log('Group Organiser');

var list = document.querySelector('#list');
var group = document.querySelector('#group-size');
var submitList = document.querySelector('#submit-list');

var listCoverter = function(list)
{
   var listArray = list.split(" ");
   console.log(listArray);
}

submitList.addEventListener('click', function()
{
   var listString = list.value;
   var groupSize = group.value;
   listCoverter(listString);
})
// itemList split into array, remove commas
// randomise list itemList
// compare itemList.length, compare to groupSize

// groupsize = listlength+1
