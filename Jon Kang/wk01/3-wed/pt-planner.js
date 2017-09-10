// var alamein = ['Flinders Street', 'Richmond', 'East Richmond', 'Burnley', 'Hawthorn', 'Glenferrie'];
// var glenWaverly = ['Flagstaff', 'Melbourne Central', 'Parliament', 'Richmond', 'Kooyong', 'Tooronga'];
// var sandringham = ['Southern Cross', 'Richmond', 'South Yarra', 'Parliament', 'Windsor'];
//
// // Each line is array
// // Richmond is interchange for all line
// // Find index of Richmond each array
// // Find which element from which array
// // Check if different line
// // -> if yes, go Richmond
// // slice train line included in journey i.e...
// // Windsor (sandringham) -> Flinders Street (alamein), slice 2 then join arrays
// // -> if no, continue
//
// var origin = 'Flinders Street';
// var destination = 'Hawthorn';
// var searchOrigin = alamein.indexOf(origin);
// var searchDest = alamein.indexOf(destination);
// var iOrigin = alamein[searchOrigin];
// var iDest = alamein[searchDest];
// if (searchDest > searchOrigin)
// {
//    console.log('Forwards');
//    console.log('Origin: ' + iOrigin);
//    console.log('Destination: ' + iDest);
//    var journey = alamein.slice(searchOrigin, searchDest = searchDest + 1);
//    var ptv = console.log(journey.join(' -----> '));
//    var stops = journey.length - 1;
//    console.log('Number of Stops: ' + stops);
// }
// else
// {
//    console.log('Backwards');
//    console.log('Origin: ' + iOrigin);
//    console.log('Destination: ' + iDest);
//    var journey = alamein.slice(searchDest, searchOrigin = searchOrigin + 1);
//    journey.reverse();
//    var ptv = console.log(journey.join(' -----> '));
//    var stops = journey.length - 1;
//    console.log('Number of Stops: ' + stops);
// }

var trainNetwork =
[
      {alamein: ['Flinders Street', 'Richmond', 'East Richmond', 'Burnley', 'Hawthorn', 'Glenferrie']},
      {glenWaverly: ['Flagstaff', 'Melbourne Central', 'Parliament', 'Richmond', 'Kooyong', 'Tooronga']},
      {sandringham: ['Southern Cross', 'Richmond', 'South Yarra', 'Parliament', 'Windsor']}
]

// Plan journey across train network with Origin and Destination
var journey = function(origin)
{
   var = searchOrigin(findStation);
   // searchDest();
   // planJourney();
   // displayJourney();
}

var searchOrigin = function(findStation)
{
   trainNetwork
}

var journeyResult = journey('Flinders Street');
