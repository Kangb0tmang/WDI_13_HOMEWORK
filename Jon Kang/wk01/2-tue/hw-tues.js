// Part 1
// var enterName = prompt('Enter your name:');
//
// console.log(enterName);
//
// Part 2
// var choice = prompt('What dish would you like? You can choose from: steak, fruit salad, tofurkey, pork chops');
// var tofurkey = "tofurkey";
// var fruitSalad = "fruit salad";
//
// while ((choice !== tofurkey) && (choice !== fruitSalad))
// {
//    var choice = prompt('You chose: ' + choice + '.' + ' Vegans beware! Choose again');
// }
//
// alert('You chose: ' + choice + '.' + ' This cuisine is vegan friendly, enjoy your meal!');
//
// Part 3
// for (var i = 0; i <= 20; i++)
// {
//    if ((i % 2) === 0)
//    {
//       console.log(i + ' is even');
//    }
// }
//
// Part 4
// for (var i = 0; i <= 10; i++)
// {
//    console.log(i + ' * ' + ' 9 = ' + i * 2);
// }
//
// Part 5
// var choices = ["Lorem", "ipsum", "dolor", "sit", "amet", "consectetur", "adipisicing", "elit", "sed", "do", "eiusmod", "tempor", "incididunt", "ut", "labore", "et", "dolore", "magna", "aliqua", "Ut", "enim", "ad", "minim", "veniam", "quis", "nostrud", "exercitation", "ullamco", "laboris", "nisi", "ut", "aliquip", "ex", "ea", "commodo", "consequat"];
// var choices = prompt('Type in your favourite foods');
// var choiceList = choices.split(",");
//
// for (var i = 1; i <= choiceList.length; i++)
// {
//    console.log("My #" + i + " choice is: " + choiceList[i - 1]);
// }
//
// Part 5 Bonus
// var choices = ["Lorem", "ipsum", "dolor", "sit", "amet", "consectetur", "adipisicing", "elit", "sed", "do", "eiusmod", "tempor", "incididunt", "ut", "labore", "et", "dolore", "magna", "aliqua", "Ut", "enim", "ad", "minim", "veniam", "quis", "nostrud", "exercitation", "ullamco", "laboris", "nisi", "ut", "aliquip", "ex", "ea", "commodo", "consequat"];
// var choices = prompt('Type in your favourite foods');
// var choiceList = choices.split(",")
//
// for (i = 1; i <= choiceList.length; choiceList[i++])
// {
//    var suffix = (i % 10);
//
//    if(i === 0)
//    {
//       continue;
//    }
//
//    if (suffix == 1)
//    {
//       console.log("My " + i + "st choice is: " + choiceList[i - 1]);
//       continue;
//    }
//
//    if (suffix == 2)
//    {
//       console.log("My " + i + "nd choice is: " + choiceList[i - 1]);
//       continue;
//    }
//
//    if (suffix == 3)
//    {
//       console.log("My " + i + "rd choice is: " + choiceList[i - 1]);
//       continue;
//    }
//
//    console.log("My " + i + "th choice is: " + choiceList[i - 1]);
//    continue;
// }
// 
// Test loop for number list 1-30
// for (var i = 0; i <= 30; i++)
// {
//    var suffix = (i % 10);
//
//    if(i === 0)
//    {
//       continue;
//    }
//
//    if (suffix == 1)
//    {
//       console.log(i + "st");
//       continue;
//    }
//
//    if (suffix == 2)
//    {
//       console.log(i + "nd");
//       continue;
//    }
//
//    if (suffix == 3)
//    {
//       console.log(i + "rd");
//       continue
//    }
//
//    console.log(i + "th");
//    continue;
// }
